-- Defining a simple table with key-value pairs
local myTable = {
    name = "John Doe",
    age = 30,
    ["favorite color"] = "blue"
}

-- Function to calculate the area of a circle
function circleArea(radius)
    return math.pi * radius * radius
end

-- Function to print a message
function printMessage(message)
    print(message)
end

-- Using a for loop to iterate over the table
for key, value in pairs(myTable) do
    print(key, value)
end

-- Using a while loop to count down from 10
local count = 10
while count > 0 do
    print(count)
    count = count - 1
end

-- Using a repeat-until loop to print numbers from 1 to 5
local i = 1
repeat
    print(i)
    i = i + 1
until i > 5

-- Using an if-elseif-else structure for conditional logic
if myTable.age > 25 then
    printMessage("You are older than 25.")
elseif myTable.age < 18 then
    printMessage("You are younger than 18.")
else
    printMessage("You are between 18 and 25.")
end

-- Example of using a closure
function makeMultiplier(x)
    return function(y)
        return x * y
    end
end

local double = makeMultiplier(2)
local triple = makeMultiplier(3)

print(double(5)) -- Output: 10
print(triple(5)) -- Output: 15

-- Demonstrating error handling with pcall
local status, result = pcall(circleArea, -1)
if status then
    print("Area: ", result)
else
    print("Error: ", result)
end

-- Demonstrating coroutines (a more advanced topic)
function coroutineExample()
    print("Start of coroutine")
    coroutine.yield()
    print("End of coroutine")
end

local co = coroutine.create(coroutineExample)
coroutine.resume(co) -- Prints "Start of coroutine"
coroutine.resume(co) -- Prints "End of coroutine"

print("Script finished.")
