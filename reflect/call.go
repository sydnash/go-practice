package main

import (
	"fmt"
	"reflect"
)

type S struct {
	i int
}

func (s *S) DoPrintf(a ...interface{}) {
	fmt.Println("s.printf", s.i)
	fmt.Println(a...)
}

func DoPrintf(i int) {
	fmt.Println("normal printf", i)
}

func main() {
	a := func(i int) {
		fmt.Println("closure", i)
	}

	f1 := reflect.ValueOf((*S).DoPrintf)
	f2 := reflect.ValueOf(DoPrintf)
	f3 := reflect.ValueOf(a)

	s := &S{1}

	p1 := make([]reflect.Value, 5)
	p1[0] = reflect.ValueOf(s)
	p1[1] = reflect.ValueOf(2)
	p1[2] = reflect.ValueOf(2)
	p1[3] = reflect.ValueOf(2)
	p1[4] = reflect.ValueOf(2)
	p2 := make([]reflect.Value, 1)
	p2[0] = reflect.ValueOf(2)
	p3 := make([]reflect.Value, 1)
	p3[0] = reflect.ValueOf(3)

	f1.Call(p1)
	f2.Call(p2)
	f3.Call(p3)

	a1 := 1
	t := reflect.TypeOf(a1)
	b := reflect.New(t)
	c := b.Elem()
	c.SetInt(2)
	fmt.Println(c.Interface())
	fmt.Println(b.Interface().(*int))
	fmt.Println(reflect.TypeOf(b.Interface()))
	d := reflect.New(reflect.TypeOf(b.Interface()))
	e := d.Elem()
	e.Set(b)
	fmt.Println(reflect.TypeOf(d.Interface()))
	fmt.Println(**(d.Interface().(**int)))

	m := make(map[int]int)
	delete(m, 1)
	delete(m, 1)
	delete(m, 1)
	delete(m, 1)
	delete(m, 1)
}
