package analyze

import (
	"log"
	"strconv"
	"strings"
)

func checkInt(str string) int {
	i, e := strconv.ParseInt(str, 10, 32)
	if e != nil {
		log.Fatal("parse csv failed. err: %v", e)
	}
	return int(i)
}
func checkBool(str string) bool {
	if str == "false" {
		return false
	}
	return true
}

func ReadClub(file string) map[int]*Club {
	reader, err := OpenFile(file)
	if err != nil {
		log.Fatal("read club failed. fle: %v, err: %v", file, err)
	}
	defer reader.Close()
	err = nil
	var data []byte
	title := true

	ret := make(map[int]*Club)
	for err == nil {
		data, err = reader.ReadLine()
		if title {
			title = false
			continue
		}
		str := string(data)
		vec := strings.Split(str, ",")
		if len(vec) != 4 {
			continue
		}
		deleted := checkBool(vec[3])
		if deleted {
			continue
		}
		acid := checkInt(vec[0])
		clubid := checkInt(vec[1])
		nickname := vec[2]
		player := NewPlayer(acid, nickname)
		club := NewClub(clubid, player)
		ret[clubid] = club
	}
	return ret
}

func ReadMember(file string, clubs map[int]*Club) {
	reader, err := OpenFile(file)
	if err != nil {
		log.Fatal("read member failed. fle: %v, err: %v", file, err)
	}
	defer reader.Close()
	err = nil
	var data []byte
	title := true

	for err == nil {
		data, err = reader.ReadLine()
		if title {
			title = false
			continue
		}
		str := string(data)
		vec := strings.Split(str, ",")
		if len(vec) != 4 {
			continue
		}
		deleted := checkBool(vec[3])
		if deleted {
			continue
		}
		acid := checkInt(vec[0])
		clubid := checkInt(vec[1])
		nickname := vec[2]
		club, ok := clubs[clubid]
		if !ok {
			continue
		}
		player := NewPlayer(acid, nickname)
		club.Players = append(club.Players, player)
	}
}
