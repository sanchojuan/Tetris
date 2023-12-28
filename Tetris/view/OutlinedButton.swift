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
                backgroundColor = getBg()
            }
            super.isHighlighted = newValue
        }
    }
    
    func getBg() -> UIColor {
        return UIColor.white
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
    
    var myBackgroundColor: CGColor? = UIColor.white.cgColor
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = getBg()
    }
}

class OutlinedSecondaryButton: OutlinedButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = getBg()
    }
    
    override func getBg() -> UIColor {
        return UIColor.systemGray5
    }
}
