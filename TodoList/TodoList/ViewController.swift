//
//  ViewController.swift
//  TodoList
//
//  Created by dely on 2021/04/04.
//

import UIKit

import SnapKit
import Then

class ViewController: UIViewController {

    var settingTableView: UITableView = UITableView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.settingTableView = UITableView(frame: self.settingTableView.frame, style: .insetGrouped)
        
        self.addSubViews()
        self.makeConstraints()
    }
    
    private func addSubViews() {
        self.view.addSubview(settingTableView)
    }

    private func makeConstraints() {
        self.settingTableView.snp.makeConstraints {
            $0.top.leading.trailing.bottom.equalToSuperview()
        }
    }
}

