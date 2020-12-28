import UIKit

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

print(convertedNumber)

if convertedNumber != nil {
    print(convertedNumber!)
}

if let actualNumber = Int(possibleNumber){
    print(actualNumber)
}

var serverResponseCode:Int? = 404
serverResponseCode = nil

print(serverResponseCode)
