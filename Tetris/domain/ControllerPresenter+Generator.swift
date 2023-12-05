//
//  ControllerPresenter+Generator.swift
//  Tetris
//
//  Created by Juan Sancho García on 24/11/23.
//

import Foundation

extension ControllerPresenter {
    
    func generatePiece() {
        let piece: Piece = selectRandomPiece()
        drawNewPiece(piece: piece)
        //drawNewPiece(piece: Piece.rhodeIslandZ)
        currentPieceRotation = 0
    }
    
    private func selectRandomPiece() -> Piece {
        return Piece.allCases.randomElement()!
    }
}
