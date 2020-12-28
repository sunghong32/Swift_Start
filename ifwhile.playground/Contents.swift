import UIKit

let age = 7
if age<3 {
    print("baby")
} else if age >= 3 && age < 20{
    print("child")
}

switch age {
case 0,1,2,3:
    print("baby")
case 3...19:
    print("child")
default:
    print("adult")
}
