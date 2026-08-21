package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	input := os.Args[1]

	if strings.HasPrefix(input, '22') && strings.HasSuffix(input, '0022') == false {
		fmt.Println("Please surround string with single or double quotations")
	}
	fmt.Print(input)
}
