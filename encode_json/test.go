package main

import (
	"encoding/json"
	"fmt"
)

type Test struct {
	Name string `json:"name"`
	Age  int
}

func main() {
	t := Test{"daijun", 20}
	ts, _ := json.Marshal(t)
	fmt.Println(string(ts))

	t1 := Test{}
	json.Unmarshal(ts, &t1)
	fmt.Println(t1)
}
