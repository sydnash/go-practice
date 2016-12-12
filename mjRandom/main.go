package main

import (
	"flag"
	"fmt"
)

var cnt = flag.Int("cnt", 100, "input curvs cnt per level")

func main() {
	config := parseConfig()
	for k, v := range config {
		fmt.Println(k, v)
	}
	fmt.Println(config)

	compute(&config)
}
