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
    var timerPiece: Timer?
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
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        ]
    
    var currentPiecePosition: [[Int]] = [[]]
    var currentPieceType: Piece?
    var currentPieceRotation: Int = 0
    
    init(controller: ViewController) {
        self.controller = controller
    }
    
    func startGame() {
        self.gameOver = false
        self.generatePiece()
    }
    
    func drawNewPiece(piece: Piece) {
        currentPieceType = piece
        checkGameOverNewPiece(piece: piece)
        if !gameOver {
            var position = [[-1,-1], [-1,-1], [-1,-1], [-1,-1]]
            switch(piece) {
            case Piece.hero:
                changeMatrix(r: 0, c: 3, value: 1)
                changeMatrix(r: 0, c: 4, value: 1)
                changeMatrix(r: 0, c: 5, value: 1)
                changeMatrix(r: 0, c: 6, value: 1)
                position = [[0,3], [0,4], [0,5], [0,6]]
                break
            case Piece.teewee:
                changeMatrix(r: 0, c: 5, value: 1)
                changeMatrix(r: 1, c: 4, value: 1)
                changeMatrix(r: 1, c: 5, value: 1)
                changeMatrix(r: 1, c: 6, value: 1)
                position = [[0,5], [1,4], [1,5], [1,6]]
                break
            case Piece.smashboy:
                changeMatrix(r: 0, c: 4, value: 1)
                changeMatrix(r: 0, c: 5, value: 1)
                changeMatrix(r: 1, c: 4, value: 1)
                changeMatrix(r: 1, c: 5, value: 1)
                position = [[0,4], [0,5], [1,4], [1,5]]
                break
            case Piece.orangeRicky:
                changeMatrix(r: 0, c: 6, value: 1)
                changeMatrix(r: 1, c: 4, value: 1)
                changeMatrix(r: 1, c: 5, value: 1)
                changeMatrix(r: 1, c: 6, value: 1)
                position = [[0,6], [1,4], [1,5], [1,6]]
                break
            case Piece.blueRicky:
                changeMatrix(r: 0, c: 4, value: 1)
                changeMatrix(r: 1, c: 4, value: 1)
                changeMatrix(r: 1, c: 5, value: 1)
                changeMatrix(r: 1, c: 6, value: 1)
                position = [[0,4], [1,4], [1,5], [1,6]]
                break
            case Piece.clevelandZ:
                changeMatrix(r: 0, c: 4, value: 1)
                changeMatrix(r: 0, c: 5, value: 1)
                changeMatrix(r: 1, c: 5, value: 1)
                changeMatrix(r: 1, c: 6, value: 1)
                position = [[0,4], [0,5], [1,5], [1,6]]
                break
            case Piece.rhodeIslandZ:
                changeMatrix(r: 0, c: 5, value: 1)
                changeMatrix(r: 0, c: 6, value: 1)
                changeMatrix(r: 1, c: 4, value: 1)
                changeMatrix(r: 1, c: 5, value: 1)
                position = [[0,5], [0,6], [1,4], [1,5]]
                break
            }
            self.currentPiecePosition = position
            dropdownPiece()
        }
        else {
            print("Game over")
            timerPiece?.invalidate()
            timerPiece = nil
        }
    }
    
    func changeMatrix(r: Int, c: Int, value: Int) {
        screenMatrix[r][c] = value
        
        var boolValue = false
        if value == 1 { boolValue = true }
        
        controller.drawCell(cell: "\(r)\(c)", fill: boolValue, type: currentPieceType!)
    }
    
    func changeMultipleMatrix(values: [(r:Int, c:Int, value:Int)]) {
        for value in values {
            changeMatrix(r: value.r, c: value.c, value: value.value)
        }
    }
    
    private func resetMatrix() {
        for (index, row) in screenMatrix.enumerated() {
            for (subindex, _) in row.enumerated() {
                changeMatrix(r: index, c: subindex, value: 0)
            }
        }
    }
    
    private func dropdownPiece() {
        if timerPiece == nil {
            timerPiece = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                if self.canGoDown() {
                    self.moveDown()
                }
                else {
                    print("Can't go down")
                    if !self.gameOver {
                        self.generatePiece()
                    }
                    else {
                        self.timerPiece?.invalidate()
                        self.timerPiece = nil
                    }
                }
            }
        
        }
    }
}
