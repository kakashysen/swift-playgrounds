//: [Previous](@previous)
//: # Comparable and Equatable

import Foundation

class Person: Comparable {
    
    var id: Int
    var age: Int
    var name: String
    
    init(id: Int, age: Int, name: String) {
        self.id = id
        self.age = age
        self.name = name
    }
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id && lhs.age == rhs.age && lhs.name == rhs.name
    }
    
    static func <(lhs: Person, rhs: Person) -> Bool {
        return lhs.age < rhs.age
    }
}

//: ## Test Cases

let person1 = Person(id: 1, age: 23, name: "Steve")
let person2 = Person(id: 1, age: 23, name: "Steve")

if person1 == person2 {
    print("are equals")
} else {
    print("are differents")
}

let steve = Person(id: 1, age: 56, name: "Steve")
let woz = Person(id: 2, age: 67, name: "Wozniak")
let mark = Person(id: 3, age: 33, name: "Mark")
let bill = Person(id: 4, age: 63, name: "Bill")

let people = [steve, woz, mark, bill]

let peopleSorted = people.sorted {
    return $0.age < $1.age
}



//: [Next](@next)
