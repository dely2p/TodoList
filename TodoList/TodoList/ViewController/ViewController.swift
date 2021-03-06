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
    var settingViewModel: SettingViewModel = SettingViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTableView()
        self.addSubViews()
        self.makeConstraints()
    }
    
    private func setTableView() {
        self.settingTableView = UITableView(frame: self.settingTableView.frame, style: .insetGrouped)
        self.settingTableView.delegate = self
        self.settingTableView.dataSource = self
        self.settingTableView.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.cellIdentifier)
        self.settingTableView.separatorInset = .init(top: 0, left: 5, bottom: 0, right: 5)
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

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.settingViewModel.countOfList()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = settingTableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.cellIdentifier) as? SettingTableViewCell else { return UITableViewCell() }
        let title = settingViewModel.info(indexPath.row)
        cell.bind(title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return settingViewModel.heightOfCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return settingViewModel.headerTitle
    }
}
