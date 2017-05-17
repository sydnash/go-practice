package main

import (
	"fmt"
	"reflect"
)

type MyInt int

func main() {
	//interface to reflection object
	var aint int = 5
	ainttype := reflect.TypeOf(aint)
	aIntValue := reflect.ValueOf(aint)
	fmt.Println("type:", ainttype)
	fmt.Println("Value:", aIntValue)

	var afloat float64 = 3.4
	floatvalue := reflect.ValueOf(afloat)
	fmt.Println("type:", floatvalue.Type())
	fmt.Println("kind is float64:", floatvalue.Kind() == reflect.Float64)
	fmt.Println("value:", floatvalue.Float())

	var x MyInt = 7
	v := reflect.ValueOf(x)
	fmt.Println("type:", v.Type())
	fmt.Println("kind is int:", v.Kind() == reflect.Int)
	fmt.Println("value:", v.Int())

	//reflection object to interface
	bInt := aIntValue.Interface().(int)
	fmt.Println("bInt:", bInt)

	//modify a reflection object(it's need some addrsss to modify value)
	var modifyX float64 = 3.4
	modifyXValue := reflect.ValueOf(modifyX)
	fmt.Println("settability of modifyXValue:", modifyXValue.CanSet())

	modifyXValue = reflect.ValueOf(&modifyX)
	fmt.Println("type:", modifyXValue.Type())
	fmt.Println("settability of modifyXValue:", modifyXValue.CanSet())

	modifyXValue = modifyXValue.Elem()
	fmt.Println("type:", modifyXValue.Type())
	fmt.Println("settability of modifyXValue:", modifyXValue.CanSet())
	modifyXValue.SetFloat(7.1)
	fmt.Println("modifyx:", modifyX)

	t := make([]interface{}, 0, 10)
	t = append(t, 1)
	t = append(t, "2")
	tv := reflect.ValueOf(t)
	elem := tv.Index(0)
	fmt.Println(reflect.ValueOf(elem.Interface()).Type())
}
