-- Lua Reference File

local PI = 3.14159

local function distance(x1, y1, x2, y2)
    return math.sqrt((x1 - x2)^2 + (y1 - y2)^2)
end

print("Distance:", distance(0, 0, 3, 4))
