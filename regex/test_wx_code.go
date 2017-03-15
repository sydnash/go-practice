package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {
	re, err := http.NewRequest("GET", "https://api.weixin.qq.com/sns/oauth2/access_token", nil)
	if err != nil {
		fmt.Println("create request err:", err)
	}
	t := re.URL.Query()
	t.Add("appid", "wxb3789cd0954891d9")
	t.Add("secret", "7f8f04cb0f0c6a2e075c639edd0e133f")
	t.Add("code", "021N8mYF1c4Qu40yM5ZF1BvmYF1N8mY2")
	t.Add("grant_type", "authorization_code")
	s := t.Encode()
	fmt.Println("code:", s)
	re.URL.RawQuery = s

	tr := &http.Transport{}
	client := &http.Client{Transport: tr}
	resp, err := client.Do(re)
	defer resp.Body.Close()

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println("http read error")
		return
	}
	src := string(body)
	fmt.Println("ret:>>>>>>>>", src)
}
