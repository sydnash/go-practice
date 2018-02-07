package main

import (
	"flag"
	"github.com/sydnash/practice/proxyanalyze/analyze"
	"log"
)

var threshold = flag.Int("cnt", 7, "阈值")
var clubfile = flag.String("clubfile", "club.csv", "clubfile")
var memberfile = flag.String("memberfile", "clubmember.csv", "memberfile")

func main() {
	flag.Parse()

	log.Println("threshold", *threshold)
	log.Println("clubfile", *clubfile)
	log.Println("memberfile", *memberfile)
	clubs := analyze.ReadClub(*clubfile)
	analyze.ReadMember(*memberfile, clubs)
	proxies := analyze.GenerateProxyList(clubs)
	issues := analyze.Analyze(proxies, *threshold)

	outer := &analyze.CSVOut{}
	outer.CreateFile("out.csv")
	analyze.WriteDetail(outer, issues)
	outer.Close()
	log.Println("out to out.csv")

	outer.CreateFile("outsummery.csv")
	analyze.WriteSummary(outer, issues)
	outer.Close()
	log.Println("out to outsummery.csv")
}
