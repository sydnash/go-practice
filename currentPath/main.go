package main

import (
	"fmt"
	//"golang.org/x/text/unicode/norm"
	"log"
	"os"
	"path"
	"path/filepath"
	"reflect"
	"runtime"
	"time"
)

const (
	DAY_DURATION time.Duration = time.Duration(time.Hour * time.Duration(24))
)

func IsSameDay(now, pre time.Time, hour int) bool {
	preHour := pre.Hour()
	if preHour < hour {
		pre = pre.Add(-DAY_DURATION)
	}
	newTime := time.Date(pre.Year(), pre.Month(), pre.Day(), hour, 0, 0, 0, time.Local)
	diff := now.Sub(newTime)
	if diff < DAY_DURATION {
		return true
	}
	return false
}

func main() {
	dir, err := filepath.Abs(filepath.Dir(os.Args[0]))
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(path.Dir(dir))
	fmt.Println(dir)

	/*ex, err := os.Executable()
	if err != nil {
		panic(err)
	}
	exPath := path.Dir(ex)
	fmt.Println(exPath)*/

	pwd, err := os.Getwd()
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	fmt.Println(pwd)

	_, filename, _, ok := runtime.Caller(0)
	if !ok {
		panic("No caller information")
	}
	fmt.Printf("Filename : %q, Dir : %q\n", filename, path.Dir(filename))
	/*
		s := "We went to eat at multiple cafe\u0301"
		cafe := "cafe"
		if p := strings.Index(s, cafe); p != -1 {
			p += len(cafe)
			if bp := norm.FirstBoundary(s[p:]); bp > 0 {
				p += bp
			}
			s = s[:p] + "s" + s[p:]
		}
		fmt.Println(s)
	*/

	var b []interface{} = nil
	fmt.Println(len(b), cap(b))
	b = append(b, b...)
	fmt.Println(b)

	a := []int{1, 2, 3}
	c := a[1:1]
	fmt.Println(c)

	ccc := map[int][]int{1: {1}}
	fmt.Println(ccc)

	tp := os.File{}
	fmt.Println("pkgpath:", reflect.ValueOf(tp).Type().PkgPath())

	now := time.Now()

	preHour := time.Date(now.Year(), 2, 5, 7, 1, 0, 0, time.Local)

	fmt.Println(IsSameDay(now, preHour, 8))
}
