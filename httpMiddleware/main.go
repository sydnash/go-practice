package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"net/http/httptest"
	"reflect"
	"strconv"
)

type Tmp struct {
	Nick string
}

func main() {
	//http.ListenAndServe(":4000", &ModifierMiddleware{http.HandlerFunc(handler)})
	http.ListenAndServe(":4000", http.HandlerFunc(handler))
}

func handler(w http.ResponseWriter, r *http.Request) {
	//var t Tmp
	//t.Nick = "\n&\\u0026f&<>&<>."
	var t map[string]string
	t = make(map[string]string)
	t["Nic&k"] = "\n&\\u0026f&<>&<>\\u003c\\u003e."
	d, _ := json.Marshal(t)
	fmt.Println(string(d))
	fmt.Println("\nalkdjf")
	fmt.Fprintf(w, string(d))
}

type ModifierMiddleware struct {
	handler http.Handler
}

func (m *ModifierMiddleware) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	rec := httptest.NewRecorder()
	fmt.Println(reflect.TypeOf(w))
	// passing a ResponseRecorder instead of the original RW
	m.handler.ServeHTTP(rec, r)
	// after this finishes, we have the response recorded
	// and can modify it before copying it to the original RW

	// we copy the original headers first
	for k, v := range rec.Header() {
		w.Header()[k] = v
		fmt.Println(k, v)
	}
	// and set an additional one
	w.Header().Set("X-We-Modified-This", "Yup")
	// only then the status code, as this call writes out the headers
	w.WriteHeader(418)

	// The body hasn't been written (to the real RW) yet,
	// so we can prepend some data.
	data := []byte("Middleware says hello again. ")

	// But the Content-Length might have been set already,
	// we should modify it by adding the length
	// of our own data.
	// Ignoring the error is fine here:
	// if Content-Length is empty or otherwise invalid,
	// Atoi() will return zero,
	// which is just what we'd want in that case.
	clen, _ := strconv.Atoi(w.Header().Get("Content-Length"))
	fmt.Println(clen)

	clen = len(rec.Body.Bytes())
	clen += len(data)
	w.Header().Set("Content-Length", strconv.Itoa(clen))

	// finally, write out our data
	w.Write(data)
	clen, _ = strconv.Atoi(w.Header().Get("Content-Length"))
	fmt.Println(clen)
	// then write out the original body
	w.Write(rec.Body.Bytes())
	clen, _ = strconv.Atoi(w.Header().Get("Content-Length"))
	fmt.Println(clen)
}
