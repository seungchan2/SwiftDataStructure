//
//  DoublyLinkedList.swift
//  SwiftDataStructure
//
//  Created by MEGA_Mac on 2024/06/03.
//

import Foundation

class DoublyNode {
    var value: Int
    var next: DoublyNode?
    var prev: DoublyNode?
    
    init(value: Int,
         next: DoublyNode? = nil,
         prev: DoublyNode? = nil) {
        self.value = value
        self.next = next
        self.prev = prev
    }
}

class DoublyLinkedList {
    var head: DoublyNode?
    var tail: DoublyNode?
    
    init() {
        self.head = nil
        self.tail = nil
    }
    
    // 리스트의 끝에 노드를 추가하는 메서드
    func append(value: Int) {
        let newNode = DoublyNode(value: value)
        if let lastNode = tail {
            lastNode.next = newNode
            newNode.prev = lastNode
            tail = newNode
        } else {
            head = newNode
            tail = newNode
        }
    }
    
    // 리스트의 첫 번째 노드를 삭제하는 메서드
    func deleteFirst() {
        if let firstNode = head {
            head = firstNode.next
            head?.prev = nil
            if head == nil {
                tail = nil
            }
        }
    }
    
    // 리스트의 마지막 노드를 삭제하는 메서드
    func deleteLast() {
        if let lastNode = tail {
            tail = lastNode.prev
            tail?.next = nil
            if tail == nil {
                head = nil
            }
        }
    }
    
    // 리스트의 특정 값을 가진 첫 번째 노드를 삭제하는 메서드
    func delete(value: Int) {
        var current = head
        
        while current != nil {
            if current?.value == value {
                let prevNode = current?.prev
                let nextNode = current?.next
                
                if let prevNode = prevNode {
                    prevNode.next = nextNode
                } else {
                    head = nextNode
                }
                
                if let nextNode = nextNode {
                    nextNode.prev = prevNode
                } else {
                    tail = prevNode
                }
                
                return
            }
            current = current?.next
        }
    }
    
    // 리스트의 모든 노드를 출력하는 메서드
    func printList() {
        var current = head
        while current != nil {
            print(current!.value, terminator: " <-> ")
            current = current?.next
        }
        print("nil")
    }
}
