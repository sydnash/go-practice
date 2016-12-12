package main

import (
	"encoding/json"
	"fmt"
)

func main() {
	fmt.Printf("%q\n", `"wo qu"`)
	var a map[string]interface{}
	json.Unmarshal([]byte(`{"success":"0","message":"未登陆"}`), &a)
	fmt.Println(a)
	fmt.Println("Hello, playground")
}
