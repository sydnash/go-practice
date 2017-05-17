package main

import (
	"flag"
	"fmt"
	"strconv"
	"strings"
)

var cnt = flag.Int("cnt", 100, "设置每个等级生成多少条配置")
var jushu = flag.Int("jushu", 6, "设置一轮玩多少局")
var addMax = flag.Int("ctrladdmax", 500, "控制每局最大可以增加多少分数")
var subMax = flag.Int("ctrlsubmax", 120, "控制每局最大可以减少多少分数")
var subMaxMin = flag.Int("ctrlmaxmin", 50, "控制每局减少分数，一半的概率设置为50，一半的概率分布在50到ctrlsubmax之间")
var rdMin = flag.Int("rdmin", 25, "计算出当前局数分数后，随机范围的最小取值")
var rdMax = flag.Int("rdmax", 50, "计算出当前局数分数后，随机范围的最大取值")
var negMin = flag.Int("negmin", -80, "if range max < negmin, then range it to negmin to negmax")
var negMax = flag.Int("negmax", -30, "see negmin")
var addMaxStr = flag.String("addarray", "", `如果配置了该参数，则对应等级的每局最大可以增加的数据从这里取，0，1，2，3，4，5对应无奖，1，2，3，4，5等奖,例："200,300,200,200,200,200"`)

var addarray []int

func getAddMax(level int) int {
	if addarray == nil {
		return *addMax
	}
	if level < len(addarray) {
		return addarray[level]
	}
	return *addMax
}
func parseAddArray(c string) {
	if c == "" {
		return
	}
	p := strings.Split(c, ",")
	if len(p) == 0 {
		return
	}
	addarray = make([]int, 0, 6)
	for _, v := range p {
		t, err := strconv.Atoi(v)
		if err != nil {
			panic(fmt.Sprintf("addarray parse error:%s", err))
		}
		addarray = append(addarray, t)
	}
}

func main() {
	flag.Parse()
	parseAddArray(*addMaxStr)
	config := parseConfig()
	for k, v := range config {
		fmt.Println(k, v)
	}

	fmt.Println(">>>>>>>>>>", *cnt)
	compute(&config)
}
