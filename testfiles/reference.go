// Go Reference File for Theme Testing

package main

import (
    "fmt"
    "math"
)

type Point struct {
    X, Y float64
}

func (p Point) Distance(q Point) float64 {
    return math.Hypot(p.X-q.X, p.Y-q.Y)
}

func main() {
    p1 := Point{0, 0}
    p2 := Point{3, 4}

    fmt.Println("Distance:", p1.Distance(p2))

    nums := []int{1, 2, 3}
    for _, n := range nums {
        fmt.Println(n)
    }
}
