import UIKit

var myName : String? = "sunghong"

if let name = myName {
    print(name)
}
func printName(_ name: String) {
    print(name)
}

var yourName : String? = "sunghong"

if let name: String = yourName {
    printName(name)
}else{
    printName("myNamm == nil")
}


