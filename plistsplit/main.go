package main

import (
	"flag"
	"fmt"
	"howett.net/plist"
	"image"
	"image/png"
	"os"
	"path/filepath"
	"reflect"
	"regexp"
	"strconv"
)

var (
	filename    = flag.String("file", "", "file fore parse")
	pngfilename = flag.String("png", "", "png for split")
	rectRegrex  = regexp.MustCompile(`{({.*}),({.*})}`)
	pointRegrex = regexp.MustCompile(`{(\d+),(\d+)}`)
)

type Point struct {
	x int
	y int
}

type Rect struct {
	ox int
	oy int
	ex int
	ey int
}

type PicParam struct {
	name    string
	rect    Rect
	srcRect Rect
	srcSize Point
	rotate  bool
}

func parseRect(str string) Rect {
	rectStr := rectRegrex.FindStringSubmatch(str)
	fmt.Println(rectStr)
	p1 := parsePoint(rectStr[1])
	p2 := parsePoint(rectStr[2])
	return Rect{p1.x, p1.y, p2.x, p2.y}
}

func parsePoint(str string) Point {
	ps := pointRegrex.FindStringSubmatch(str)
	x1, _ := strconv.ParseInt(ps[1], 10, 32)
	y1, _ := strconv.ParseInt(ps[2], 10, 32)
	return Point{int(x1), int(y1)}
}

func coopPng(img *image.NRGBA, param *PicParam) *image.NRGBA {
	retImg := image.NewNRGBA(image.Rectangle{
		Min: image.Point{0, 0},
		Max: image.Point{param.srcSize.x, param.srcSize.y},
	})

	srcx, srcy := param.srcRect.ox, param.srcRect.oy
	for framex := param.rect.ox; framex < param.rect.ex; framex++ {
		for framey := param.rect.oy; framey < param.rect.ey; framey++ {
			tx := srcx + (framex - param.rect.ox)
			ty := srcy + (framey - param.rect.oy)
			if param.rotate {
				tmpy := ty
				ty = param.srcSize.y - tx - 1
				tx = tmpy
			}
			c := img.NRGBAAt(framex, framey)
			retImg.SetNRGBA(tx, ty, c)
		}
	}
	return retImg
}

func main() {
	flag.Parse()
	fmt.Println(*filename)
	file, err := os.Open(*filename)
	if err != nil {
		fmt.Println(err)
		return
	}
	decoder := plist.NewDecoder(file)
	v := make(map[string]interface{})
	decoder.Decode(v)

	frames := v["frames"].(map[string]interface{})

	picParams := []PicParam{}
	var param PicParam
	for k, v := range frames {
		//fmt.Println(k, v)
		param.name = k
		rv := v.(map[string]interface{})
		frame := rv["frame"].(string)
		//offset := rv["offset"].(string)
		rotated := rv["rotated"].(bool)
		srcRect := rv["sourceColorRect"].(string)
		srcSize := rv["sourceSize"].(string)
		frameRect := parseRect(frame)
		//offsetPoint := parsePoint(offset)
		x := frameRect.ex
		y := frameRect.ey
		if rotated {
			frameRect.ex = frameRect.ox + y
			frameRect.ey = frameRect.oy + x
		} else {
			frameRect.ex = frameRect.ox + x
			frameRect.ey = frameRect.oy + y
		}
		param.rect = frameRect
		param.srcRect = parseRect(srcRect)
		param.srcSize = parsePoint(srcSize)
		param.rotate = rotated
		picParams = append(picParams, param)
	}

	pngFile, err := os.Open(*pngfilename)
	if err != nil {
		fmt.Println("read png file failed: %v", err)
		return
	}
	img, err := png.Decode(pngFile)
	if err != nil {
		fmt.Println("parse png file failed: %v", err)
		return
	}

	fmt.Println(reflect.TypeOf(img))

	base := filepath.Base(*filename)
	ext := filepath.Ext(base)
	dirname := base[0 : len(base)-len(ext)]
	os.Mkdir(dirname, os.ModePerm)

	for _, v := range picParams {
		name := v.name
		outname := dirname + string(filepath.Separator) + name + ".png"
		fmt.Println("process file: ", name, "------>", outname)
		outFile, err := os.Create(outname)
		if err != nil {
			fmt.Println("save file failed: %v", err)
			continue
		}
		outImg := coopPng(img.(*image.NRGBA), &v)
		png.Encode(outFile, outImg)
		outFile.Close()
	}
}
