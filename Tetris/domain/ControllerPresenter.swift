//
//  ControllerPresenter.swift
//  Tetris
//
//  Created by Juan Sancho García on 24/11/23.
//

import Foundation

class ControllerPresenter {
    
    let controller: ViewController
    
    var timer: Timer?
    var gameOver = false
    
    var screenMatrix =
        [
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        ]
    
    init(controller: ViewController) {
        self.controller = controller
    }
    
    func startGame() {
        self.gameOver = false
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.resetMatrix()
            self.generatePiece()
        })
    }
    
    func drawNewPiece(piece: Piece) {
        checkGameOverNewPiece(piece: piece)
        if !gameOver {
            switch(piece) {
            case Piece.hero:
                changeMatrix(i: 0, j: 3, value: 1)
                changeMatrix(i: 0, j: 4, value: 1)
                changeMatrix(i: 0, j: 5, value: 1)
                changeMatrix(i: 0, j: 6, value: 1)
                break
            case Piece.teewee:
                changeMatrix(i: 0, j: 5, value: 1)
                changeMatrix(i: 1, j: 4, value: 1)
                changeMatrix(i: 1, j: 5, value: 1)
                changeMatrix(i: 1, j: 6, value: 1)
                break
            case Piece.smashboy:
                changeMatrix(i: 0, j: 4, value: 1)
                changeMatrix(i: 0, j: 5, value: 1)
                changeMatrix(i: 1, j: 4, value: 1)
                changeMatrix(i: 1, j: 5, value: 1)
                break
            case Piece.orangeRicky:
                changeMatrix(i: 0, j: 6, value: 1)
                changeMatrix(i: 1, j: 4, value: 1)
                changeMatrix(i: 1, j: 5, value: 1)
                changeMatrix(i: 1, j: 6, value: 1)
                break
            case Piece.blueRicky:
                changeMatrix(i: 0, j: 4, value: 1)
                changeMatrix(i: 1, j: 4, value: 1)
                changeMatrix(i: 1, j: 5, value: 1)
                changeMatrix(i: 1, j: 6, value: 1)
                break
            case Piece.clevelandZ:
                changeMatrix(i: 0, j: 4, value: 1)
                changeMatrix(i: 0, j: 5, value: 1)
                changeMatrix(i: 1, j: 5, value: 1)
                changeMatrix(i: 1, j: 6, value: 1)
                break
            case Piece.rhodeIslandZ:
                changeMatrix(i: 0, j: 5, value: 1)
                changeMatrix(i: 0, j: 6, value: 1)
                changeMatrix(i: 1, j: 4, value: 1)
                changeMatrix(i: 1, j: 5, value: 1)
                break
            }
        }
    }
    
    private func changeMatrix(i: Int, j: Int, value: Int) {
        screenMatrix[i][j] = value
        
        var boolValue = false
        if value == 1 { boolValue = true }
        
        controller.drawCell(cell: "\(i)\(j)", fill: boolValue)
    }
    
    private func resetMatrix() {
        for (index, row) in screenMatrix.enumerated() {
            for (subindex, _) in row.enumerated() {
                changeMatrix(i: index, j: subindex, value: 0)
            }
        }
    }
}
