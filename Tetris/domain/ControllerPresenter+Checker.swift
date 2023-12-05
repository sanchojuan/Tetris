//
//  ControllerPresenter+Checker.swift
//  Tetris
//
//  Created by Juan Sancho García on 25/11/23.
//

import Foundation

extension ControllerPresenter {
    
    func checkGameOverNewPiece(piece: Piece) {
        switch(piece) {
        case Piece.hero:
            if  screenMatrix[0][3] == 1 ||
                screenMatrix[0][4] == 1 ||
                screenMatrix[0][5] == 1 ||
                screenMatrix[0][6] == 1 {
                gameOver = true
            }
            break
        case Piece.teewee:
            if  screenMatrix[0][5] == 1 ||
                screenMatrix[1][4] == 1 ||
                screenMatrix[1][5] == 1 ||
                screenMatrix[1][6] == 1 {
                gameOver = true
            }
            break
        case Piece.smashboy:
            if  screenMatrix[0][4] == 1 ||
                screenMatrix[0][5] == 1 ||
                screenMatrix[1][4] == 1 ||
                screenMatrix[1][5] == 1 {
                gameOver = true
            }
            break
        case Piece.orangeRicky:
            if  screenMatrix[0][6] == 1 ||
                screenMatrix[1][4] == 1 ||
                screenMatrix[1][5] == 1 ||
                screenMatrix[1][6] == 1 {
                gameOver = true
            }
            break
        case Piece.blueRicky:
            if  screenMatrix[0][4] == 1 ||
                screenMatrix[1][4] == 1 ||
                screenMatrix[1][5] == 1 ||
                screenMatrix[1][6] == 1 {
                gameOver = true
            }
            break
        case Piece.clevelandZ:
            if  screenMatrix[0][4] == 1 ||
                screenMatrix[0][5] == 1 ||
                screenMatrix[1][5] == 1 ||
                screenMatrix[1][6] == 1 {
                gameOver = true
            }
            break
        case Piece.rhodeIslandZ:
            if  screenMatrix[0][5] == 1 ||
                screenMatrix[0][6] == 1 ||
                screenMatrix[1][4] == 1 ||
                screenMatrix[1][5] == 1 {
                gameOver = true
            }
            break
        }
    }
    
    func canGoDown() -> Bool {
        var allow = true
        currentPiecePosition.enumerated().forEach { (index, item) in
            let currentR = item[0]
            let currentC = item[1]
            
            if (currentR + 1) < 16 {
                if screenMatrix[currentR + 1][currentC] == 0 {}
                else {
                    if !currentPiecePosition.contains([currentR + 1,currentC]) {
                        allow = false
                        return
                    }
                }
            }
            else {
                allow = false
                return
            }
        }
        return allow
    }
    
    func pieceCanRotate(type: Piece, position: [[Int]]) -> Bool {
        var allow = true
        position.enumerated().forEach { (index, item) in
            let currentR = item[0]
            let currentC = item[1]
            
            //MARK: Check if it's out of range
            if  currentR < 0 || currentR > 15 ||
                currentC < 0 || currentC > 9 {
                allow = false
                return
            }
            
            //MARK: Check if don't collapse with other pieces
            if screenMatrix[currentR][currentC] == 1 {
                if !currentPiecePosition.contains([currentR, currentC]) {
                    allow = false
                    return
                }
            }
        }
        return allow
    }
}
