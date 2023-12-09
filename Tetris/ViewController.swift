//
//  ViewController.swift
//  Tetris
//
//  Created by Juan Sancho García on 24/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Views
    @IBOutlet var screen: UIStackView!
    
    @IBOutlet var upArrow: UIImageView!
    @IBOutlet var leftArrow: UIImageView!
    @IBOutlet var rightArrow: UIImageView!
    @IBOutlet var downArrow: UIImageView!
    
    @IBOutlet var btnRotate: UIImageView!
    
    @IBOutlet var row0: UIStackView!
    @IBOutlet var row1: UIStackView!
    @IBOutlet var row2: UIStackView!
    @IBOutlet var row3: UIStackView!
    @IBOutlet var row4: UIStackView!
    @IBOutlet var row5: UIStackView!
    @IBOutlet var row6: UIStackView!
    @IBOutlet var row7: UIStackView!
    @IBOutlet var row8: UIStackView!
    @IBOutlet var row9: UIStackView!
    
    @IBOutlet var row10: UIStackView!
    @IBOutlet var row11: UIStackView!
    @IBOutlet var row12: UIStackView!
    @IBOutlet var row13: UIStackView!
    @IBOutlet var row14: UIStackView!
    @IBOutlet var row15: UIStackView!
    
    //MARK: Row 0
    @IBOutlet var cell00: UIView!
    @IBOutlet var cell01: UIView!
    @IBOutlet var cell02: UIView!
    @IBOutlet var cell03: UIView!
    @IBOutlet var cell04: UIView!
    @IBOutlet var cell05: UIView!
    @IBOutlet var cell06: UIView!
    @IBOutlet var cell07: UIView!
    @IBOutlet var cell08: UIView!
    @IBOutlet var cell09: UIView!
    
    //MARK: Row 1
    @IBOutlet var cell10: UIView!
    @IBOutlet var cell11: UIView!
    @IBOutlet var cell12: UIView!
    @IBOutlet var cell13: UIView!
    @IBOutlet var cell14: UIView!
    @IBOutlet var cell15: UIView!
    @IBOutlet var cell16: UIView!
    @IBOutlet var cell17: UIView!
    @IBOutlet var cell18: UIView!
    @IBOutlet var cell19: UIView!
    
    //MARK: Row 2
    @IBOutlet var cell20: UIView!
    @IBOutlet var cell21: UIView!
    @IBOutlet var cell22: UIView!
    @IBOutlet var cell23: UIView!
    @IBOutlet var cell24: UIView!
    @IBOutlet var cell25: UIView!
    @IBOutlet var cell26: UIView!
    @IBOutlet var cell27: UIView!
    @IBOutlet var cell28: UIView!
    @IBOutlet var cell29: UIView!
    
    //MARK: Row 3
    @IBOutlet var cell30: UIView!
    @IBOutlet var cell31: UIView!
    @IBOutlet var cell32: UIView!
    @IBOutlet var cell33: UIView!
    @IBOutlet var cell34: UIView!
    @IBOutlet var cell35: UIView!
    @IBOutlet var cell36: UIView!
    @IBOutlet var cell37: UIView!
    @IBOutlet var cell38: UIView!
    @IBOutlet var cell39: UIView!
    
    //MARK: Row 4
    @IBOutlet var cell40: UIView!
    @IBOutlet var cell41: UIView!
    @IBOutlet var cell42: UIView!
    @IBOutlet var cell43: UIView!
    @IBOutlet var cell44: UIView!
    @IBOutlet var cell45: UIView!
    @IBOutlet var cell46: UIView!
    @IBOutlet var cell47: UIView!
    @IBOutlet var cell48: UIView!
    @IBOutlet var cell49: UIView!
    
    //MARK: Row 5
    @IBOutlet var cell50: UIView!
    @IBOutlet var cell51: UIView!
    @IBOutlet var cell52: UIView!
    @IBOutlet var cell53: UIView!
    @IBOutlet var cell54: UIView!
    @IBOutlet var cell55: UIView!
    @IBOutlet var cell56: UIView!
    @IBOutlet var cell57: UIView!
    @IBOutlet var cell58: UIView!
    @IBOutlet var cell59: UIView!
    
    //MARK: Row 6
    @IBOutlet var cell60: UIView!
    @IBOutlet var cell61: UIView!
    @IBOutlet var cell62: UIView!
    @IBOutlet var cell63: UIView!
    @IBOutlet var cell64: UIView!
    @IBOutlet var cell65: UIView!
    @IBOutlet var cell66: UIView!
    @IBOutlet var cell67: UIView!
    @IBOutlet var cell68: UIView!
    @IBOutlet var cell69: UIView!
    
    //MARK: Row 7
    @IBOutlet var cell70: UIView!
    @IBOutlet var cell71: UIView!
    @IBOutlet var cell72: UIView!
    @IBOutlet var cell73: UIView!
    @IBOutlet var cell74: UIView!
    @IBOutlet var cell75: UIView!
    @IBOutlet var cell76: UIView!
    @IBOutlet var cell77: UIView!
    @IBOutlet var cell78: UIView!
    @IBOutlet var cell79: UIView!
    
    //MARK: Row 8
    @IBOutlet var cell80: UIView!
    @IBOutlet var cell81: UIView!
    @IBOutlet var cell82: UIView!
    @IBOutlet var cell83: UIView!
    @IBOutlet var cell84: UIView!
    @IBOutlet var cell85: UIView!
    @IBOutlet var cell86: UIView!
    @IBOutlet var cell87: UIView!
    @IBOutlet var cell88: UIView!
    @IBOutlet var cell89: UIView!
    
    //MARK: Row 9
    @IBOutlet var cell90: UIView!
    @IBOutlet var cell91: UIView!
    @IBOutlet var cell92: UIView!
    @IBOutlet var cell93: UIView!
    @IBOutlet var cell94: UIView!
    @IBOutlet var cell95: UIView!
    @IBOutlet var cell96: UIView!
    @IBOutlet var cell97: UIView!
    @IBOutlet var cell98: UIView!
    @IBOutlet var cell99: UIView!
    
    //MARK: Row 10
    @IBOutlet var cell100: UIView!
    @IBOutlet var cell101: UIView!
    @IBOutlet var cell102: UIView!
    @IBOutlet var cell103: UIView!
    @IBOutlet var cell104: UIView!
    @IBOutlet var cell105: UIView!
    @IBOutlet var cell106: UIView!
    @IBOutlet var cell107: UIView!
    @IBOutlet var cell108: UIView!
    @IBOutlet var cell109: UIView!
    
    //MARK: Row 11
    @IBOutlet var cell110: UIView!
    @IBOutlet var cell111: UIView!
    @IBOutlet var cell112: UIView!
    @IBOutlet var cell113: UIView!
    @IBOutlet var cell114: UIView!
    @IBOutlet var cell115: UIView!
    @IBOutlet var cell116: UIView!
    @IBOutlet var cell117: UIView!
    @IBOutlet var cell118: UIView!
    @IBOutlet var cell119: UIView!
    
    //MARK: Row 12
    @IBOutlet var cell120: UIView!
    @IBOutlet var cell121: UIView!
    @IBOutlet var cell122: UIView!
    @IBOutlet var cell123: UIView!
    @IBOutlet var cell124: UIView!
    @IBOutlet var cell125: UIView!
    @IBOutlet var cell126: UIView!
    @IBOutlet var cell127: UIView!
    @IBOutlet var cell128: UIView!
    @IBOutlet var cell129: UIView!
    
    //MARK: Row 13
    @IBOutlet var cell130: UIView!
    @IBOutlet var cell131: UIView!
    @IBOutlet var cell132: UIView!
    @IBOutlet var cell133: UIView!
    @IBOutlet var cell134: UIView!
    @IBOutlet var cell135: UIView!
    @IBOutlet var cell136: UIView!
    @IBOutlet var cell137: UIView!
    @IBOutlet var cell138: UIView!
    @IBOutlet var cell139: UIView!
    
    //MARK: Row 14
    @IBOutlet var cell140: UIView!
    @IBOutlet var cell141: UIView!
    @IBOutlet var cell142: UIView!
    @IBOutlet var cell143: UIView!
    @IBOutlet var cell144: UIView!
    @IBOutlet var cell145: UIView!
    @IBOutlet var cell146: UIView!
    @IBOutlet var cell147: UIView!
    @IBOutlet var cell148: UIView!
    @IBOutlet var cell149: UIView!
    
    //MARK: Row 15
    @IBOutlet var cell150: UIView!
    @IBOutlet var cell151: UIView!
    @IBOutlet var cell152: UIView!
    @IBOutlet var cell153: UIView!
    @IBOutlet var cell154: UIView!
    @IBOutlet var cell155: UIView!
    @IBOutlet var cell156: UIView!
    @IBOutlet var cell157: UIView!
    @IBOutlet var cell158: UIView!
    @IBOutlet var cell159: UIView!
    
    //Vars
    var presenter: ControllerPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapGestures()
        
        self.presenter = ControllerPresenter(controller: self)
        presenter!.startGame()
    }
    
    private func addTapGestures() {
        var tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.rotate(gesture:)))
        btnRotate.addGestureRecognizer(tapGesture)
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.upArrow(gesture:)))
        upArrow.addGestureRecognizer(tapGesture)
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.leftArrow(gesture:)))
        leftArrow.addGestureRecognizer(tapGesture)
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.rightArrow(gesture:)))
        rightArrow.addGestureRecognizer(tapGesture)
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.downArrow(gesture:)))
        downArrow.addGestureRecognizer(tapGesture)
        
        btnRotate.isUserInteractionEnabled = true
        upArrow.isUserInteractionEnabled = true
        leftArrow.isUserInteractionEnabled = true
        rightArrow.isUserInteractionEnabled = true
        downArrow.isUserInteractionEnabled = true
    }
    
    @objc private func upArrow(gesture: UIGestureRecognizer) {
        upArrow.tintColor = .systemBlue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            self.upArrow.tintColor = .black
        })
        presenter!.moveUp()
    }
    
    @objc private func leftArrow(gesture: UIGestureRecognizer) {
        leftArrow.tintColor = .systemBlue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            self.leftArrow.tintColor = .black
        })
        presenter!.moveLeft()
    }
    
    @objc private func rightArrow(gesture: UIGestureRecognizer) {
        rightArrow.tintColor = .systemBlue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            self.rightArrow.tintColor = .black
        })
        presenter!.moveRight()
    }
    
    @objc private func downArrow(gesture: UIGestureRecognizer) {
        downArrow.tintColor = .systemBlue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            self.downArrow.tintColor = .black
        })
        presenter!.moveDown()
    }
    
    @objc private func rotate(gesture: UIGestureRecognizer) {
        btnRotate.tintColor = .systemBlue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            self.btnRotate.tintColor = .black
        })
        presenter!.rotate()
    }

    func drawCell(cell: String, color: UIColor) {
        switch(cell) {
            
        //MARK: row 0
        case "00":
            cell00.backgroundColor = color
            break
        case "01":
            cell01.backgroundColor = color
            break
        case "02":
            cell02.backgroundColor = color
            break
        case "03":
            cell03.backgroundColor = color
            break
        case "04":
            cell04.backgroundColor = color
            break
        case "05":
            cell05.backgroundColor = color
            break
        case "06":
            cell06.backgroundColor = color
            break
        case "07":
            cell07.backgroundColor = color
            break
        case "08":
            cell08.backgroundColor = color
            break
        case "09":
            cell09.backgroundColor = color
            break
            
        //MARK: row 1
        case "10":
            cell10.backgroundColor = color
            break
        case "11":
            cell11.backgroundColor = color
            break
        case "12":
            cell12.backgroundColor = color
            break
        case "13":
            cell13.backgroundColor = color
            break
        case "14":
            cell14.backgroundColor = color
            break
        case "15":
            cell15.backgroundColor = color
            break
        case "16":
            cell16.backgroundColor = color
            break
        case "17":
            cell17.backgroundColor = color
            break
        case "18":
            cell18.backgroundColor = color
            break
        case "19":
            cell19.backgroundColor = color
            break
            
        //MARK: row 2
        case "20":
            cell20.backgroundColor = color
            break
        case "21":
            cell21.backgroundColor = color
            break
        case "22":
            cell22.backgroundColor = color
            break
        case "23":
            cell23.backgroundColor = color
            break
        case "24":
            cell24.backgroundColor = color
            break
        case "25":
            cell25.backgroundColor = color
            break
        case "26":
            cell26.backgroundColor = color
            break
        case "27":
            cell27.backgroundColor = color
            break
        case "28":
            cell28.backgroundColor = color
            break
        case "29":
            cell29.backgroundColor = color
            break
            
        //MARK: row 3
        case "30":
            cell30.backgroundColor = color
            break
        case "31":
            cell31.backgroundColor = color
            break
        case "32":
            cell32.backgroundColor = color
            break
        case "33":
            cell33.backgroundColor = color
            break
        case "34":
            cell34.backgroundColor = color
            break
        case "35":
            cell35.backgroundColor = color
            break
        case "36":
            cell36.backgroundColor = color
            break
        case "37":
            cell37.backgroundColor = color
            break
        case "38":
            cell38.backgroundColor = color
            break
        case "39":
            cell39.backgroundColor = color
            break
            
        //MARK: row 4
        case "40":
            cell40.backgroundColor = color
            break
        case "41":
            cell41.backgroundColor = color
            break
        case "42":
            cell42.backgroundColor = color
            break
        case "43":
            cell43.backgroundColor = color
            break
        case "44":
            cell44.backgroundColor = color
            break
        case "45":
            cell45.backgroundColor = color
            break
        case "46":
            cell46.backgroundColor = color
            break
        case "47":
            cell47.backgroundColor = color
            break
        case "48":
            cell48.backgroundColor = color
            break
        case "49":
            cell49.backgroundColor = color
            break
            
        //MARK: row 5
        case "50":
            cell50.backgroundColor = color
            break
        case "51":
            cell51.backgroundColor = color
            break
        case "52":
            cell52.backgroundColor = color
            break
        case "53":
            cell53.backgroundColor = color
            break
        case "54":
            cell54.backgroundColor = color
            break
        case "55":
            cell55.backgroundColor = color
            break
        case "56":
            cell56.backgroundColor = color
            break
        case "57":
            cell57.backgroundColor = color
            break
        case "58":
            cell58.backgroundColor = color
            break
        case "59":
            cell59.backgroundColor = color
            break
            
        //MARK: row 6
        case "60":
            cell60.backgroundColor = color
            break
        case "61":
            cell61.backgroundColor = color
            break
        case "62":
            cell62.backgroundColor = color
            break
        case "63":
            cell63.backgroundColor = color
            break
        case "64":
            cell64.backgroundColor = color
            break
        case "65":
            cell65.backgroundColor = color
            break
        case "66":
            cell66.backgroundColor = color
            break
        case "67":
            cell67.backgroundColor = color
            break
        case "68":
            cell68.backgroundColor = color
            break
        case "69":
            cell69.backgroundColor = color
            break
            
        //MARK: row 7
        case "70":
            cell70.backgroundColor = color
            break
        case "71":
            cell71.backgroundColor = color
            break
        case "72":
            cell72.backgroundColor = color
            break
        case "73":
            cell73.backgroundColor = color
            break
        case "74":
            cell74.backgroundColor = color
            break
        case "75":
            cell75.backgroundColor = color
            break
        case "76":
            cell76.backgroundColor = color
            break
        case "77":
            cell77.backgroundColor = color
            break
        case "78":
            cell78.backgroundColor = color
            break
        case "79":
            cell79.backgroundColor = color
            break
            
        //MARK: row 8
        case "80":
            cell80.backgroundColor = color
            break
        case "81":
            cell81.backgroundColor = color
            break
        case "82":
            cell82.backgroundColor = color
            break
        case "83":
            cell83.backgroundColor = color
            break
        case "84":
            cell84.backgroundColor = color
            break
        case "85":
            cell85.backgroundColor = color
            break
        case "86":
            cell86.backgroundColor = color
            break
        case "87":
            cell87.backgroundColor = color
            break
        case "88":
            cell88.backgroundColor = color
            break
        case "89":
            cell89.backgroundColor = color
            break
            
        //MARK: row 9
        case "90":
            cell90.backgroundColor = color
            break
        case "91":
            cell91.backgroundColor = color
            break
        case "92":
            cell92.backgroundColor = color
            break
        case "93":
            cell93.backgroundColor = color
            break
        case "94":
            cell94.backgroundColor = color
            break
        case "95":
            cell95.backgroundColor = color
            break
        case "96":
            cell96.backgroundColor = color
            break
        case "97":
            cell97.backgroundColor = color
            break
        case "98":
            cell98.backgroundColor = color
            break
        case "99":
            cell99.backgroundColor = color
            break
            
        //MARK: row 10
        case "100":
            cell100.backgroundColor = color
            break
        case "101":
            cell101.backgroundColor = color
            break
        case "102":
            cell102.backgroundColor = color
            break
        case "103":
            cell103.backgroundColor = color
            break
        case "104":
            cell104.backgroundColor = color
            break
        case "105":
            cell105.backgroundColor = color
            break
        case "106":
            cell106.backgroundColor = color
            break
        case "107":
            cell107.backgroundColor = color
            break
        case "108":
            cell108.backgroundColor = color
            break
        case "109":
            cell109.backgroundColor = color
            break
        
        //MARK: row 11
        case "110":
            cell110.backgroundColor = color
            break
        case "111":
            cell111.backgroundColor = color
            break
        case "112":
            cell112.backgroundColor = color
            break
        case "113":
            cell113.backgroundColor = color
            break
        case "114":
            cell114.backgroundColor = color
            break
        case "115":
            cell115.backgroundColor = color
            break
        case "116":
            cell116.backgroundColor = color
            break
        case "117":
            cell117.backgroundColor = color
            break
        case "118":
            cell118.backgroundColor = color
            break
        case "119":
            cell119.backgroundColor = color
            break
            
        //MARK: row 12
        case "120":
            cell120.backgroundColor = color
            break
        case "121":
            cell121.backgroundColor = color
            break
        case "122":
            cell122.backgroundColor = color
            break
        case "123":
            cell123.backgroundColor = color
            break
        case "124":
            cell124.backgroundColor = color
            break
        case "125":
            cell125.backgroundColor = color
            break
        case "126":
            cell126.backgroundColor = color
            break
        case "127":
            cell127.backgroundColor = color
            break
        case "128":
            cell128.backgroundColor = color
            break
        case "129":
            cell129.backgroundColor = color
            break
            
        //MARK: row 13
        case "130":
            cell130.backgroundColor = color
            break
        case "131":
            cell131.backgroundColor = color
            break
        case "132":
            cell132.backgroundColor = color
            break
        case "133":
            cell133.backgroundColor = color
            break
        case "134":
            cell134.backgroundColor = color
            break
        case "135":
            cell135.backgroundColor = color
            break
        case "136":
            cell136.backgroundColor = color
            break
        case "137":
            cell137.backgroundColor = color
            break
        case "138":
            cell138.backgroundColor = color
            break
        case "139":
            cell139.backgroundColor = color
            break
            
        //MARK: row 14
        case "140":
            cell140.backgroundColor = color
            break
        case "141":
            cell141.backgroundColor = color
            break
        case "142":
            cell142.backgroundColor = color
            break
        case "143":
            cell143.backgroundColor = color
            break
        case "144":
            cell144.backgroundColor = color
            break
        case "145":
            cell145.backgroundColor = color
            break
        case "146":
            cell146.backgroundColor = color
            break
        case "147":
            cell147.backgroundColor = color
            break
        case "148":
            cell148.backgroundColor = color
            break
        case "149":
            cell149.backgroundColor = color
            break
            
        //MARK: row 15
        case "150":
            cell150.backgroundColor = color
            break
        case "151":
            cell151.backgroundColor = color
            break
        case "152":
            cell152.backgroundColor = color
            break
        case "153":
            cell153.backgroundColor = color
            break
        case "154":
            cell154.backgroundColor = color
            break
        case "155":
            cell155.backgroundColor = color
            break
        case "156":
            cell156.backgroundColor = color
            break
        case "157":
            cell157.backgroundColor = color
            break
        case "158":
            cell158.backgroundColor = color
            break
        case "159":
            cell159.backgroundColor = color
            break
            
            
        default:
            break
        }
    }    
}

