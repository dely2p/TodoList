//
//  TodoListViewController.swift
//  TodoList
//
//  Created by dely on 2021/04/11.
//

import UIKit

class TodoListViewController: UIViewController {

    var todoListTableView: UITableView = UITableView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.todoListTableView.delegate = self
        self.todoListTableView.dataSource = self
        self.todoListTableView.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.cellIdentifier)
        self.todoListTableView.separatorInset = .init(top: 0, left: 5, bottom: 0, right: 5)
    }
}

extension TodoListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
