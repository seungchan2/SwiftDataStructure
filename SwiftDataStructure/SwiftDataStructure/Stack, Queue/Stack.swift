//
//  Stack.swift
//  SwiftDataStructure
//
//  Created by MEGA_Mac on 2024/06/03.
//

import Foundation

/*
 MARK: @brief 스택
 - 스택은 가장 마지막으로 들어간 데이터가 가장 첫 번째로 나오는 성질인 후입선출(LIFO, Last In First Out)을 가진 자료 구조
 - 재귀적인 함수, 알고리즘에 사용되며 웹 브라우저 방문 기록
 
 - n번째 참조 : O(n)
 - 가장 앞부분 참조 : O(1)
 - 탐색 : O(n)
 - 삽입 / 삭제(n번째 제외) : O(1)
 */

struct Stack<Element> {
    private var storage = Array<Element>()
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let top = "--top-- \n"
        let bottom = "\n ---"
        let stackElements = storage.map { i in "\(i)"}
            .reversed()
            .joined(separator: "\n")
        
        return top + stackElements + bottom
    }
}
