package main

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	_ "reflect"
)

func main() {
	db, err := sql.Open("mysql", "root:root@tcp(127.0.0.1:3306)/niuniu")
	if err != nil {
		fmt.Println("connect sql:", err)
		return
	}
	defer db.Close()
	/*rows, err := db.Query("select data from player")
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
		}discardResults
		if data.Valid {
			fmt.Println("data:", data.String)
		}
	}*/

	row := db.QueryRow("call Logon('','','test_2016041916-PC',0,2,'110680471130743258',1, 1000)")
	var acid int
	row.Scan(&acid)
	fmt.Println(acid)

	rows, err := db.Query("call SelectLoginOne(?)", 487)
	defer rows.Close()
	for rows.Next() {
		fmt.Println("line")
		var name sql.NullString
		var playType int
		var nickname sql.NullString
		var data sql.NullString
		var accountType int
		var qdType int
		var mac string
		err = rows.Scan(&acid, &nickname, &data, &playType, &name, &accountType, &qdType, &mac)

		if err != nil {
			fmt.Println(err)
		}
		fmt.Println("acid:", acid, "name:", nickname, "data:", data)
	}
}
