//
//  GameViewController.swift
//  Gaming Trivia
//
//  Created by Ivan on 09/07/2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var livesLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonOne.layer.borderWidth = 2
        buttonOne.layer.borderColor = UIColor.white.cgColor
        buttonOne.layer.cornerRadius = 10
        buttonTwo.layer.borderWidth = 2
        buttonTwo.layer.borderColor = UIColor.white.cgColor
        buttonTwo.layer.cornerRadius = 10
        buttonThree.layer.borderWidth = 2
        buttonThree.layer.borderColor = UIColor.white.cgColor
        buttonThree.layer.cornerRadius = 10
        buttonFour.layer.borderWidth = 2
        buttonFour.layer.borderColor = UIColor.white.cgColor
        buttonFour.layer.cornerRadius = 10
    }
    

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)

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
