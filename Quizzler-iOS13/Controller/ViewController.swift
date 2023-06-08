//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var progressBar: UIProgressView!

    @IBOutlet weak var trueButton: UIButton!

    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }
    
    var quizBrain = QuizzBran()

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if self.quizBrain.checkAnswer(sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        sender.isEnabled = false

        self.quizBrain.setCurrentQuestion()
    
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
            self.updateUI()
        }
    }

    func updateUI() {
        self.questionLabel.text = self.quizBrain.getCurrentQuestion().question
        self.trueButton.backgroundColor = UIColor.clear
        self.trueButton.isEnabled = true
        self.falseButton.backgroundColor = UIColor.clear
        self.falseButton.isEnabled = true
        self.progressBar.progress = self.quizBrain.getQuizProgress()
    }
}
 
