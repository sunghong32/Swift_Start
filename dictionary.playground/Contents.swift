import UIKit

var emptyDictionary = Dictionary<String, Int>()
var emptyDictionary2 = [String:Int]()

if emptyDictionary2.isEmpty {
    print("nothing in dictionry")
}

print(emptyDictionary)
print(emptyDictionary.count)

emptyDictionary2["ant"] = 6
emptyDictionary2["snake"] = 0

print(emptyDictionary2)
print(emptyDictionary2.count)

var emptyDictionry3 = ["ant" : 6, "snake" : 0, "cheetah" : 4]
emptyDictionry3["human"] = 2

print(emptyDictionry3)
print(emptyDictionry3["cheetah"]!)

let emptyDitionry4 = ["ant" : 6, "snake" : 0, "cheetah" : 4]
//emptyDitionry4["human"] = 1
print(emptyDitionry4)
