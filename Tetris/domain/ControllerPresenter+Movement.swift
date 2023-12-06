//
//  ControllerPresenter+Movement.swift
//  Tetris
//
//  Created by Juan Sancho García on 6/12/23.
//

import Foundation

extension ControllerPresenter {
    
    func moveLeft() {
        if canMoveLeft() {
            var newPiecePosition : [[Int]] = []
            currentPiecePosition.enumerated().forEach { (_, item) in
                self.changeMatrix(r: item[0], c: item[1] - 1, value: 1)
                newPiecePosition.append([item[0], item[1] - 1])
            }
            //Clear old unused positions
            for item in self.currentPiecePosition {
                if !newPiecePosition.contains(item) {
                    self.changeMatrix(r: item[0], c: item[1], value: 0)
                }
            }
            self.currentPiecePosition = newPiecePosition
        }
    }
    
    func moveRight() {
        if canMoveRight() {
            var newPiecePosition : [[Int]] = []
            currentPiecePosition.enumerated().forEach { (_, item) in
                self.changeMatrix(r: item[0], c: item[1] + 1, value: 1)
                newPiecePosition.append([item[0], item[1] + 1])
            }
            //Clear old unused positions
            for item in self.currentPiecePosition {
                if !newPiecePosition.contains(item) {
                    self.changeMatrix(r: item[0], c: item[1], value: 0)
                }
            }
            self.currentPiecePosition = newPiecePosition
        }
    }
    
    func moveUp() {
        while canGoDown() {
            goDown()
        }
    }
    
    func moveDown() {
        if canGoDown() {
            goDown()
        }
    }
    
    func goDown() {
        var newPiecePosition : [[Int]] = []
        self.currentPiecePosition.enumerated().forEach { (_, item) in
            self.changeMatrix(r: item[0] + 1, c: item[1], value: 1)
            newPiecePosition.append([item[0] + 1, item[1]])
        }
        //Clear old unused positions
        for item in self.currentPiecePosition {
            if !newPiecePosition.contains(item) {
                self.changeMatrix(r: item[0], c: item[1], value: 0)
            }
        }
        self.currentPiecePosition = newPiecePosition
    }
}
