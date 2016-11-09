package main

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"reflect"
)

func main() {
	db, err := sql.Open("mysql", "root:root@tcp(127.0.0.1:3306)/niuniu")
	if err != nil {
		fmt.Println("connect sql:", err)
		return
	}
	defer db.Close()
	rows, err := db.Query("select data from player")
	if err != nil {
		fmt.Println("query err:", err)
		return
	}
	defer rows.Close()
	for rows.Next() {
		var data sql.NullString
		if err := rows.Scan(&data); err != nil {
			fmt.Println(reflect.TypeOf(err))
			fmt.Println("scale err:", err)
		}
		if data.Valid {
			fmt.Println("data:", data)
		}
	}

	row := db.QueryRow("call Logon('','','test_2016041916-PC',0,2,'110680471130743258',1, 1000)")
	var acid int
	row.Scan(&acid)
	fmt.Println(acid)
}
