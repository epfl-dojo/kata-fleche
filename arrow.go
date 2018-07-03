package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getArrowString(arrowSize int) string {
	arrow := ""
	for line := 0; line < arrowSize; line++ {
		arrow += strings.Repeat(" ", arrowSize-line)
		arrow += "*"
		if line != 0 {
			arrow += strings.Repeat(" ", 1+(line-1)*2)
			arrow += "*"
		}
		arrow += "\n"
	}
	arrow += strings.Repeat("*", arrowSize*2+1)
	arrow += "\n"
	tailLine := strings.Repeat(" ", arrowSize) + "*" + strings.Repeat(" ", arrowSize) + "\n"
	arrow += strings.Repeat(tailLine, arrowSize)
	return arrow
}

func main() {
	if len(os.Args) < 2 {
		fmt.Println("[" + os.Args[0] + "] Please enter one argument")
		return
	} else if len(os.Args) != 2 {
		fmt.Println("[" + os.Args[0] + "] Please enter ONLY one argument")
		return
	}
	arrowSize, err := strconv.Atoi(os.Args[1])
	if err != nil {
		fmt.Println("First argument must be an integer")
		return
	}

	arrow := getArrowString(arrowSize)
	fmt.Print(arrow)
}
