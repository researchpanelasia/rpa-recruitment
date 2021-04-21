package MyGreeter

import (
	"strconv"
	"time"
)

type Client struct {
}

func Instance() *Client {
	return &Client{}
}

func (self *Client) GetGreeting() string {
	t := time.Now().Format("15")
	it, _ := strconv.Atoi(t)
	if it >= 6 && it < 12 {
		return "good morning"
	} else if it >= 12 && it < 18 {
		return "good afternoon"
	} else {
		return "Good evening"
	}
}
