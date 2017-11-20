//: Playground - noun: a place where people can play

import Foundation

class Node<E> {
    var element: E?
    var next: Node<E>?
    
    init(element: E) {
        self.element = element
    }
}

// nil<-[1]<-[2]<-[3]

class Queue<E> : NSObject{
    
    var head: Node<E>?
    var size = 0
    
    func enqueue(element: E) {
        size += 1
        if head == nil {
            head = Node(element: element)
            return
        }
        
        var lastNode = head
        while lastNode?.next != nil {
            lastNode = lastNode?.next
        }
        
        lastNode?.next = Node(element: element)
    }

    func dequeue() -> E? {
        
        let element = head?.element
        head = head?.next
        size -= 1
        return element
    }
    
    func peek() -> E? {
        return head?.element
    }
    
    override var description: String {
        var headTmp = head
        var desc = ""
        
        while headTmp?.next != nil {
            desc += "[\(headTmp?.element.debugDescription ?? ""),"
            headTmp = headTmp?.next
        }
        
        desc += "\(headTmp?.element.debugDescription ?? "")]"
        
        return desc
    }
}

// Testing
let queue = Queue<Int>()
queue.enqueue(element: 1)
queue.enqueue(element: 2)
queue.enqueue(element: 3)
queue.size
queue.description

queue.dequeue()
queue.size
queue.peek()
queue.dequeue()
queue.size
queue.peek()
queue.enqueue(element: 4)
queue.size
queue.description

