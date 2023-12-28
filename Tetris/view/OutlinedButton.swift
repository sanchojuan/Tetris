//
//  OutlinedButton.swift
//  Tetris
//
//  Created by Juan Sancho García on 28/12/23.
//

import Foundation
import UIKit

class OutlinedButton: UIButton {
    
    override var isHighlighted: Bool {
        get {
            return super.isHighlighted
        }
        set {
            if newValue {
                backgroundColor = UIColor.systemGray6
            }
            else {
                backgroundColor = UIColor.white
            }
            super.isHighlighted = newValue
        }
    }
    
    override func awakeFromNib() {
        layer.borderWidth = 1
        layer.cornerRadius = 8
        layer.borderColor = UIColor.black.cgColor
        tintColor = .clear
        setTitleColor(.black, for: .normal)
    }
}

class OutlinedPrimaryButton: OutlinedButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .white
    }
}

class OutlinedSecondaryButton: OutlinedButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .systemGray5
    }
}
