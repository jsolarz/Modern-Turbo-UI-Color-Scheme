# Ruby Reference File

PI = 3.14159

def distance(a, b)
  Math.sqrt((a[:x] - b[:x])**2 + (a[:y] - b[:y])**2)
end

p1 = { x: 0, y: 0 }
p2 = { x: 3, y: 4 }

puts "Distance: #{distance(p1, p2)}"
