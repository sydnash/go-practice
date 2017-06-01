package main

import (
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"strings"
	"text/template"
	"time"
)

func main() {
	defer func() {
		if e := recover(); e != nil {
			fmt.Println(e)
		}
	}()

	fmt.Printf("%#x\n", time.Now().Unix())

	fmt.Println("=============testComment================")
	testComment()
	fmt.Println("=============testPipeline================")
	testPipeline()

	fmt.Println("=============testGlob================")
	testGlob()

	fmt.Println("=============testFunc================")
	testFunc()
	fmt.Println("=============testDefine================")
	testDefine()
}

func panicError(err error) {
	if err != nil {
		panic(err)
	}
}
func testComment() {
	tmpl, err := template.New("test").Parse("{{/* this is comment */}}")
	panicError(err)

	err = tmpl.Execute(os.Stdout, nil)
	panicError(err)
}

func testPipeline() {
	tmpl, err := template.New("test").Parse(
		`{{js .}}{{"\n"}}`)
	panicError(err)

	err = tmpl.Execute(os.Stdout, `"pipeline\""`)
	panicError(err)
}

// templateFile defines the contents of a template to be stored in a file, for testing.
type templateFile struct {
	name     string
	contents string
}

func createTestDir(files []templateFile) string {
	dir, err := ioutil.TempDir("", "template")
	if err != nil {
		log.Fatal(err)
	}
	for _, file := range files {
		f, err := os.Create(filepath.Join(dir, file.name))
		if err != nil {
			log.Fatal(err)
		}
		defer f.Close()
		_, err = io.WriteString(f, file.contents)
		if err != nil {
			log.Fatal(err)
		}
	}
	return dir
}

func testGlob() {
	// Here we create a temporary directory and populate it with our sample
	// template definition files; usually the template files would already
	// exist in some location known to the program.
	dir := createTestDir([]templateFile{
		// T0.tmpl is a plain template file that just invokes T1.
		{"T5.tmpl", `hahah {{true}}`},
		{"T0.tmpl", `T0 invokes T1: ({{template "T1"}})
`},
		// T1.tmpl defines a template, T1 that invokes T2.
		{"T2.tmpl", `{{define "T1"}}T1 invokes T2: ({{template "T2"}}){{end}}`},
		// T2.tmpl defines a template T2.
		{"T3.tmpl", `{{define "T2"}}This is T2{{end}}`},
	})
	// Clean up after the test; another quirk of running as an example.
	defer os.RemoveAll(dir)

	// pattern is the glob pattern used to find all the template files.
	pattern := filepath.Join(dir, "*.tmpl")

	// Here starts the example proper.
	// T0.tmpl is the first name matched, so it becomes the starting template,
	// the value returned by ParseGlob.
	tmpl := template.Must(template.ParseGlob(pattern))

	err := tmpl.Execute(os.Stdout, nil)
	if err != nil {
		log.Fatalf("template execution: %s", err)
	}
	fmt.Println("t2-----------")
	tmpl.ExecuteTemplate(os.Stdout, "T2", nil)
	fmt.Println("t2-----------")
	fmt.Println("t3.tmpl-----------")
	tmpl.ExecuteTemplate(os.Stdout, "T3.tmpl", nil)
	fmt.Println("t3.tmpl-----------")
	fmt.Println(tmpl.DefinedTemplates())
}

func testFunc() {
	// First we create a FuncMap with which to register the function.
	funcMap := template.FuncMap{
		// The name "title" is what the function will be called in the template text.
		"title": strings.Title,
	}

	// A simple template definition to test our function.
	// We print the input text several ways:
	// - the original
	// - title-cased
	// - title-cased and then printed with %q
	// - printed with %q and then title-cased.
	const templateText = `
Input: {{printf "%q" .}}
Output 0: {{title .}}
Output 1: {{title . | printf "%q"}}
Output 2: {{printf "%q" . | title}}
`

	// Create a template, add the function map, and parse the text.
	tmpl, err := template.New("titleTest").Funcs(funcMap).Parse(templateText)
	if err != nil {
		log.Fatalf("parsing: %s", err)
	}

	// Run the template to verify the output.
	err = tmpl.Execute(os.Stdout, "the go programming language")
	if err != nil {
		log.Fatalf("execution: %s", err)
	}
}

func testDefine() {
	a := `test define {{define "t1"}} {{.}} {{"\n"}}{{end}} {{template "t1" .}}`
	tmpl, err := template.New("titleTest").Parse(a)
	panicError(err)
	tmpl.Execute(os.Stdout, false)

	tmpl.Parse(`{{define "t1"}} {{if .}}{{.}}{{end}}{{end}}`)
	tmpl.Execute(os.Stdout, false)

	fmt.Println(tmpl.DefinedTemplates())
}
