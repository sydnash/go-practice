package rxOrder

import (
	"errors"
	"fmt"
	"time"
)

// Order This is the sample data structure
type Order struct {
	name      string
	orderType string // withOrder, noOrder, makeUp, test
	startTime time.Time
	deadline  time.Time
	volume    int32
}

// OrderMutation This is the struct for sending
// mutations to observers
type OrderMutation struct {
	order  Order
	action string
}

// RxOrder This is the node for reactive Order
// management
type RxOrder struct {
	orders    []Order
	observers map[string]chan OrderMutation
}

// init This method initialize RxOrder, including
// orders slice and subscriber map, user cannot
// initialize a RxOrder object more than once
func (rx *RxOrder) init() error {
	if len(rx.orders) == 0 && len(rx.observers) == 0 {
		rx.orders = make([]Order, 1)
		rx.observers = make(map[string]chan OrderMutation)
		return nil
	}

	return errors.New("Cannot reinitialize orders")
}

// subscribe, add observer to list
func (rx *RxOrder) subscribe(key string, ch chan OrderMutation) error {
	if _, ok := rx.observers[key]; ok {
		return errors.New("Observer already existed")
	}

	rx.observers[key] = ch

	return nil
}

// unsubscribe, delete observer from list
func (rx *RxOrder) unsubscribe(key string) error {
	if _, ok := rx.observers[key]; !ok {
		return errors.New("Observer does not exist")
	}

	delete(rx.observers, key)

	return nil
}

// createOrder The method for creating an order
func (rx *RxOrder) createOrder(order Order) error {

	rx.orders = append(rx.orders, order)

	for key, ch := range rx.observers {
		fmt.Println("send ok", key)
		ch <- OrderMutation{order, "create"}
	}

	return nil
}
