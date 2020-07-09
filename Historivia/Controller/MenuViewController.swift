//
//  ViewController.swift
//  Gaming Trivia
//
//  Created by Ivan on 09/07/2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playButton.layer.borderWidth = 2
        playButton.layer.borderColor = UIColor.white.cgColor
        playButton.layer.cornerRadius = 10
        
    }
    
    

    @IBAction func playButtonPressed(_ sender: UIButton) {
        dismiss(animated:true, completion: nil)
        performSegue(withIdentifier: "goToGame", sender: self)
    }
    
    @IBAction func unwindToMenu(segue: UIStoryboardSegue){
        
    }
}

