package rxOrder

import (
	"fmt"
	"testing"
	"time"
)

func TestCreateOrder(t *testing.T) {
	orderManagement := RxOrder{}

	orderManagement.init()

	orderManagement.subscribe("123", make(chan OrderMutation))
	orderManagement.subscribe("345", make(chan OrderMutation))
	orderManagement.subscribe("768", make(chan OrderMutation))

	order := Order{}
	order.name = "iPhone 8+"
	order.orderType = "withOrder"
	order.volume = 5
	order.startTime = time.Now()

	go func(t *testing.T) {
		fmt.Println(<-orderManagement.observers["123"])
	}(t)

	orderManagement.createOrder(order)
	orderManagement.observers["123"] <- OrderMutation{order, "w"}

	t.Fail()
}
