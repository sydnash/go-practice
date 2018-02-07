package analyze

import (
	"fmt"
	"os"
)

type CSVOut struct {
	f *os.File
}

func (p *CSVOut) CreateFile(file string) {
	f, err := os.OpenFile(file, os.O_WRONLY|os.O_CREATE, os.ModePerm)
	if err != nil {
		panic(fmt.Sprintf("open file error. %v\n", err))
	}
	err = f.Truncate(0)
	if err != nil {
		panic(fmt.Sprintf("Truncate file error. %v\n", err))
	}
	p.f = f
}

func (p *CSVOut) Write(issues []*Issue) {

}

func (p *CSVOut) Close() {
	if p.f != nil {
		p.f.Close()
		p.f = nil
	}
}

func WriteDetail(p *CSVOut, issues []*Issue) {
	f := p.f
	for _, issue := range issues {
		f.WriteString(fmt.Sprintf("proxy,%v,%v,cnt,%v\n", issue.proxy.playerInfo.acId, issue.proxy.playerInfo.nickname, len(issue.proxy.players)))
		for _, cp := range issue.issues {
			f.WriteString(fmt.Sprintf("withproxy,%v,%v,%v\n", cp.proxy2.playerInfo.acId, cp.proxy2.playerInfo.nickname, len(cp.proxy2.players)))
			f.WriteString(fmt.Sprintf("sameplayerCnt,%v\n", len(cp.same)))
			for _, p := range cp.same {
				f.WriteString(fmt.Sprintf("%v,%v\n", p.acId, p.nickname))
			}
		}
		f.WriteString("\n")
	}
}

func WriteSummary(p *CSVOut, issues []*Issue) {
	f := p.f
	for _, issue := range issues {
		f.WriteString(fmt.Sprintf("proxy,%v,%v,cnt,%v\n", issue.proxy.playerInfo.acId, issue.proxy.playerInfo.nickname, len(issue.proxy.players)))
		for _, cp := range issue.issues {
			f.WriteString(fmt.Sprintf("withproxy,%v,%v,%v\n", cp.proxy2.playerInfo.acId, cp.proxy2.playerInfo.nickname, len(cp.proxy2.players)))
			sameCnt := float32(len(cp.same))
			f.WriteString(fmt.Sprintf("sameCnt,%v\n", sameCnt))
			f.WriteString(fmt.Sprintf("percentme,%v,percentother,%v\n", sameCnt/float32(len(issue.proxy.players)), sameCnt/float32(len(cp.proxy2.players))))
		}
		f.WriteString("\n")
	}
}
