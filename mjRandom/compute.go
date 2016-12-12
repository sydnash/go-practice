package main

import (
	"fmt"
	"math"
	"math/rand"
	"strconv"
	"time"
)

func init() {
	rand.Seed(time.Now().UnixNano())
}

type PointRange struct {
	min, max int
	p        int
}
type LevelCurv struct {
	points [7]PointRange
}
type LevelOut struct {
	curvs []LevelCurv
}

func chooseCenter(min, max int) int {
	div := float64(min+max) / 2.0
	floor := math.Floor(div)
	wceil := div - floor
	wfloor := 1.0 - wceil
	rd := rand.Float64()
	if rd < wfloor {
		return int(floor)
	}
	return int(floor) + 1
}

func randPoint(min, max int) int {
	//fmt.Println(">>>>>>>", min, max)
	if max-min <= 1 {
		return max
	}
	rd := rand.Int31n(int32(max - min))
	rd = rd + int32(min)
	return int(rd)
}
func computeScore(min, max int) (pr PointRange) {
	pr.p = randPoint(min, max)

	t1 := int(math.Max(float64(pr.p-100), float64(min)))
	pr.min = randPoint(t1, pr.p)
	t2 := int(math.Min(float64(pr.p+100), float64(max)))
	pr.max = randPoint(pr.p, t2)
	return pr
}

var addMax = 500
var subMax = 150

func computeCenter(min, max int, lc *LevelCurv) {
	if max-min <= 1 {
		return
	}
	center := chooseCenter(min, max)

	diffmin := center - min
	minMax := lc.points[min].min + diffmin*addMax
	minMin := lc.points[min].max - diffmin*subMax
	maxMax := lc.points[max].max + diffmin*subMax
	maxMin := lc.points[max].min - diffmin*addMax

	smin := math.Max(float64(minMin), float64(maxMin))
	smax := math.Min(float64(minMax), float64(maxMax))

	lc.points[center] = computeScore(int(smin), int(smax))

	computeCenter(min, center, lc)
	computeCenter(center, max, lc)
}

func computeLine(level int, config *map[string]*LevelScore) (lc LevelCurv) {
	levelStr := strconv.FormatInt(int64(level), 10)
	tmp := (*config)[levelStr]
	lc.points[6] = computeScore(tmp.Min, tmp.Max)
	computeCenter(0, 6, &lc)
	return
}

func compute(config *map[string]*LevelScore) {
	for lv := 0; lv < 6; lv++ { //each level
		for j := 0; j < *cnt; j++ { //each line
			line := computeLine(lv, config)
			fmt.Println(lv, line.points)
		}
	}
}
