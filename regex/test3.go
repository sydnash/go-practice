package main

import (
	"fmt"
	"regexp"
)

func main() {
	src := []byte(`
call hello alice
call hello bob
call hello eve
`)
	pat := regexp.MustCompile(`(?m)(call)\s+(?P<cmd>\w+)\s+(?P<arg>.+)\s*$`)
	res := []byte{}
	fmt.Printf("%q\n", pat.FindAllStringSubmatch(string(src), -1))
	for _, s := range pat.FindAllSubmatchIndex(src, -1) {
		res = pat.Expand(res, []byte("$cmd('$arg')\n"), src, s)
		fmt.Println("====", string(res))
		res = []byte{}
	}
	fmt.Println(string(res))

	var str string
	fmt.Printf("default str %q\n", str)
	a := 0xff
	b := ^a
	fmt.Printf("%x", uint32(b))
}
