package main

import (
	"fmt"
	"reflect"
	"sort"
)

func ExampleInts() {
	s := []int{5, 2, 6, 3, 1, 4} // unsorted
	sort.Ints(s)
	fmt.Println(s)
	// Output: [1 2 3 4 5 6]
}

func ExampleReverse() {
	s := []int{5, 2, 6, 3, 1, 4} // unsorted
	sort.Sort(sort.Reverse(sort.IntSlice(s)))
	fmt.Println(s)
	// Output: [6 5 4 3 2 1]
}
func rettwo(i int) (int, int) {
	return i + 1, i + 2
}
func main() {
	ExampleReverse()

	a, c := rettwo(3)
	fmt.Println(a, c)

	b, c := rettwo(4)

	fmt.Println(b, c)

	var x uint64 = 1<<64 - 1
	fmt.Println(x)

	d := []byte{'a', 'b', 'c'}
	fmt.Println(d)
	str := string(d)
	fmt.Println(str)

	t := make([]byte, 4)

	v := reflect.ValueOf(&t).Elem()
	d[1] = 'f'
	fmt.Println(str)
	v.SetBytes(d)
	fmt.Println(v.Interface())
	d[1] = 'g'
	fmt.Println(v.Interface())
}
