//
//  ControllerPresenter.swift
//  Tetris
//
//  Created by Juan Sancho García on 24/11/23.
//

import Foundation
import UIKit

class ControllerPresenter {
    
    let controller: ViewController
    
    var timer: Timer?
    var timerPiece: Timer?
    var gameOver = false
    
    var hasPreview = false
    var previewPieceType: Piece?
    
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
    
    var level: Int = 1
    var lines: Int = 0
    var speed: Double = 1
    
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
            controller.showGameOver()
        }
    }
    
    func changeMatrix(r: Int, c: Int, value: Int, inheritColor: Bool = false) {
        screenMatrix[r][c] = value
        
        var color : UIColor  =  .white
        
        if inheritColor {
            let name = "cell\(r-1)\(c)"
            if let cell = controller.value(forKey: name) as? UIView {
                color = cell.backgroundColor ?? .white
            }
        }
        else if value == 1 {
            switch(currentPieceType){
            case .hero:
                color = .systemRed
                break
            case .teewee:
                color = .systemBlue
                break
            case .smashboy:
                color = .systemPink
                break
            case .orangeRicky:
                color = .systemYellow
                break
            case .blueRicky:
                color = .systemGreen
                break
            case .clevelandZ:
                color = .systemOrange
                break
            case .rhodeIslandZ:
                color = .systemPurple
                break
            case .none:
                color = .white
                break
            }
        }
        
        controller.drawCell(cell: "\(r)\(c)", color: color)
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
            timerPiece = Timer.scheduledTimer(withTimeInterval: speed, repeats: true) { timer in
                if self.canGoDown() {
                    self.moveDown()
                }
                else {
                    print("Can't go down")
                    if !self.gameOver {
                        self.checkFullLines()
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
    
    func removeCompleteRows(rows: [Int]) {
        for row in rows {
            for c in 0...9 {
                changeMatrix(r: row, c: c, value: 0)
            }
            dropdownMatrix(row: row)
        }
    }
    
    func dropdownMatrix(row: Int) {
        //MARK: Clean completed row
        for c in 0...9 {
            changeMatrix(r: row, c: c, value: 0)
        }
        //Dropdown every single block one row
        var currentRow = row
        while currentRow > 0 {
            for c in 0...9 {
                if screenMatrix[currentRow - 1][c] == 1 {
                    changeMatrix(r: currentRow, c: c, value: 1, inheritColor: true)
                }
                else {
                    changeMatrix(r: currentRow, c: c, value: 0)
                }
            }
            currentRow -= 1
        }
        
    }
    
    func updateLevel(lines: Int) {
        self.lines += lines
        if self.lines > 4 {
            self.level  += self.lines / 5
            self.lines = self.lines % 5
        }
        controller.setLevel(level: self.level, lines: self.lines)
    }
    
    func updateSpeed() {
        let newSpeed = 1.0/Double(self.level)
        if newSpeed != self.speed {
            self.speed = newSpeed
            self.timerPiece?.invalidate()
            self.timerPiece = nil
            dropdownPiece()
        }
    }
}
