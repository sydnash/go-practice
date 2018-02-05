package main

import (
	"fmt"
	mgo "gopkg.in/mgo.v2"
	bson "gopkg.in/mgo.v2/bson"
	"reflect"
	"time"
)

type T1 struct {
	C int
}

type T2 struct {
	C int
}

type T struct {
	T1
	T2
}

func main() {
	session, err := mgo.Dial("localhost:27017")
	if err != nil {
		fmt.Println("dial server:", err)
	}
	defer session.Close()

	coll := session.DB("test").C("test")
	coll.DropCollection()

	coll.Insert(bson.M{"a": 1, "b": 2, "d": bson.M{"c": 1}})
	coll.Insert(bson.M{"a": 1, "b": 3})
	coll.Insert(bson.M{"a": 2, "b": 3})

	result := struct{ B, A int }{}

	err = coll.Find(bson.M{"d.c": 1}).Sort("b").One(&result)
	fmt.Println(result)
	err = coll.Find(bson.M{"a": 1}).Sort("-b").One(&result)
	fmt.Println(result)

	rs := []bson.M{}
	err = coll.Find(nil).Sort("-b").Select(bson.M{"d": 1}).All(&rs)
	fmt.Println(rs)

	err = coll.Update(bson.M{"a": 1}, bson.M{"b": 4})

	err = coll.Find(nil).Sort("-b").All(&rs)
	fmt.Println("find nil:", rs)

	rs = rs[0:0]
	coll.Insert(bson.M{"a": 3, "b": 5, "c": bson.M{"out": 1, "tmp": 2}})
	err = coll.Find(bson.M{"a": 3}).All(&rs)
	fmt.Println(rs)

	rs = rs[0:0]
	coll.Update(bson.M{"a": 3}, bson.M{"$set": bson.M{"b": 7, "c.out": 2}})
	err = coll.Find(bson.M{"a": 3}).All(&rs)
	fmt.Println(rs)

	fmt.Println(reflect.TypeOf(rs[0]["_id"]))

	objId := bson.NewObjectId()
	coll.Insert(bson.M{"_id": objId, "haha": "shiwo", "time": time.Now()})

	rs = rs[0:0]
	coll.FindId(objId).All(&rs)

	fmt.Println(objId, rs)
	fmt.Println(reflect.TypeOf(rs[0]["time"]))
	t := time.Now()
	fmt.Println(t.Before(t))

	a := struct {
		A int32         `json:"a"`
		B time.Time     `json:"b"`
		C []interface{} `json:"c"`
	}{10, time.Now(), []interface{}{1, 2, 3, 4}}

	data, err := bson.MarshalJSON(a)
	fmt.Printf("%v", string(data))
	tm := bson.M{}
	bson.UnmarshalJSON(data, &tm)
	fmt.Println(reflect.ValueOf(tm["a"]).Kind())
	fmt.Println(tm)
	err = coll.Insert(tm)
	if err != nil {
		fmt.Println("=================", err)
	}

	rs = rs[0:0]
	var last bson.M
	err = coll.Find(bson.M{"a": 10}).One(&last)
	fmt.Println(reflect.TypeOf(last["c"]))

	coll.Insert(bson.M{"time": time.Now(), "ri": "123"})

	coll.Find(bson.M{"time": bson.M{"$lte": time.Now()}}).All(&rs)
	fmt.Println("ttt", rs)

	input := struct {
		A int32
		B time.Time
		C string
	}{101, time.Now(), "100"}
	coll.Insert(input)

	output := struct {
		A string
		B time.Time
		C int
	}{"101", time.Now(), 100}
	err = coll.Find(bson.M{"a": 10}).One(&output)
	fmt.Println("not mathch test.", err, output)
}
