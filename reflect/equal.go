package main

import (
	"fmt"
	"reflect"
)

type t1 struct {
}
type t2 struct {
}

func main() {
	a := t1{}
	b := t2{}
	type1 := reflect.TypeOf(a)
	type2 := reflect.TypeOf(b)
	fmt.Println("type1 is equal to type2 : ", type1 == type2)

	c := t1{}
	type3 := reflect.TypeOf(c)
	fmt.Println("type1 is equal to type3 : ", type1 == type3)

	var c interface{}

	c = a
}
