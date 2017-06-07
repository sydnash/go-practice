package main

import (
	"encoding/json"
	"fmt"
	"github.com/yuin/gopher-lua"
	"net/http"
)

type Announcemment struct {
	Has     bool   `json:"has"`
	Title   string `json:"title"`
	Content string `json:"content"`
}

var announcementJson string
var L *lua.LState

func init() {
	L = lua.NewState()
	err := L.DoFile("announcement.lua")
	fmt.Println(err)
	has := bool(L.GetGlobal("g_hasAnnouncement").(lua.LBool))
	title := string(L.GetGlobal("g_announcementTitle").(lua.LString))
	content := string(L.GetGlobal("g_announcementContent").(lua.LString))
	var a = Announcemment{
		Has:     has,
		Title:   title,
		Content: content,
	}
	sendClient, err := json.Marshal(a)
	if err != nil {
		fmt.Println("announcement config error. ", err)
		return
	}
	announcementJson = string(sendClient)
	fmt.Println("announcement content: ", announcementJson)
}

func loginHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Println("requset start: ", r.RemoteAddr)
	w.Write([]byte(announcementJson))
}

func main() {
	http.HandleFunc("/anouncement", loginHandler)
	http.ListenAndServe(":8080", nil)
	L.Close()
}
