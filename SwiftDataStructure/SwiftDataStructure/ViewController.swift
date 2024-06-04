//
//  ViewController.swift
//  SwiftDataStructure
//
//  Created by MEGA_Mac on 2024/06/03.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.actionQueueArray()
    }
    
    // 연결 리스트 사용 예제
    private func actionSinglyLinkedList() {
        let list = SinglyLinkedList()
        list.append(value: 1)
        list.append(value: 2)
        list.append(value: 3)
        list.printList()        // 출력: 1 -> 2 -> 3 -> nil

        list.deleteFirst()
        list.printList()        // 출력: 2 -> 3 -> nil

        list.delete(value: 3)
        list.printList()        // 출력: 2 -> nil

    }
    
    // 이중 연결 리스트 사용 예제
    private func actionDoublyLinkedList() {
        let list = DoublyLinkedList()
        list.append(value: 1)
        list.append(value: 2)
        list.append(value: 3)
        list.printList()        // 출력: 1 <-> 2 <-> 3 <-> nil

        list.deleteFirst()
        list.printList()        // 출력: 2 <-> 3 <-> nil

        list.deleteLast()
        list.printList()        // 출력: 2 <-> nil

        list.delete(value: 2)
        list.printList()        // 출력: nil
    }
    
    // 원형 연결 리스트 사용
    private func actionCircularLinkedList() {
        let list = CircularLinkedList()
        list.append(value: 1)
        list.append(value: 2)
        list.append(value: 3)
        list.printList()        // 출력: 1 <-> 2 <-> 3 <-> nil

        list.deleteFirst()
        list.printList()        // 출력: 2 <-> 3 <-> nil

        list.deleteLast()
        list.printList()        // 출력: 2 <-> nil

        list.delete(value: 2)
        list.printList()        // 출력: nil
    }
    
    private func actionStack() {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        print(stack)
    }
    
    private func actionQueueArray() {
        var queueArray = QueueArray<Int>()
        queueArray.enQueue(1)
        queueArray.enQueue(2)
        queueArray.enQueue(3)
        print(queueArray)
        queueArray.deQueue()
        print(queueArray)
    }
}

