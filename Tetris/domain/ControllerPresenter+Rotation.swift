//
//  ControllerPresenter+Rotation.swift
//  Tetris
//
//  Created by Juan Sancho García on 4/12/23.
//

import Foundation

extension ControllerPresenter {
    func rotate() {
        if !gameOver {
            switch currentPieceType! {
            case Piece.hero:
                rotateHero()
                break
            case Piece.clevelandZ:
                rotateClevelandZ()
                break
            case Piece.rhodeIslandZ:
                rotateRhodeIslandZ()
            case Piece.orangeRicky:
                rotateOrangeRicky()
                break
            case Piece.blueRicky:
                rotateBlueRicky()
                break
            default:
                break
            }
        }
        else { print("Game is over") }
    }
    
    private func tryRotation(newPosition: [[Int]], changes: [(r:Int, c:Int, value:Int)]) {
        if pieceCanRotate(type: currentPieceType!, position: newPosition) {
            changeMultipleMatrix(values: changes)
            currentPiecePosition = newPosition
            
            if currentPieceType == Piece.hero ||
                currentPieceType == Piece.clevelandZ ||
                currentPieceType == Piece.rhodeIslandZ {
                
                if currentPieceRotation == 0 { currentPieceRotation = 90 }
                else { currentPieceRotation = 0 }
            }
            else if currentPieceType == Piece.orangeRicky ||
                    currentPieceType == Piece.blueRicky {
                
                if currentPieceRotation == 0 { currentPieceRotation = -90 }
                else if currentPieceRotation == -90 { currentPieceRotation = -180 }
                else if currentPieceRotation == -180 { currentPieceRotation = -270 }
                else { currentPieceRotation = 0 }
            }
        }
        else {
            print("Piece ran't rotate without errors")
        }
    }
    
    func rotateHero() {
        var newPosition = currentPiecePosition
        var changes: [(r:Int, c:Int, value:Int)] = []
        
        if currentPieceRotation == 0 {
            newPosition[0][0] += 2
            newPosition[0][1] += 2
            newPosition[1][0] += 1
            newPosition[1][1] += 1
            newPosition[3][0] -= 1
            newPosition[3][1] -= 1
        }
        else if currentPieceRotation == 90 {
            newPosition[0][0] -= 2
            newPosition[0][1] -= 2
            newPosition[1][0] -= 1
            newPosition[1][1] -= 1
            newPosition[3][0] += 1
            newPosition[3][1] += 1
        }
        changes.append((currentPiecePosition[0][0], currentPiecePosition[0][1], 0))
        changes.append((currentPiecePosition[1][0], currentPiecePosition[1][1], 0))
        changes.append((currentPiecePosition[3][0], currentPiecePosition[3][1], 0))
        changes.append((newPosition[0][0], newPosition[0][1], 1))
        changes.append((newPosition[1][0], newPosition[1][1], 1))
        changes.append((newPosition[3][0], newPosition[3][1], 1))
        
        tryRotation(newPosition: newPosition, changes: changes)
    }
    
    func rotateClevelandZ() {
        var newPosition = currentPiecePosition
        var changes: [(r:Int, c:Int, value:Int)] = []
        
        if currentPieceRotation == 0 {
            newPosition[0][1] += 1
            newPosition[1][0] += 1
            newPosition[2][1] -= 1
            newPosition[3][0] += 1
            newPosition[3][1] -= 2
        }
        else if currentPieceRotation == 90 {
            newPosition[0][1] -= 1
            newPosition[1][0] -= 1
            newPosition[2][1] += 1
            newPosition[3][0] -= 1
            newPosition[3][1] += 2
        }
        changes.append((currentPiecePosition[0][0], currentPiecePosition[0][1], 0))
        changes.append((currentPiecePosition[1][0], currentPiecePosition[1][1], 0))
        changes.append((currentPiecePosition[2][0], currentPiecePosition[2][1], 0))
        changes.append((currentPiecePosition[3][0], currentPiecePosition[3][1], 0))
        changes.append((newPosition[0][0], newPosition[0][1], 1))
        changes.append((newPosition[1][0], newPosition[1][1], 1))
        changes.append((newPosition[2][0], newPosition[2][1], 1))
        changes.append((newPosition[3][0], newPosition[3][1], 1))
        
        tryRotation(newPosition: newPosition, changes: changes)
    }
    
