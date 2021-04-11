//
//  Todo.swift
//  TodoList
//
//  Created by dely on 2021/04/11.
//

import Foundation

struct Todo: Codable, Equatable {
    let id: Int
    var isDone: Bool
    var detail: String
    var isToday: Bool
    
    mutating func update(isDone: Bool, detail: String, isToday: Bool) {
        
    }
}
