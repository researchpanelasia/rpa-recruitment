package main

import (
	"fmt"
	"rpa/MyGreeter"
)

func main(){
	c := new(MyGreeter.Client)
	fmt.Println(c.GetGreeting())
}