package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	go func() {
		scanner := bufio.NewScanner(os.Stdin)
		for {
			//fmt.Println("laile")
			if !scanner.Scan() {
				//fmt.Println("meizhaodao")
				//break EXIT
				continue
			}
			str := scanner.Text()
			str = strings.TrimSpace(str)
			if len(str) == 0 {
				continue
			}
			fmt.Println(str)
		}
	}()
	ch := make(chan int)
	<-ch
}
