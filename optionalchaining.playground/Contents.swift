import UIKit

class Person {
    var name: String
    var home: Apartment?
    init(name: String) {
        self.name = name
    }
}
class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let yagom: Person? = Person(name: "yagom")
let guardName: String? = yagom?.home?.guard?.name

yagom?.home?.guard?.name = "슈퍼맨"
let name = guardName ?? "경비원"
print(name)
//print(yagom)
