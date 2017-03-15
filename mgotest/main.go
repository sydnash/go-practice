package main

import (
	"fmt"
	mgo "gopkg.in/mgo.v2"
	bson "gopkg.in/mgo.v2/bson"
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
	fmt.Println(rs)

	t := T{}
	fmt.Println(t)

}
