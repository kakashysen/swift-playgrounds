//: [Previous](@previous)
//: # Generics
import Foundation

protocol Numeric: Comparable {
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Self) -> Self
    func isZero() -> Bool
}

extension Double : Numeric {
    func isZero() -> Bool {
        return self == 0.0
    }
}
extension Float  : Numeric {
    func isZero() -> Bool {
        return self == 0.0
    }
}
extension Int    : Numeric {
    func isZero() -> Bool {
        return self == 0
    }
}

class Calculator {

    func sum<T: Numeric>(_ a: T, plus b: T) -> T {
        return a + b
    }
    
    func substract<T: Numeric>(_ a: T, less b: T) -> T {
        return a - b
    }
    
    func divide<T: Numeric>(_ a: T, in b: T) -> T? {
        guard !b.isZero() else {
            return nil
        }
        return a / b
    }
    
    func multipy<T: Numeric>(_ a: T, by b: T) -> T {
        return a * b
    }
}

//: ## Test Cases

let calculator = Calculator()

let aDouble = 5.2
let bDouble = 10.3

calculator.sum(aDouble, plus: bDouble)
calculator.divide(aDouble, in: bDouble)

let aInt = 3
let bInt = 0

calculator.sum(aInt, plus: bInt)
calculator.divide(aInt, in: bInt)



//: [Next](@next)
