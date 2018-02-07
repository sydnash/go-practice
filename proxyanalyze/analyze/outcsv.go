package analyze

import (
	"fmt"
	"os"
)

type CSVOut struct {
	f *os.File
}

func (p *CSVOut) CreateFile() {
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

func (p *CSVOut) Write(issues []*Issue) {
	f := p.f
	for _, issue := range issues {
		f.WriteString(fmt.Sprintf("proxy,%v,%v\n", issue.proxy.playerInfo.acId, issue.proxy.playerInfo.nickname))

		for _, cp := range issue.issues {
			f.WriteString(fmt.Sprintf("withproxy,%v,%v\n", cp.proxy2.playerInfo.acId, cp.proxy2.playerInfo.nickname))
			for _, club := range cp.club {
				f.WriteString(fmt.Sprintf("sameplayerCnt,%v\n", len(club.same)))
				f.WriteString(fmt.Sprintf("club,%v,memcnt,%v,\"   \",club,%v,memcnt,%v\n", club.club1.Id, len(club.club1.Players), club.club2.Id, len(club.club2.Players)))
				f.WriteString(fmt.Sprintf("sameplayers\n"))
				for _, p := range club.same {
					f.WriteString(fmt.Sprintf("%v,%v\n", p.acId, p.nickname))
				}
			}
		}
		f.WriteString("\n")
	}
}

func (p *CSVOut) close() {
	if p.f != nil {
		p.f.Close()
		p.f = nil
	}
}
