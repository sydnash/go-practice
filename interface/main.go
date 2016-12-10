package main

import "fmt"

type t1 struct {
}

type t2 struct {
}

func t(a interface{}) {
	//fmt.Println(a.(type))
	switch a.(type) {
	case t1:
		fmt.Println("t1")
	case t2:
		fmt.Println("t2")
	}
}

func main() {
	a := t1{}
	b := t2{}
	t(a)
	t(b)
}
