package main

import (
	"fmt"
	"log"
	"net/http"
	_ "net/http/pprof"
	"os"
)

type String string

type Struct struct {
	Greeting string
	Punct    string
	Who      string
}

func (h String) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, h)
}
func (h *Struct) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, h)
}
func ArgServer(w http.ResponseWriter, req *http.Request) {
	cookie := &http.Cookie{Name: "haha", Value: "hehe"}
	http.SetCookie(w, cookie)

	a := w.Header().Get("Set-Cookie") + "; SameSite=lax"
	w.Header().Set("Set-Cookie", a)
	fmt.Println(a)

	tmp := `<script>document.location.href='http://127.0.0.1:4000/string'</script>`
	fmt.Println(os.Args)
	fmt.Fprintln(w, tmp)
}

type Counter int

func (ctr *Counter) ServeHTTP(w http.ResponseWriter, req *http.Request) {
	*ctr++
	panic("counter error")
	fmt.Fprintf(w, "counter = %d\n", *ctr)
}
func main() {
	http.Handle("/string", String("I'm a frayed knot."))
	http.Handle("/struct", &Struct{"Hello", ":", "Gophers!"})
	http.Handle("/", http.HandlerFunc(ArgServer))
	a := Counter(0)
	http.Handle("/Count", &a)

	err := http.ListenAndServe("0.0.0.0:4000", nil)
	if err != nil {
		log.Fatal(err)
	}
}
