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
    
    var currentQuestion = 0
    
    struct Question {
        let question: String
        let answer: String
    }
    
    let questions: [Question] = [
        Question(question: "Britney Spears is better than Christina Aguilera", answer: "True"),
        Question(question: "Windows is a good operating system", answer: "False"),
        Question(question: "Sonic Heroes is an underapreciated masterpiece", answer: "True")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if sender.currentTitle == self.questions[self.currentQuestion].answer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        sender.isEnabled = false

        self.setCurrentQuestion()
    
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
            self.updateUI()
        }
    }
    
    func setCurrentQuestion() { 
        if self.currentQuestion < self.questions.count - 1 {
            self.currentQuestion += 1
        } else {
            self.currentQuestion = 0
        }
    }
    
    func updateUI() {
        self.questionLabel.text = self.questions[self.currentQuestion].question
        self.trueButton.backgroundColor = UIColor.clear
        self.trueButton.isEnabled = true
        self.falseButton.backgroundColor = UIColor.clear
        self.falseButton.isEnabled = false
    }
}
 
