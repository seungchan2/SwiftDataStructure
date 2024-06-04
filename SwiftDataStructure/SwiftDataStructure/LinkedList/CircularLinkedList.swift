//
//  CircularLinkedList.swift
//  SwiftDataStructure
//
//  Created by MEGA_Mac on 2024/06/03.
//

import Foundation

class CircularLinkedList {
    var head: SinglyNode?
    var tail: SinglyNode?
    
    init() {
        self.head = nil
        self.tail = nil
    }
    
    // 리스트의 끝에 노드를 추가하는 메서드
    func append(value: Int) {
        let newNode = SinglyNode(value: value)
        if let tailNode = tail {
            tailNode.next = newNode
            newNode.next = head
            tail = newNode
        } else {
            head = newNode
            tail = newNode
            newNode.next = newNode
        }
    }
    
    // 리스트의 첫 번째 노드를 삭제하는 메서드
    func deleteFirst() {
        if let headNode = head {
            if headNode.next === headNode {
                head = nil
                tail = nil
            } else {
                head = headNode.next
                tail?.next = head
            }
        }
    }
    
    // 리스트의 마지막 노드를 삭제하는 메서드
    func deleteLast() {
        if let tailNode = tail {
            if head === tail {
                head = nil
                tail = nil
            } else {
                var current = head
                while current?.next !== tailNode {
                    current = current?.next
                }
                current?.next = head
                tail = current
            }
        }
    }
    
    // 리스트의 특정 값을 가진 첫 번째 노드를 삭제하는 메서드
    func delete(value: Int) {
        var current = head
        var previous: SinglyNode?
        
        repeat {
            if current?.value == value {
                if current === head {
                    deleteFirst()
                } else if current === tail {
                    deleteLast()
                } else {
                    previous?.next = current?.next
                }
                return
            }
            previous = current
            current = current?.next
        } while current !== head
    }
    
    // 리스트의 모든 노드를 출력하는 메서드
    func printList() {
        var current = head
        repeat {
            if let node = current {
                print(node.value, terminator: " -> ")
                current = node.next
            }
        } while current !== head && current != nil
        print("HEAD")
    }
}
