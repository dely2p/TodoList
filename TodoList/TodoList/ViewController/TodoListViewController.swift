//
//  TodoListViewController.swift
//  TodoList
//
//  Created by dely on 2021/04/11.
//

import UIKit

class TodoListViewController: UIViewController {

    var todoListTableView: UITableView = UITableView(frame: .zero)
    let todoListViewModel = TodoListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.todoListTableView.delegate = self
        self.todoListTableView.dataSource = self
        self.todoListTableView.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.cellIdentifier)
        self.todoListTableView.separatorInset = .init(top: 0, left: 5, bottom: 0, right: 5)
        
        self.todoListViewModel.loadTasks()
    }
}

extension TodoListViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return todoListViewModel.numberOfSection
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return todoListViewModel.todayTodos.count
        }else {
            return todoListViewModel.upcommingTodos.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TodoListCell") as? TodoListTableViewCell else { return UITableViewCell() }
        var todo: Todo?
        if indexPath.section == 0 {
            todo = todoListViewModel.todayTodos[indexPath.row]
        }else {
            todo = todoListViewModel.upcommingTodos[indexPath.row]
        }
        return UITableViewCell()
    }
}
