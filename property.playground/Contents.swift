import UIKit

struct Money {
    var currencyRate: Int = 1000
    var dollar: Int = 0
    var won: Int{
        get{
            return dollar * currencyRate
        }set{
            dollar = newValue/currencyRate
        }
    }
}
var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)
moneyInMyPocket.dollar = 15
print(moneyInMyPocket.won)
print(moneyInMyPocket.dollar)
