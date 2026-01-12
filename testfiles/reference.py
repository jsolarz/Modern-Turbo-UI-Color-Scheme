# Python Reference File for Theme Testing

import math
import asyncio
from dataclasses import dataclass

PI = 3.14159
DEBUG_MODE = True

@dataclass
class Point:
    x: float
    y: float

    def distance_to(self, other: "Point") -> float:
        return math.sqrt((self.x - other.x)**2 + (self.y - other.y)**2)

def greet(name: str) -> str:
    message = f"Hello, {name}!"
    print(message)
    return message

async def async_counter(limit: int):
    for i in range(limit):
        await asyncio.sleep(0.1)
        print(f"Count: {i}")

def risky_division(a: float, b: float) -> float:
    try:
        return a / b
    except ZeroDivisionError as ex:
        print("Error:", ex)
        return float("inf")

if __name__ == "__main__":
    p1 = Point(0, 0)
    p2 = Point(3, 4)
    print("Distance:", p1.distance_to(p2))

    greet("Nord Turbo")

    result = risky_division(10, 0)
    print("Result:", result)

    asyncio.run(async_counter(5))
