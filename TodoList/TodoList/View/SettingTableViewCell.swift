//
//  SettingTableViewCell.swift
//  TodoList
//
//  Created by dely on 2021/04/08.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    static let cellIdentifier: String = "setting_tableview_cell"
    var titleLabel: UILabel = UILabel().then {
        $0.textColor = .black
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubviews()
        self.makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(_ title: String) {
        self.titleLabel.text = title
    }
    
    private func addSubviews() {
        self.addSubview(titleLabel)
    }
    
    private func makeConstraints() {
        self.titleLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
        }
    }
}
