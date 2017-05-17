package main

import ()

func second(a, b int) int {
	return a + b
}

func first() {
	a, b := 1, 2
	second(a, b)
}

func test(i, c int) func() {
	return func() {
		i++
		c++
	}
}

func main() {
	test(1, 2)()

	first()
}
