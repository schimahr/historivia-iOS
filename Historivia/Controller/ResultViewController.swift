//
//  ResultViewController.swift
//  Gaming Trivia
//
//  Created by Ivan on 09/07/2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var gameOver: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    
    var appBrain = AppBrain()
    var score = "Your score: 0"
    var allDone = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exitButton.layer.borderColor = UIColor.white.cgColor
        exitButton.layer.borderWidth = 2
        exitButton.layer.cornerRadius = 10
        scoreLabel.text = score
        if allDone == false {
            gameOver.text = "Well done!"
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func exitPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "unwindToMenu", sender: self)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
