import UIKit

var myDic : [String : String] = ["name":"민성홍","job":"iOS 개발자","city":"용인"]

myDic["city"] = "부산"
myDic


func printNameAndCity(dic : [ String:String ]) {
    if let myName = dic["name"], let myCity = dic["city"]{
        print(myName,myCity)
    } else {
        print("정보가 없습니다.")
    }
}

printNameAndCity(dic:myDic)
