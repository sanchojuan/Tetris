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
        
        if hasPreview {
            drawNewPiece(piece: previewPieceType!)
            //drawNewPiece(piece: Piece.teewee)
            currentPieceRotation = 0
            previewPieceType = piece
            drawPreview()
        }
        else {
            previewPieceType = piece
            hasPreview = true
            drawPreview()
            generatePiece()
        }
    }
    
    private func selectRandomPiece() -> Piece {
        return Piece.allCases.randomElement()!
    }
}
