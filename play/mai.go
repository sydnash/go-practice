package main

import (
	"fmt"
	"time"
)

type tmp struct {
	a uintptr
}

func get(t *tmp) (int64, int64)

func add(x, y int64) (int64, int64)

func Add(x, y int64) int64 {
	return x + y
}

func main() {
	fmt.Println("Hello, playground")
	t := time.Now().Unix()
	out := time.Unix(t, 0)
	fmt.Println(out)

	t, b := add(2, 3)
	fmt.Println(t, b)
	t1 := &tmp{a: 2}
	fmt.Printf("%p\n", t1)
	t, b = get(t1)
	fmt.Printf("0x%x, %x\n", t, b)
	fmt.Println(t1)
}
