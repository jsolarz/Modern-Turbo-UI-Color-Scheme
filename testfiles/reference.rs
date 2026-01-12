// Rust Reference File for Theme Testing

use std::f64;

#[derive(Debug)]
struct Point {
    x: f64,
    y: f64,
}

impl Point {
    fn distance(&self, other: &Point) -> f64 {
        ((self.x - other.x).powi(2) + (self.y - other.y).powi(2)).sqrt()
    }
}

fn main() {
    let p1 = Point { x: 0.0, y: 0.0 };
    let p2 = Point { x: 3.0, y: 4.0 };

    println!("Distance: {}", p1.distance(&p2));

    let nums = vec![1, 2, 3];
    for n in nums {
        println!("{}", n);
    }
}
