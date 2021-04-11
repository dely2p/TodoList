//
//  SettingViewModel.swift
//  TodoList
//
//  Created by dely on 2021/04/09.
//

import UIKit

class SettingViewModel {
    private var listOfSetting: [String] = ["Support", "About", "Version"]
    var headerTitle: String = "dely2p"
    var heightOfCell: CGFloat = 80
    
    func countOfList() -> Int {
        return self.listOfSetting.count
    }
    
    func info(_ index: Int) -> String {
        return listOfSetting[index]
    }
}
