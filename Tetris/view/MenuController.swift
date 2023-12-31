//
//  MenuController.swift
//  Tetris
//
//  Created by Juan Sancho García on 18/12/23.
//

import UIKit

class MenuController: UIViewController {

    @IBOutlet var versionNumber: UILabel!
    @IBOutlet var btnStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let version = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        versionNumber.text = "v\(version)"
    }
    

    @IBAction func start(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController")
        self.present(viewController, animated: true)
    }
    
}
