package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
)

type LevelScore struct {
	Min int `json:"min"`
	Max int `json:"max"`
}

func parseConfig() map[string]*LevelScore {
	b, err := ioutil.ReadFile("config")
	if err != nil {
		panic(fmt.Sprintf("read config error:%s", err))
	}
	var ret map[string]*LevelScore
	err = json.Unmarshal(b, &ret)
	if err != nil {
		panic(fmt.Sprintf("parse config json error:%s", err))
	}
	return ret
}
