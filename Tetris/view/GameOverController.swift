//
//  GameOverController.swift
//  Tetris
//
//  Created by Juan Sancho García on 18/12/23.
//

import UIKit

class GameOverController: UIViewController {

    @IBOutlet var lbScore: UILabel!
    @IBOutlet var lbRecord: UILabel!
    @IBOutlet var lbNewRecord: UILabel!
    
    var presenter: GameOverPresenter?
    
    var score: Int = 0
    var record: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbNewRecord.isHidden = true
        
        presenter = GameOverPresenter()

        setScore()
        setRecord()
        
        checkRecord()
    }
    
    private func setScore() {
        lbScore.text = "Level \(score)"
    }
    
    private func setRecord() {
        record = presenter!.getRecord()
        print("Record: \(record)")
        lbRecord.text = "Level \(record)"
    }
    
    private func checkRecord() {
        if score > record {
            showNewRecord()
            presenter!.saveNewRecord(record: score)
        }
    }
    
    private func showNewRecord() {
        lbNewRecord.isHidden = false
        animateNewRecord(alpha: 0)
    }
    
    func animateNewRecord(alpha: CGFloat) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            UIView.animate(withDuration: 0.5, delay: 0, options: [.curveLinear], animations: {
                self.lbNewRecord.alpha = alpha
                }, completion: nil)
            var newAlpha = 0
            if alpha == 0 { newAlpha = 1 }
            self.animateNewRecord(alpha: CGFloat(newAlpha))
        })
    }
    
    @IBAction func goMenu(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Menu", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MenuController")
        self.present(viewController, animated: true)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController")
        self.present(viewController, animated: true)
    }
}
