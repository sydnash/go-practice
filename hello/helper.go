package main

import (
	"fmt"
)

type T struct {
	i int
	b [4][]int
}

func main() {
	var a [4][]T
	for k, _ := range a {
		a[k] = make([]T, 4)
	}
	for _, v := range a {
		fmt.Println(len(v))
	}

	fmt.Println(a[1][1])
	b := &a[1][1]
	b.i = 2
	fmt.Println(a[1][1])

	for k, v := range a {
		a[k] = v[:0]
	}
	for _, v := range a {
		fmt.Println(len(v))
	}

	d := &a[0]
	*d = append(*d, T{})

	fmt.Println(a[0])

	c := T{}
	c.b[1] = append(c.b[1], 1)
	fmt.Println(c.b[1])
}
