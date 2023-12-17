//
//  ControllerPresenter+Preview.swift
//  Tetris
//
//  Created by Juan Sancho García on 12/12/23.
//

import Foundation
import UIKit

extension ControllerPresenter {
    
    func drawPreview() {
        clearPreview()
        
        if !gameOver {
            switch(previewPieceType!) {
            case Piece.hero:
                changePreviewMatrix(r: 1, c: 0)
                changePreviewMatrix(r: 1, c: 1)
                changePreviewMatrix(r: 1, c: 2)
                break
            case Piece.teewee:
                changePreviewMatrix(r: 0, c: 1)
                changePreviewMatrix(r: 1, c: 0)
                changePreviewMatrix(r: 1, c: 1)
                changePreviewMatrix(r: 1, c: 2)
                break
            case Piece.smashboy:
                changePreviewMatrix(r: 0, c: 1)
                changePreviewMatrix(r: 0, c: 2)
                changePreviewMatrix(r: 1, c: 1)
                changePreviewMatrix(r: 1, c: 2)
                break
            case Piece.orangeRicky:
                changePreviewMatrix(r: 0, c: 2)
                changePreviewMatrix(r: 1, c: 0)
                changePreviewMatrix(r: 1, c: 1)
                changePreviewMatrix(r: 1, c: 2)
                break
            case Piece.blueRicky:
                changePreviewMatrix(r: 0, c: 0)
                changePreviewMatrix(r: 1, c: 0)
                changePreviewMatrix(r: 1, c: 1)
                changePreviewMatrix(r: 1, c: 2)
                break
            case Piece.clevelandZ:
                changePreviewMatrix(r: 0, c: 0)
                changePreviewMatrix(r: 0, c: 1)
                changePreviewMatrix(r: 1, c: 1)
                changePreviewMatrix(r: 1, c: 2)
                break
            case Piece.rhodeIslandZ:
                changePreviewMatrix(r: 0, c: 1)
                changePreviewMatrix(r: 0, c: 2)
                changePreviewMatrix(r: 1, c: 0)
                changePreviewMatrix(r: 1, c: 1)
                break
            }
        }
    }
    
    func clearPreview() {
        let color : UIColor  =  .white
        
        for i in 0...3 {
            for j in 0...3 {
                controller.drawCell(cell: "preview\(i)\(j)", color: color)
            }
        }
    }
    
    func changePreviewMatrix(r: Int, c: Int) {
        var color : UIColor  =  .white
        
        switch(previewPieceType){
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
        
        controller.drawCell(cell: "preview\(r)\(c)", color: color)
    }
}
