package main

import (
	"fmt"
	"rpa/MyGreeter"
)

func main(){
	c := MyGreeter.Instance()
	fmt.Println(c.GetGreeting())
}