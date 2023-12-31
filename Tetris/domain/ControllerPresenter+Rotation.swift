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
            case Piece.teewee:
                rotateTeewee()
                break
            case Piece.orangeRicky:
                rotateOrangeRicky()
                break
            case Piece.blueRicky:
                rotateBlueRicky()
                break
            case Piece.clevelandZ:
                rotateClevelandZ()
                break
            case Piece.rhodeIslandZ:
                rotateRhodeIslandZ()
                break
            default: //Smashboy
                break
            }
        }
        else { print("Game is over") }
    }
    
    private func tryRotation(newPosition: [[Int]]) {
        if pieceCanRotate(type: currentPieceType!, position: newPosition) {
            
            var changes: [(r:Int, c:Int, value:Int)] = []
            changes.append((currentPiecePosition[0][0], currentPiecePosition[0][1], 0))
            changes.append((currentPiecePosition[1][0], currentPiecePosition[1][1], 0))
            changes.append((currentPiecePosition[2][0], currentPiecePosition[2][1], 0))
            changes.append((currentPiecePosition[3][0], currentPiecePosition[3][1], 0))
            changes.append((newPosition[0][0], newPosition[0][1], 1))
            changes.append((newPosition[1][0], newPosition[1][1], 1))
            changes.append((newPosition[2][0], newPosition[2][1], 1))
            changes.append((newPosition[3][0], newPosition[3][1], 1))
            
            changeMultipleMatrix(values: changes)
            currentPiecePosition = newPosition
            
            if currentPieceType == Piece.hero ||
                currentPieceType == Piece.clevelandZ ||
                currentPieceType == Piece.rhodeIslandZ {
                
                if currentPieceRotation == 0 { currentPieceRotation = 90 }
                else { currentPieceRotation = 0 }
            }
            else if currentPieceType == Piece.orangeRicky ||
                    currentPieceType == Piece.blueRicky ||
                    currentPieceType == Piece.teewee {
                
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
        
        if currentPieceRotation == 0 {
            if currentPiecePosition[0][0] == 0 { //First row
                newPosition[0][0] += 3
                newPosition[0][1] += 2
                newPosition[1][0] += 2
                newPosition[1][1] += 1
                newPosition[2][0] += 1
                newPosition[3][1] -= 1
            }
            else {
                newPosition[0][0] += 2
                newPosition[0][1] += 2
                newPosition[1][0] += 1
                newPosition[1][1] += 1
                newPosition[3][0] -= 1
                newPosition[3][1] -= 1
            }
        }
        else if currentPieceRotation == 90 {
            newPosition[0][0] -= 2
            newPosition[0][1] -= 2
            newPosition[1][0] -= 1
            newPosition[1][1] -= 1
            newPosition[3][0] += 1
            newPosition[3][1] += 1
        }
        
        tryRotation(newPosition: newPosition)
    }
    
    func rotateTeewee() {
        var newPosition = currentPiecePosition
        
        if currentPieceRotation == 0 {
            newPosition[0][0] += 1
            newPosition[0][1] -= 1
            newPosition[1][0] += 1
            newPosition[1][1] += 1
            newPosition[3][0] -= 1
            newPosition[3][1] -= 1
        }
        else if currentPieceRotation == -90 {
            newPosition[0][1] += 1
            newPosition[1][0] -= 2
            newPosition[1][1] += 1
            newPosition[2][0] -= 1
            newPosition[3][1] -= 1
        }
        else if currentPieceRotation == -180 {
            print(currentPiecePosition)
            newPosition[0][1] += 1
            newPosition[1][1] -= 1
            newPosition[2][0] += 1
            newPosition[3][0] += 2
            newPosition[3][1] += 1
            print(newPosition)
        }
        else if currentPieceRotation == -270 {
            newPosition[0][0] -= 1
            newPosition[0][1] -= 1
            newPosition[1][0] += 1
            newPosition[1][1] -= 1
            newPosition[3][0] -= 1
            newPosition[3][1] += 1
        }
        
        tryRotation(newPosition: newPosition)
    }
    
    func rotateOrangeRicky() {
        var newPosition = currentPiecePosition
        
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
        
        tryRotation(newPosition: newPosition)
    }
    
    func rotateBlueRicky() {
        var newPosition = currentPiecePosition
        
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
        
        tryRotation(newPosition: newPosition)
    }
    
    func rotateClevelandZ() {
        var newPosition = currentPiecePosition
        
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
        
        tryRotation(newPosition: newPosition)
    }
    
    func rotateRhodeIslandZ() {
        var newPosition = currentPiecePosition
        
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
        
        tryRotation(newPosition: newPosition)
    }
}
