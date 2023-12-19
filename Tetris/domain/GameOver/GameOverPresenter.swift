//
//  GameOverPresenter.swift
//  Tetris
//
//  Created by Juan Sancho García on 18/12/23.
//

import Foundation

class GameOverPresenter {
    
    func getRecord() -> Int{
        return UserDefaultsManager().getRecord()
    }
    
    func saveNewRecord(record: Int) {
        UserDefaultsManager().setRecord(record: record)
    }
}
