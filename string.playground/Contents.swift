import UIKit

var str = "Hello, playground \nnice meeting you \n\"I am beginner\""

print(str)
print("------------------------------")

var str2 = """
Hello, playground.
nice to meet you.
"I am beginner in swift"
"""

print(str2)

var emptyString = ""
var anotherEmptyString = String()

if anotherEmptyString.isEmpty {
    print("Nothing to see here")
}

let string1 = "hello"
let string2 = " there"

var welcome = string1 + string2
print(welcome)

var instruction = "Look over"
instruction += string2
print(instruction)

print(instruction.count)
