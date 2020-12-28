import UIKit

//type Inference
var str = "Hello, playground"
var version = 1.0
let year = 2020
let handsome = true

//type annotation
var str2 : String = "Hello, playground"
var version2 : Double = 1.0
let year2 : Int = 2020
let handsome2:Bool = true

version2 = 2.0
//year = 2021

print("str2 : \(type(of: str2))")
print(str2)

print("version2 : \(type(of: version2))")
print(version2)

print("year2 : \(type(of: year2))")
print(year2)

print("handsome2 : \(type(of: handsome2))")
print(handsome2)
