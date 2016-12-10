package main

import (
	_ "bufio"
	"flag"
	"fmt"
	"net"
	"os"
	"time"
)

var (
	host = flag.String("host", "localhost", "host")
	port = flag.String("port", "3333", "port")
)

func main() {
	flag.Parse()
	raddrstring := net.JoinHostPort(*host, *port)
	raddr, err := net.ResolveTCPAddr("tcp", raddrstring)
	if err != nil {
		fmt.Println("resolve tcp addr:", err)
		os.Exit(1)
	}
	con, err := net.DialTCP("tcp", nil, raddr)
	if err != nil {
		fmt.Println("erro connect to server:", err)
		os.Exit(1)
	}
	defer con.Close()

	fmt.Println("Connecting to " + raddrstring)

	done := make(chan string)
	go handleWrite(con, done)
	go handleRead(con, done)
	fmt.Println(<-done)
}

func handleWrite(con *net.TCPConn, done chan string) {
	//buffer := make([]byte, 1000)
	var a = 1
OUTTER:
	for {
		con.SetDeadline(time.Now().Add(time.Second * 10))
		tmp := make([]byte, 1024)
		_, e := con.Write(tmp)
		if t, ok := e.(net.Error); ok {
			fmt.Println("net error")
			if t.Timeout() {
				fmt.Println("net timeout.")
			}
		}
		if e != nil {
			fmt.Println("input error:", e)
			break OUTTER
		}
		fmt.Println("write success:", a)
		a++

		/*
			inputReader := bufio.NewReader(os.Stdin)
			t := buffer[0:0]
			for {
				input, isPrefix, err := inputReader.ReadLine()
				t = append(t, input...)
				if err != nil {
					fmt.Println("input error:", err)
					break OUTTER
				}
				if !isPrefix {
					break
				}
			}
			_, err := con.Write(t)
			if err != nil {
				fmt.Println("error to send msg:", err)
				break
			}
		*/
	}
	done <- "done"
}
func handleRead(con *net.TCPConn, done chan string) {
	buf := make([]byte, 1024)
	for {
		reqLen, err := con.Read(buf)
		if err != nil {
			fmt.Println("error to read msg:", err)
			break
		}
		str := string(buf[:reqLen])
		if str == "quit" {
			break
		}
		fmt.Println("recv->:", string(buf[:reqLen]), "  len:", reqLen)
	}
	done <- "done"
}
