package main

import (
	"fmt"
	"math"
	"net"
	"runtime"
)

type noCopy struct{}

func (*noCopy) Lock() {}

type T struct {
	noCopy noCopy
}

func (t *T) do() {
	fmt.Println("*T")
}

func main() {
	fmt.Printf("uint64: %d xxx: %d", uint64(math.MaxUint64), (math.MaxUint32 * math.MaxUint32))
	fmt.Println("godi: ", runtime.GoId())
	tcpAddress, err := net.ResolveTCPAddr("tcp", ":9999")
	if err != nil {
		fmt.Println(err)
	}
	listener, err := net.ListenTCP("tcp", tcpAddress)

	c, e := listener.AcceptTCP()
	if e != nil {
		fmt.Println(e)
	}

	t := make([]byte, 0, 1000)
	c.Read(t)
	fmt.Println("haa: ", string(t))
	/*
		ch := make(chan bool)
		<- ch
	*/
}
