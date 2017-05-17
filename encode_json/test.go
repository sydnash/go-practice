package main

import (
	"encoding/json"
	"fmt"
)

type Test struct {
	Name string `json:"name"`
	Age  int
}

func aaa() int {
	fmt.Println("aaa")
	return 2
}
func main() {
	t := Test{"daijun", 20}
	ts, _ := json.Marshal(t)
	fmt.Println(string(ts))

	t1 := Test{}
	json.Unmarshal(ts, &t1)
	fmt.Println(t1)

	a := 1
	switch a {
	default:
		fmt.Println("default")
	case aaa(), 1:
		fmt.Println("1")
	case 2:
		fmt.Println("2")
	}

}
