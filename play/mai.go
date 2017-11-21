package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Hello, playground")
	t := time.Now().Unix()
	out := time.Unix(t, 0)
	fmt.Println(out)
}
