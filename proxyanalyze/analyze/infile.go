package analyze

import (
	"bufio"
	"os"
)

type ReadFile struct {
	f      *os.File
	reader *bufio.Reader
}

func OpenFile(file string) (ReadFile, error) {
	var ret ReadFile
	var err error
	ret.f, err = os.OpenFile(file, os.O_RDWR, os.ModePerm)
	if err != nil {
		return ret, err
	}
	ret.reader = bufio.NewReader(ret.f)
	return ret, nil
}

func (this ReadFile) Close() {
	this.f.Close()
}

func (this ReadFile) ReadLine() ([]byte, error) {
	isPrefix := true
	var tmp []byte
	var err error
	var ret []byte
	for isPrefix {
		tmp, isPrefix, err = this.reader.ReadLine()
		ret = append(ret, tmp...)
	}
	return ret, err
}