    func rotateRhodeIslandZ() {
        var newPosition = currentPiecePosition
        var changes: [(r:Int, c:Int, value:Int)] = []
        
        if currentPieceRotation == 0 {
            newPosition[0][0] += 1
            newPosition[1][0] += 2
            newPosition[1][1] -= 1
            newPosition[2][0] -= 1
            newPosition[3][1] -= 1
        }
        else if currentPieceRotation == 90 {
            newPosition[0][0] -= 1
            newPosition[1][0] -= 2
            newPosition[1][1] += 1
            newPosition[2][0] += 1
            newPosition[3][1] += 1
        }
        changes.append((currentPiecePosition[0][0], currentPiecePosition[0][1], 0))
        changes.append((currentPiecePosition[1][0], currentPiecePosition[1][1], 0))
        changes.append((currentPiecePosition[2][0], currentPiecePosition[2][1], 0))
        changes.append((currentPiecePosition[3][0], currentPiecePosition[3][1], 0))
        changes.append((newPosition[0][0], newPosition[0][1], 1))
        changes.append((newPosition[1][0], newPosition[1][1], 1))
        changes.append((newPosition[2][0], newPosition[2][1], 1))
        changes.append((newPosition[3][0], newPosition[3][1], 1))
        
        tryRotation(newPosition: newPosition, changes: changes)
    }
    
    func rotateOrangeRicky() {
        var newPosition = currentPiecePosition
        var changes: [(r:Int, c:Int, value:Int)] = []
        
        if currentPieceRotation == 0 {
            newPosition[0][1] -= 1
            newPosition[1][0] += 1
            newPosition[1][1] += 2
            newPosition[2][1] += 1
            newPosition[3][0] -= 1
        }
        else if currentPieceRotation == -90 {
            newPosition[0][0] += 1
            newPosition[0][1] -= 1
            newPosition[1][0] -= 2
            newPosition[2][0] -= 1
            newPosition[2][1] -= 1
            newPosition[3][1] -= 2
        }
        else if currentPieceRotation == -180 {
            newPosition[0][0] += 1
            newPosition[0][1] += 1
            newPosition[1][1] -= 2
            newPosition[2][0] += 1
            newPosition[2][1] -= 1
            newPosition[3][0] += 2
        }
        else if currentPieceRotation == -270 {
            newPosition[0][0] -= 2
            newPosition[0][1] += 1
            newPosition[1][0] += 1
            newPosition[2][1] += 1
            newPosition[3][0] -= 1
            newPosition[3][1] += 2
        }
        changes.append((currentPiecePosition[0][0], currentPiecePosition[0][1], 0))
        changes.append((currentPiecePosition[1][0], currentPiecePosition[1][1], 0))
        changes.append((currentPiecePosition[2][0], currentPiecePosition[2][1], 0))
        changes.append((currentPiecePosition[3][0], currentPiecePosition[3][1], 0))
        changes.append((newPosition[0][0], newPosition[0][1], 1))
        changes.append((newPosition[1][0], newPosition[1][1], 1))
        changes.append((newPosition[2][0], newPosition[2][1], 1))
        changes.append((newPosition[3][0], newPosition[3][1], 1))
        
        tryRotation(newPosition: newPosition, changes: changes)
    }
    
    func rotateBlueRicky() {
        var newPosition = currentPiecePosition
        var changes: [(r:Int, c:Int, value:Int)] = []
        
        if currentPieceRotation == 0 {
            newPosition[0][0] += 2
            newPosition[1][0] += 1
            newPosition[1][1] += 1
            newPosition[3][0] -= 1
            newPosition[3][1] -= 1
        }
        else if currentPieceRotation == -90 {
            newPosition[0][0] -= 1
            newPosition[0][1] += 2
            newPosition[1][0] -= 2
            newPosition[1][1] += 1
            newPosition[2][0] -= 1
            newPosition[3][1] -= 1
        }
        else if currentPieceRotation == -180 {
            newPosition[0][0] -= 1
            newPosition[0][1] -= 1
            newPosition[1][1] -= 2
            newPosition[2][0] += 1
            newPosition[2][1] -= 1
            newPosition[3][0] += 2
        }
        else if currentPieceRotation == -270 {
            newPosition[0][1] -= 1
            newPosition[1][0] += 1
            newPosition[2][1] += 1
            newPosition[3][0] -= 1
            newPosition[3][1] += 2
        }
        changes.append((currentPiecePosition[0][0], currentPiecePosition[0][1], 0))
        changes.append((currentPiecePosition[1][0], currentPiecePosition[1][1], 0))
        changes.append((currentPiecePosition[2][0], currentPiecePosition[2][1], 0))
        changes.append((currentPiecePosition[3][0], currentPiecePosition[3][1], 0))
        changes.append((newPosition[0][0], newPosition[0][1], 1))
        changes.append((newPosition[1][0], newPosition[1][1], 1))
        changes.append((newPosition[2][0], newPosition[2][1], 1))
        changes.append((newPosition[3][0], newPosition[3][1], 1))
        
        tryRotation(newPosition: newPosition, changes: changes)
    }
}
