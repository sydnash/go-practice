package main

import (
	"flag"
	"github.com/sydnash/practice/proxyanalyze/analyze"
)

var threshold = flag.Int("cnt", 7, "阈值")
var clubfile = flag.String("clubfile", "club.csv", "clubfile")
var memberfile = flag.String("memberfile", "clubmember.csv", "memberfile")

func main() {
	flag.Parse()

	clubs := analyze.ReadClub(*clubfile)
	analyze.ReadMember(*memberfile, clubs)
	proxies := analyze.GenerateProxyList(clubs)
	issues := analyze.Analyze(proxies, *threshold)

	outer := &analyze.CSVOut{}
	outer.CreateFile()
	outer.Write(issues)
}
