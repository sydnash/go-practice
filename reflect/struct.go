package main

import (
	"fmt"
	"reflect"

	"encoding/json"
)

type MyInt int
type T struct {
	A int
	B string
	C MyInt
}

func main() {
	t := T{23, "skidoo", 22}
	s := reflect.ValueOf(&t).Elem()
	typeOfT := s.Type()
	for i := 0; i < s.NumField(); i++ {
		f := s.Field(i)
		fmt.Printf("%d: %s %s = %v\n", i, typeOfT.Field(i).Name, f.Type(), f.Interface())
	}
	s.Field(2).SetInt(5)
	fmt.Println(t)

	js, _ := json.Marshal(t)
	fmt.Println(string(js))

	t1 := T{}
	json.Unmarshal(js, &t1)
	fmt.Println(t1)
	s1 := reflect.ValueOf(&t1).Elem()
	typeOfT1 := s1.Type()
	for i := 0; i < s1.NumField(); i++ {
		f := s1.Field(i)
		fmt.Printf("%d: %s %s = %v\n", i, typeOfT1.Field(i).Name, f.Type(), f.Interface())
	}
}