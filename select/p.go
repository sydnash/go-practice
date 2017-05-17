package main

import (
	"sync"
)

func run(wg *sync.WaitGroup) {
	defer wg.Done()
	panic("boom")
}

func main() {
	var wg sync.WaitGroup
	wg.Add(1)
	go run(&wg)
	wg.Wait()
}
