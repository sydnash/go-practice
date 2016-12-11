package main

import "fmt"
import "time"

func main() {
	ch1 := make(chan int, 3)
	go func() {
		i := 0
		for {
			i++
			select {
			case ch1 <- i:
			default:
				//fmt.Println("channel is full.")
			}
		}
	}()

	for {
		fmt.Println(<-ch1)
		time.Sleep(time.Second)
	}
}
