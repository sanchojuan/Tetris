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
}
