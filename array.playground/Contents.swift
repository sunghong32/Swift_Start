import UIKit

var emptyArray = Array<String>()
var emptyArray2 = [String]()

print(emptyArray2.count)
print(emptyArray2)

emptyArray2.append("Hong")
emptyArray2.append("Sang")
print(emptyArray2)

var emptyArray3 = ["Hong", "Sang", "Ming"]
print(emptyArray3)

emptyArray2 += ["Choi"]
emptyArray2 += ["Son"]
emptyArray2 += ["Erik"]
print(emptyArray2)
print(emptyArray3[2])

emptyArray2[3] = "Hi"
print(emptyArray2[3])

emptyArray2[2...4] = ["A","B","C"]
print(emptyArray2)
print(emptyArray2.count)

let emptyArray4 = ["Min", "Sung", "Hong", "Ko"]
//emptyArray4[3] = "hello"
print(emptyArray4)


