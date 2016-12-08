package main

import (
	"flag"
	"fmt"
	_ "io"
	"net"
	"os"
)

var (
	host = flag.String("host", "", "host")
	port = flag.String("port", "3333", "port")
)

func main() {
	flag.Parse()
	addrstring := net.JoinHostPort(*host, *port)
	tcpaddr, err := net.ResolveTCPAddr("tcp", addrstring)
	if err != nil {
		fmt.Println("resolve tcp addr:", err)
		os.Exit(1)
	}
	l, err := net.ListenTCP("tcp", tcpaddr)
	if err != nil {
		fmt.Println("Error listening:", err)
		os.Exit(1)
	}
	defer l.Close()

	for {
		con, err := l.AcceptTCP()
		if err != nil {
			fmt.Println("Error accept:", err)
			os.Exit(1)
		}

		fmt.Printf("Recieved message %s -> %s\n", con.RemoteAddr(), con.LocalAddr())
		go handleRequest(con)
	}
}
func handleRequest(con *net.TCPConn) {
	defer func() {
		con.Close()
		fmt.Println("con close")
	}()
	buff := make([]byte, 1024)
	for {
		/*_, err := io.Copy(con, con)
		if err != nil {
			fmt.Println("copy error:", err)
			break
		}
		*/
		t, _ := con.Read(buff)
		fmt.Println("recv ", t)
	}
}
