package main

import "fmt"
import "time"
import "reflect"

func main() {
	chan1 := make(chan int)
	chan2 := make(chan int)
	chan3 := make(chan int)
	chan4 := make(chan int)
	go func(c1, c2, c3, c4 chan int) {
		selectCase := make([]reflect.SelectCase, 4)
		a := 1
		selectCase[0] = reflect.SelectCase{reflect.SelectSend, reflect.ValueOf(c1), reflect.ValueOf(a)}
		selectCase[1] = reflect.SelectCase{reflect.SelectRecv, reflect.ValueOf(c2), reflect.ValueOf(nil)}
		selectCase[2] = reflect.SelectCase{reflect.SelectRecv, reflect.ValueOf(c3), reflect.ValueOf(nil)}
		selectCase[3] = reflect.SelectCase{reflect.SelectRecv, reflect.ValueOf(c4), reflect.ValueOf(nil)}
		for {
			idx, recv, ok := reflect.Select(selectCase)
			fmt.Println("select idx", idx)
			if selectCase[idx].Dir == reflect.SelectSend {
				fmt.Printf("select idx %d\n", idx)
				a++
				selectCase[idx].Send = reflect.ValueOf(a)
			} else if selectCase[idx].Dir == reflect.SelectRecv {
				a := recv.Interface().(int)
				for i := 0; i < a; i++ {
					fmt.Printf("\t")
				}
				fmt.Printf("select idx %d, value is %d, is ok %v\n", idx, recv.Interface(), ok)
			}
		}
	}(chan1, chan2, chan3, chan4)
	go func(c1 chan int) {
		for {
			time.Sleep(time.Second)
			fmt.Println("recv value:", <-c1)
		}
	}(chan1)
	go func(c chan int) {
		for {
			time.Sleep(time.Second)
			c <- 1
		}
	}(chan2)
	go func(c chan int) {
		for {
			time.Sleep(time.Second * 2)
			c <- 2
		}
	}(chan3)
	go func(c chan int) {
		for {
			time.Sleep(time.Second * 3)
			c <- 3
		}
	}(chan4)

	for {
	}
}
