package main

import (
	"bufio"
	"flag"
	"fmt"
	"log"
	"net"
	"os"
	"runtime"
	"runtime/pprof"
)

var (
	host       = flag.String("host", "localhost", "host")
	port       = flag.String("port", "3333", "port")
	cpuprofile = flag.String("cpuprofile", "", "write cpu profile `file`")
	memprofile = flag.String("memprofile", "", "write memory profile to `file`")
)

func main() {
	flag.Parse()
	flag.Parse()
	if *cpuprofile != "" {
		f, err := os.Create(*cpuprofile)
		if err != nil {
			log.Fatal("could not create CPU profile: ", err)
		}
		if err := pprof.StartCPUProfile(f); err != nil {
			log.Fatal("could not start CPU profile: ", err)
		}
		defer pprof.StopCPUProfile()
	}
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

	if *memprofile != "" {
		f, err := os.Create(*memprofile)
		if err != nil {
			log.Fatal("could not create memory profile: ", err)
		}
		runtime.GC() // get up-to-date statistics
		if err := pprof.WriteHeapProfile(f); err != nil {
			log.Fatal("could not write memory profile: ", err)
		}
		f.Close()
	}
}

func handleWrite(con *net.TCPConn, done chan string) {
	buffer := make([]byte, 1000)
OUTTER:
	for {
		a := "testfsafasdf adsfasdfasdfasdfasd fads fdsaf asdfa sdfasdf adsf adsf asdf adfadf da fasdf dsf adfa dfad fadf adf adfa df adfadfad adf adf adf "
		b := []byte(a)
		fmt.Println(a)
		_, e := con.Write(b)
		if e != nil {
			fmt.Println("error to send msg:", e)
			break
		}
		continue
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
