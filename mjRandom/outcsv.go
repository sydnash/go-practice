package main

import (
	"fmt"
	"os"
)

type CSVOut struct {
	f *os.File
}

func (p *CSVOut) createFile() {
	f, err := os.OpenFile("out.csv", os.O_WRONLY|os.O_CREATE, os.ModePerm)
	if err != nil {
		panic(fmt.Sprintf("open file error. %v\n", err))
	}
	err = f.Truncate(0)
	if err != nil {
		panic(fmt.Sprintf("Truncate file error. %v\n", err))
	}
	p.f = f
}

func (p *CSVOut) append(lv, j int, lc *LevelCurv) {
	f := p.f
	f.WriteString(fmt.Sprintf("lv:%v id:%v\n", lv, j))
	out := ""
	for i := 1; i < *jushu+1; i++ {
		p := lc.points[i]
		var min = p.min
		if p.min < 0 {
			min = 0
		}
		s := fmt.Sprintf("%v,%v,%v,%v,%v\n", p.max, min, p.p, p.rmax, p.rmin)
		out = out + s
	}
	f.WriteString(out)
}

func (p *CSVOut) close() {
	if p.f != nil {
		p.f.Close()
		p.f = nil
	}
}
