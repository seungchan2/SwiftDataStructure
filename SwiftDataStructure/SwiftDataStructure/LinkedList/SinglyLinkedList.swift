//
//  LinkedList.swift
//  SwiftDataStructure
//
//  Created by MEGA_Mac on 2024/06/03.
//

import Foundation

/*
 MARK: @brief 연결리스트
 - 값을 가지고 있다.
 - 다음 노드의 참조정보를 가지고 있다. C에서 포인터 역할
 - 준비 단계 -> 추가, 삽입하기 -> 제거하기 순서로 진행
 
 - 참조 : O(n)
 - 탐색 : O(n)
 - 삽입 / 삭제 : O(1)
 */

// 노드 클래스 정의
class SinglyNode {
    var value: Int             // 노드의 데이터 값을 저장
    var next: SinglyNode?            // 다음 노드를 가리키는 포인터
    
    init(value: Int) {
        self.value = value
        self.next = nil
    }
}


extension SinglyNode: CustomStringConvertible {
    var description: String {
        guard let next else { 
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

// 연결 리스트 클래스 정의
class SinglyLinkedList {
    var head: SinglyNode?            // 리스트의 첫 번째 노드를 가리키는 포인터
    
    init() {
        self.head = nil
    }
    
    // 리스트의 끝에 노드를 추가하는 메서드
    func append(value: Int) {
        let newNode = SinglyNode(value: value)
        if let lastNode = getLastNode() {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    // 리스트의 첫 번째 노드를 삭제하는 메서드
    func deleteFirst() {
        if head != nil {
            head = head?.next
        }
    }
    
    // 리스트의 특정 값을 삭제하는 메서드
    func delete(value: Int) {
        var current = head
        var previous: SinglyNode?
        
        while current != nil {
            if current?.value == value {
                if let prev = previous {
                    prev.next = current?.next
                } else {
                    head = current?.next
                }
                return
            }
            previous = current
            current = current?.next
        }
    }
    
    // 리스트의 모든 노드를 출력하는 메서드
    func printList() {
        var current = head
        while current != nil {
            print(current!.value, terminator: " -> ")
            current = current?.next
        }
        print("nil")
    }
    
    // 리스트의 마지막 노드를 반환하는 메서드
    private func getLastNode() -> SinglyNode? {
        var lastNode = head
        while lastNode?.next != nil {
            lastNode = lastNode?.next
        }
        return lastNode
    }
}

