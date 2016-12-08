package main

import (
	"encoding/hex"
	"flag"
	"fmt"
	"html/template"
	"log"
	"math/rand"
	"net/http"
	"time"
)

var addr = flag.String("addr", ":1718", "http service address") // Q=17, R=18

var templ = template.Must(template.New("qr").Parse(templateStr))

func main() {
	rand.Seed(time.Now().UnixNano())
	flag.Parse()
	http.Handle("/", http.HandlerFunc(QR))
	fmt.Println(*addr)
	err := http.ListenAndServe(*addr, nil)
	if err != nil {
		log.Fatal("ListenAndServe:", err)
	}
}
func sessionId() string {
	b := make([]byte, 5)
	if _, err := rand.Read(b); err != nil {
		return ""
	}
	return hex.EncodeToString(b)
}
func QR(w http.ResponseWriter, req *http.Request) {
	cookie := &http.Cookie{Name: sessionId(), Value: "t"}
	fmt.Println("random sessionid:", cookie.Name)
	http.SetCookie(w, cookie)
	templ.Execute(w, req.FormValue("s"))
}

const templateStr = `
<html>
    <head>
        <title>QR Link Generator</title>
    </head>
    <body>
        {{if .}}
                <img src="http://chart.apis.google.com/chart?chs=300x300&cht=qr&choe=UTF-8&chl={{.}}" />
                <br>
                    {{.}}
                <br>
            <br>
        {{end}}
        <form action="/" name=f method="GET">
            <input maxLength=1024 size=70 name=s value="" title="Text to QR Encode">
            <input type=submit value="Show QR" name=qr>
        </form>
    </body>
</html>
`
