//
//  UserDefaults.swift
//  Tetris
//
//  Created by Juan Sancho García on 18/12/23.
//

import Foundation

class UserDefaultsManager {
    
    let defaults: UserDefaults
    
    init() {
        defaults = UserDefaults.standard
    }
    
    func setRecord(record: Int) {
        defaults.setValue(record, forKey: "record")
    }
    
    func getRecord() -> Int {
        return defaults.integer(forKey: "record")
    }
}
