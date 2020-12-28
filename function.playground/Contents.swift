import UIKit

func sayHello(){
    print("hello")
}

sayHello()

func sayHello2(name:String){
    print("hello \(name)")
}

sayHello2(name: "GO")

func sayHello3(name:String) -> String{
    return "Hello " + name
}

var temp = sayHello3(name: "GO")
print(temp)
print(sayHello3(name: "GO"))

func sayHello4(name:String = "Min"){
    print("hello \(name)")
}

sayHello4()
sayHello4(name: "Jung")

func sayHello5(insertYourName name:String, internationalAge age:Int){
    print("\(name) is \(age) years old.")
}

sayHello5(insertYourName: "Min", internationalAge: 26)

func sayHello6(_ name:String, _ age:Int) -> String {
    return "\(name) is \(age) years old."
}
print(sayHello6("Jung",22))
