//
//  GameViewController.swift
//  Gaming Trivia
//
//  Created by Ivan on 09/07/2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import UIKit

var appBrain = AppBrain()

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
        appBrain.restartGame()
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
        update()
    }
    

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if appBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
            appBrain.takeLife()
        }
        if appBrain.checkLife() && appBrain.checkProgress() {
            appBrain.nextQuestion()
        } else {
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }

    }
    
    func update(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.update()
        }
        questionLabel.text = appBrain.getQuestion()
        buttonOne.setTitle(appBrain.getAnswer(0), for: .normal)
        buttonTwo.setTitle(appBrain.getAnswer(1), for: .normal)
        buttonThree.setTitle(appBrain.getAnswer(2), for: .normal)
        buttonFour.setTitle(appBrain.getAnswer(3), for: .normal)
        buttonOne.backgroundColor = UIColor.clear
        buttonTwo.backgroundColor = UIColor.clear
        buttonThree.backgroundColor = UIColor.clear
        buttonFour.backgroundColor = UIColor.clear
        progressBar.progress = appBrain.getProgress()
        livesLabel.text = appBrain.getLives()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationViewController = segue.destination as! ResultViewController
            destinationViewController.score = appBrain.getScore()
            destinationViewController.allDone = appBrain.checkProgress()
        }
    }

}
