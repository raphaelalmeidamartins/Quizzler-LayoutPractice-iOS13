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
        let answer: Bool
    }
    
    let questions: [Question] = [
        Question(question: "Britney Spears is better than Christina Aguilera", answer: true),
        Question(question: "Windows is a good operating system", answer: false),
        Question(question: "Sonic Heroes is an underapreciated masterpiece", answer: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.questionLabel.text = self.questions[self.currentQuestion].question
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }

}
 
