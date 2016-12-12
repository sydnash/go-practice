package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"regexp"
	_ "strings"
)

func main() {
	resp, err := http.Get("https://passport.yhd.com/wechat/login.do")
	if err != nil {
		fmt.Println("http get error.")
		return
	}
	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println("http read error")
		return
	}
	src := string(body)
	//<div class="wrp_code"><img class="qrcode lightBorder" src="/connect/qrcode/031dNCgfe-789o2w" /></div>
	fmt.Println(src)

	re1, _ := regexp.Compile(`\<div class="wrp_code"\>\<img class="qrcode lightBorder" src="([[:graph:]]*)" /\>\</div\>`)

	tmp := re1.FindAllStringSubmatch(src, -1)
	fmt.Println(tmp)
	fmt.Println("============head:", *resp)

	address := "https://open.weixin.qq.com" + tmp[0][1]
	fmt.Println(address)
	resp1, _ := http.Get(address)
	defer resp1.Body.Close()
	body1, err1 := ioutil.ReadAll(resp1.Body)
	if err1 != nil {
		fmt.Println("err1:", err1)
		return
	}
	//fmt.Println(body1)

	ioutil.WriteFile("tmp.jpg", body1, os.ModePerm)
}
