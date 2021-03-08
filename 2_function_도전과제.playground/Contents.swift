import UIKit

func printFullName(first : String, last: String) {
    print("\(first) \(last)")
}
printFullName(first: "sunghong", last: "Min")

func printFullName(_ first : String, _ last: String) {
    print("\(first) \(last)")
}
printFullName("sunghong", "Min")

func returnFullName(first: String, last: String) -> String {
    let fullName = " \(first) \(last)"
    return fullName
}

returnFullName(first: "sunghong", last: "Min")

func returnFullName2(first: String, last: String) -> String {
    
    return "\(first) \(last)"
}
let fullName = returnFullName2(first: "sunghong", last: "Min")
fullName

print(fullName)

