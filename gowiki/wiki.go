package main

import (
	"errors"
	"fmt"
	"html/template"
	"io/ioutil"
	"net/http"
	"regexp"
)

var (
	templates    = template.Must(template.ParseFiles("tmpl/edit.html", "tmpl/view.html"))
	validPath    = regexp.MustCompile("^/(edit|save|view)/([a-zA-Z0-9]+)$")
	linkPagename = regexp.MustCompile("\\[([a-zA-Z0-9]+)\\]")
)

type Page struct {
	Title       string
	Body        []byte
	DisplayBody template.HTML
}

func getFilename(title string) string {
	filename := "data/" + title + ".txt"
	return filename
}
func (p *Page) save() error {
	filename := getFilename(p.Title)
	return ioutil.WriteFile(filename, p.Body, 0600)
}

func loadPage(title string) (*Page, error) {
	filename := getFilename(title)
	body, err := ioutil.ReadFile(filename)
	if err != nil {
		return nil, err
	}
	return &Page{Title: title, Body: body}, nil
}

func renderTemplate(w http.ResponseWriter, tmpl string, p *Page) {
	//t, err := template.ParseFiles(tmpl + ".html")
	err := templates.ExecuteTemplate(w, tmpl+".html", p)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}

func getTitle(w http.ResponseWriter, r *http.Request) (string, error) {
	m := validPath.FindStringSubmatch(r.URL.Path)
	if m == nil {
		http.NotFound(w, r)
		return "", errors.New("Invalid Page Title")
	}
	return m[2], nil // The title is the second subexpression.
}

func viewHandler(w http.ResponseWriter, r *http.Request) {
	//title := r.URL.Path[len("/view/"):]
	title, err := getTitle(w, r)
	if err != nil {
		return
	}
	p, err := loadPage(title)
	if err != nil {
		http.Redirect(w, r, "/edit/"+title, http.StatusFound)
		return
	}
	tm := linkPagename.ReplaceAllFunc(p.Body, func(str []byte) []byte {
		m := linkPagename.FindStringSubmatch(string(str))
		out := []byte("<a href=\"/view/" + m[1] + "\">" + m[1] + "</a>")
		return out
	})
	p.DisplayBody = template.HTML(tm)
	renderTemplate(w, "view", p)
}

func viewRequest(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "%v", *r)
}

func editHandler(w http.ResponseWriter, r *http.Request) {
	//title := r.URL.Path[len("/edit/"):]
	title, err := getTitle(w, r)
	if err != nil {
		return
	}
	p, err := loadPage(title)
	if err != nil {
		p = &Page{Title: title}
	}
	renderTemplate(w, "edit", p)
}
func saveHandler(w http.ResponseWriter, r *http.Request) {
	//title := r.URL.Path[len("/save/"):]
	title, err := getTitle(w, r)
	if err != nil {
		return
	}
	body := r.FormValue("body")
	p := &Page{Title: title, Body: []byte(body)}
	err = p.save()
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	http.Redirect(w, r, "/view/"+title, http.StatusFound)
}
func styleHandle(w http.ResponseWriter, r *http.Request) {
	fmt.Println("style handler", r.URL.Path)
	file := "style/" + r.URL.Path[len("/style/"):]
	css, err := ioutil.ReadFile(file)
	if err != nil {
		http.Error(w, err.Error(), http.StatusNotFound)
	}
	w.Write(css)
}
func homeHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Println(r.RemoteAddr)
	http.Redirect(w, r, "/view/FrontPage", http.StatusFound)
}
func main() {
	http.HandleFunc("/view/", viewHandler)
	http.HandleFunc("/request", viewRequest)
	http.HandleFunc("/edit/", editHandler)
	http.HandleFunc("/save/", saveHandler)
	http.HandleFunc("/", homeHandler)
	http.HandleFunc("/style/", styleHandle)
	http.ListenAndServe("0.0.0.0:8080", nil)
}
