var integer: Int = -100
let unsignedInteger: UInt = 50
print("integer 값: \(integer), unsignedInteger 값: \(unsignedInteger)")
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt: \(UInt.min)")
let largeInter: Int64 = Int64.max
let smallUnsignedInteger: UInt8 = UInt8.max
print("Int64 최댓값: \(largeInter), UInt8 최댓값: \(smallUnsignedInteger)")

//let tooLarge: Int = Int.max + 1 // Int의 표현 범위를 초과하므로 오류를 냅니다.
//let cannotBeNegetive: Uint = -5 // UInt는 음수가 될 수 없으므로 오류를 냅니다.

//integer = unsignedInteger // 오류! 스위프트에서 Intdhk UInt는 다른 타입입니다.
integer = Int(unsignedInteger)
