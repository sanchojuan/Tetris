//
//  MenuController.swift
//  Tetris
//
//  Created by Juan Sancho García on 18/12/23.
//

import UIKit

class MenuController: UIViewController {

    @IBOutlet var btnStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.btnStart.layer.borderColor = UIColor.black.cgColor
        self.btnStart.layer.borderWidth = 1
        
    }
    

    @IBAction func start(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController")
        self.present(viewController, animated: true)
    }
    
}
