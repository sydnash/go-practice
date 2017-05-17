package main

import (
	"fmt"
	"regexp"
)

func main() {
	t1 := `<<<<>>>>`

	p, e := regexp.Compile(`<(((?'open'<)+(?'-open'>)+))*(?(open)(?!))>`)

	fmt.Println(e)

	fmt.Println(p.Match([]byte(t1)))
}
