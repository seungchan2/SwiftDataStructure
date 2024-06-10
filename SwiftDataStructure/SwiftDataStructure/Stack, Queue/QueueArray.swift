//
//  Queue.swift
//  SwiftDataStructure
//
//  Created by MEGA_Mac on 2024/06/03.
//

import Foundation
/*
 MARK: @brief 큐
 - 선입선출(FIFO, First In First Out)을 지닌 자료 구조
 - 나중에 집어넣은 데이터가 먼저 나오는 스택과는 반대되는 개념
 - CPU 작업을 기다리는 프로세스, 스레드 행렬 또는 네트워크 접속을 기다리는 행렬, 너비우선 탐색, 캐시
 
 - n번째 참조 : O(n)
 - 가장 앞부분 참조 : O(1)
 - 탐색 : O(n)
 - 삽입 / 삭제(n번째 제외) : O(1)
 */

protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

struct QueueArray<T>: Queue {
    private var array = Array<T>()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var peek: T? {
        return array.first
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    var description: String {
        return String(describing: array)
    }
}
