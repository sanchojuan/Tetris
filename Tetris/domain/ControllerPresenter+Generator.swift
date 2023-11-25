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
        print("Piece: \(piece)")
        drawNewPiece(piece: piece)
    }
    
    private func selectRandomPiece() -> Piece {
        return Piece.allCases.randomElement()!
    }
}
