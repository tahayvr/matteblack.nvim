//
// Theme Test File for Go
// This file showcases various Go syntax elements.
//

// @include: `package` is like an import/include statement
package main

// --- Imports ---
import (
	"fmt"
	"math"
	"sync"
)

// --- Constants and Variables ---
const Pi = 3.14
var aGlobalVariable = "I'm global"

// --- Structs and Interfaces ---
// @type.definition: Defining a new type `Vertex`
type Vertex struct {
	X, Y float64
}

// An interface definition
type Shaper interface {
	Area() float64
}

// --- Methods ---
// A method with a pointer receiver
func (v *Vertex) Scale(f float64) {
	v.X = v.X * f
	v.Y = v.Y * f
}

// A method with a value receiver implementing the Shaper interface
func (v Vertex) Area() float64 {
	return math.Abs(v.X * v.Y)
}

// --- Functions ---
func main() {
	// --- Basic Declarations ---
	v := Vertex{3, 4} // @constructor
	v.Scale(2)
	fmt.Println(v.Area())

	// --- Control Flow ---
	// @conditional: `if` with a short statement
	if x := v.X; x > 10 {
		fmt.Println("x is greater than 10")
	} else {
		fmt.Println("x is not greater than 10")
	}

	// @repeat: `for` loop (Go's only looping construct)
	sum := 0
	for i := 0; i < 5; i++ {
		sum += i
	}

	// --- Slices and Maps ---
	aSlice := []int{2, 3, 5, 7, 11}
	aMap := make(map[string]int)
	aMap["answer"] = 42

	// --- Concurrency with Goroutines and Channels ---
	// @keyword: `go`, `chan`
	ch := make(chan string)
	var wg sync.WaitGroup
	wg.Add(1)

	go func() {
		// @keyword: `defer`
		defer wg.Done()
		fmt.Println("Running in a goroutine...")
		ch <- "ping" // Send to channel
	}()

	msg := <-ch // Receive from channel
	fmt.Println("Received:", msg)
	wg.Wait()

	// --- Error Handling ---
	// Go doesn't have exceptions; it uses explicit error returns.
	// This is tested implicitly by function calls that return errors.

	// --- Deliberate Syntax Error ---
	// Remove the '//' to test LSP diagnostics
	// fmt.Println("Hello" "World")
}
