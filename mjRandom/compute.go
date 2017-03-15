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
	min, max   int
	p          int
	rmin, rmax int
}

func (p PointRange) String() string {
	return fmt.Sprintf("{min:%v,max:%v,p:%v,rmin:%v,rmax:%v}", p.min, p.max, p.p, p.rmin, p.rmax)
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

func randPoint(min, max int, f func(float64) float64) int {
	//fmt.Println(">>>>>>>", min, max)
	if max-min <= 1 {
		return max
	}
	rd := rand.Float64()
	rd = f(rd)

	add := rd * float64(max-min)

	ret := int(add) + min
	return ret
}

func computeScore(min, max int, f func(float64) float64) (pr PointRange) {
	pr.p = randPoint(min, max, f)

	t1 := int(math.Max(float64(pr.p-*rdMax), float64(min)))
	t1m := int(math.Max(float64(t1), float64(pr.p-*rdMin)))
	pr.min = randPoint(t1, t1m, line)

	t2 := int(math.Min(float64(pr.p+*rdMax), float64(max)))
	t2m := int(math.Min(float64(t2), float64(pr.p+*rdMin)))
	pr.max = randPoint(t2m, t2, line)
	pr.rmax = max
	pr.rmin = min

	if pr.min <= *negMin {
		//pr.max = randPoint(*negMin, *negMax, line)
		pr.min = *negMin
		pr.max = *negMax
	}
	return pr
}

//var addMax = 500
//var subMax = 150

func debug(min, i, max int, lc *LevelCurv) {
	outMax := *addMax
	outMin := -*subMax
	if i-min == 1 {
		diff := lc.points[i].min - lc.points[min].max
		if diff > outMax {
			fmt.Println("error pre max>>>>>:", min, i, max, lc.points[min], lc.points[i], lc.points[max])
		}
		diff = lc.points[i].max - lc.points[min].min
		if diff < outMin {
			fmt.Println("error pre min>>>>>:", min, i, max, lc.points[min], lc.points[i], lc.points[max])
		}
	}
	if max-i == 1 {
		diff := lc.points[max].min - lc.points[i].max
		if diff > outMax {
			fmt.Println("error follow max<<<<:", min, i, max, lc.points[min], lc.points[i], lc.points[max])
		}
		diff = lc.points[max].max - lc.points[i].min
		if diff < outMin {
			fmt.Println("error follow min>>>>>:", min, i, max, lc.points[min], lc.points[i], lc.points[max])
		}
	}
	if lc.points[i].max < lc.points[i].min {
		fmt.Println(min, i, max, lc.points[min], lc.points[i], lc.points[max])
		panic("max < min")
	}
	if lc.points[i].rmax < lc.points[i].rmin {
		fmt.Println(min, i, max, lc.points[min], lc.points[i], lc.points[max])
		panic("rmax < rmin")
	}
}

func computeCenter(min, max int, lc *LevelCurv, level int) {
	if max-min <= 1 {
		return
	}
	center := chooseCenter(min, max)

	diffmin := center - min
	diffmax := max - center

	t := rand.Float64()
	var subRange = 0
	if t < 0.5 {
		subRange = *subMaxMin
	} else {
		subRange = int(math.Pow(rand.Float64(), 2)*float64(*subMax-*subMaxMin)) + *subMaxMin
	}

	addRange := getAddMax(level)

	minMax := lc.points[min].min + diffmin*(addRange)
	minMin := lc.points[min].max - diffmin*(subRange)
	maxMax := lc.points[max].max + diffmax*(subRange)
	maxMin := lc.points[max].min - diffmax*(addRange)

	smin := math.Max(float64(minMin), float64(maxMin))
	smax := math.Min(float64(minMax), float64(maxMax))
	if smin > smax {
		subRange = *subMax
		minMax = lc.points[min].min + diffmin*(addRange)
		minMin = lc.points[min].max - diffmin*(subRange)
		maxMax = lc.points[max].max + diffmax*(subRange)
		maxMin = lc.points[max].min - diffmax*(addRange)

		smin = math.Max(float64(minMin), float64(maxMin))
		smax = math.Min(float64(minMax), float64(maxMax))
	}

	lc.points[center] = computeScore(int(smin), int(smax), line)

	debug(min, center, max, lc)
	computeCenter(min, center, lc, level)
	computeCenter(center, max, lc, level)
}

func line(t float64) float64 {
	return t
}
func powf(t float64) float64 {
	return math.Pow(t, 10)
}

func computeLine(level int, config *map[string]*LevelScore) (lc LevelCurv) {
	levelStr := strconv.FormatInt(int64(level), 10)
	tmp := (*config)[levelStr]
	f := line
	if level == 1 {
		f = powf
	}
	lc.points[*jushu] = computeScore(tmp.Min, tmp.Max, f)
	if level == 1 {
		//fmt.Println(lc.points[6].p)
	}
	computeCenter(0, *jushu, &lc, level)

	lc.points[*jushu].max = tmp.Max
	lc.points[*jushu].min = tmp.Min
	if tmp.Min <= 1 {
		lc.points[*jushu].min = *negMin
	}
	return
}

func fixMinRange(lc *LevelCurv) {
	for i := 1; i < len(lc.points); i++ {
		max := lc.points[i].max
		min := lc.points[i].min
		if max-min < 60 {
			diff := (max - min) / 2
			add := 30 - diff
			lc.points[i].max += add
			lc.points[i].min -= add
		}
	}
}
func compute(config *map[string]*LevelScore) {
	csv := &CSVOut{}
	csv.createFile()
	defer csv.close()

	lua := &LuaOut{}
	lua.createFile()
	defer lua.close()

	lua.begin()
	for lv := 0; lv < len(*config); lv++ { //each level
		lua.beginLevel(lv)
		for j := 0; j < *cnt; j++ { //each line
			line := computeLine(lv, config)
			fixMinRange(&line)

			csv.append(lv, j, &line)
			lua.append(j, &line)
		}
		lua.endLevel()
	}
	lua.end()
}
