//: [Previous](@previous)

import Foundation

class Node<E> {
    var element: E?
    var next: Node<E>?
    
    init(element: E) {
        self.element = element
    }
}

class Stack<E> {
    var head: Node<E>?
    var size = 0
    
    func push(element: E) {
        let lastHead = head
        let node = Node(element: element)
        head = node
        head?.next = lastHead
        size += 1
    }
    
    func pop() -> E? {
        guard let element = head?.element else {
            return nil
        }
        
        head = head?.next
        size -= 1
        return element
    }
    
    func peek() -> E? {
        guard let element = head?.element else {
            return nil
        }
        
        return element
    }
}

// Testing
let stack = Stack<Int>()
stack.push(element: 1)
stack.push(element: 2)
stack.push(element: 3)
stack.push(element: 4)
stack.push(element: 5)

stack.pop()
stack.peek()
stack.push(element: 5)
stack.peek()

//: [Next](@next)
