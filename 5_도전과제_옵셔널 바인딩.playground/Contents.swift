import UIKit

var favoriteFood : String?

favoriteFood = "두부"
if let myFavoriteFood = favoriteFood {
    print(myFavoriteFood)
} else {
    print("없어요")
}

func printNickName(name: String?) {
    guard let nickName = name else {
        print("nickName을 만드세요")
        return
    }
    print(nickName)
}

printNickName(name: nil)
