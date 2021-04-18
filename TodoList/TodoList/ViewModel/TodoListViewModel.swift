//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by dely on 2021/04/18.
//

import Foundation

class TodoListViewModel {
    enum Section: Int, CaseIterable {
        case today
        case upcomming
        
        var title: String {
            switch self {
            case .today:
                return "Today"
            default:
                return "Upcomming"
            }
        }
    }
    
    private let manager = TodoManager.shared
    
    var todos: [Todo] {
        return manager.todos
    }
    
    var todayTodos: [Todo] {
        return todos.filter { $0.isToday == true }
    }
    
    var upcommingTodos: [Todo] {
        return todos.filter { $0.isToday == false }
    }
    
    var numOfSection: Int {
        return Section.allCases.count
    }
    
    func addTodo(_ todo: Todo) {
        manager.addTodo(todo)
    }
    
    func deleteTodo(_ todo: Todo) {
        manager.deleteTodo(todo)
    }
    
    func updateTodo(_ todo: Todo) {
        manager.updateTodo(todo)
    }
    
    func loadTasks(_ todo: Todo) {
        manager.retrieveTodo(todos)
    }
}
