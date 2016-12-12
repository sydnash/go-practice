package main

import (
	"fmt"
	"reflect"
)

func main() {
	var a []interface{} = make([]interface{}, 3)
	a[0] = int(1)
	a[1] = uint(2)
	a[2] = byte(3)

	t := reflect.TypeOf(a)
	fmt.Println(t)

	te := t.Elem()
	fmt.Println(te)

	ta := reflect.ArrayOf(3, te)
	fmt.Println(ta, ta.Kind())

	vi := reflect.New(te).Elem()
	fmt.Println(vi.Type())

	var b interface{} = 1
	t1 := reflect.TypeOf(b)
	fmt.Println(t1)

	v := reflect.ValueOf(b)
	fmt.Println(v.Kind() == reflect.Interface)
}
