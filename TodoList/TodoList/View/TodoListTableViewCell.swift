//
//  TodoListTableViewCell.swift
//  TodoList
//
//  Created by dely on 2021/04/11.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {
    var checkButton: UIButton = UIButton().then {
        $0.setImage(UIImage(named: ""), for: .normal)
    }
    var descriptionLabel: UILabel = UILabel().then {
        $0.textColor = .black
    }
    var deleteButton: UIButton = UIButton().then {
        $0.setImage(UIImage(named: ""), for: .normal)
    }
    var strikeThroughView: UIView = UIView().then {
        $0.backgroundColor = .gray
    }
}
