//
//  ViewController.swift
//  SwiftDataStructure
//
//  Created by MEGA_Mac on 2024/06/03.
//

import UIKit

class ViewController: UIViewController {
    
    private var tree: BinaryNode<Int> = {
        let zero = BinaryNode(value: 0)
        let one = BinaryNode(value: 1)
        let five = BinaryNode(value: 5)
        let seven = BinaryNode(value: 7)
        let eight = BinaryNode(value: 8)
        let nine = BinaryNode(value: 9)
        
        seven.leftChild = one
        one.leftChild = zero
        one.rightChild = five
        seven.rightChild = nine
        nine.leftChild = eight
        
        return seven
    }()
    
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
        queueArray.enqueue(1)
        queueArray.enqueue(2)
        queueArray.enqueue(3)
        print(queueArray)
        queueArray.dequeue()
        print(queueArray)
    }
    
    private func actionTrees() {
        let beverages = TreeNode("Beverages")
        
        let hot = TreeNode("Hot")
        let cold = TreeNode("Cold")
        
        beverages.add(hot)
        beverages.add(cold)
    }
    
    private func makeBeverageTree() -> TreeNode<String> {
        let tree = TreeNode("Beverages")
        
        let hot = TreeNode("hot")
        let cold = TreeNode("cold")
        
        let tea = TreeNode("tea")
        let coffee = TreeNode("coffee")
        let chocolate = TreeNode("cocoa")
        
        let blackTea = TreeNode("black")
        let greenTea = TreeNode("green")
        let chaiTea = TreeNode("chai")
        
        let soda = TreeNode("soda")
        let milk = TreeNode("milk")
        
        let gingerAle = TreeNode("ginger ale")
        let bitterLemon = TreeNode("bitter lemon")
        
        tree.add(hot)
        tree.add(cold)
        
        hot.add(tea)
        hot.add(coffee)
        hot.add(chocolate)
        
        cold.add(soda)
        cold.add(milk)
        
        tea.add(blackTea)
        tea.add(greenTea)
        tea.add(chaiTea)
        
        soda.add(gingerAle)
        soda.add(bitterLemon)
        
        return tree
    }
    
    private func actionMakeBeverageTrees() {
        let tree = makeBeverageTree()
        tree.forEachDepthFirst { print($0.value) }
    }
    
    private func actionTreeLevelOrder() {
        let tree = makeBeverageTree()
        tree.forEachLevelOrder { print($0.value) }
    }
}

