//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Raphael Martins on 08/06/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizzBran {
    let questions: [Question] = [
        Question(question: "Britney Spears is better than Christina Aguilera", answer: "True"),
        Question(question: "Windows is a good operating system", answer: "False"),
        Question(question: "Sonic Heroes is an underapreciated masterpiece", answer: "True"),
        Question(question: "Lady Gaga is better on pop music", answer: "True"),
        Question(question: "Emulating Nintendo games is morally correct", answer: "True"),
        Question(question: "The Legend of Zelda Breath of the Wild is better than Ocarina of Time", answer: "False"),
        Question(question: "Learning Swift is cool", answer: "True")
    ]
    
    var currentQuestionIndex = 0
    
    var score = 0
    
    mutating func setCurrentQuestion() {
        if self.currentQuestionIndex < self.questions.count - 1 {
            self.currentQuestionIndex += 1
        } else {
            self.score = 0
            self.currentQuestionIndex = 0
        }
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == self.getCurrentQuestion().answer {
            self.score += 1
            return true
        }
        return false
    }
    
    func getCurrentQuestion() -> Question {
        return self.questions[self.currentQuestionIndex]
    }
    
    func getQuizProgress() -> Float {
        return Float(self.currentQuestionIndex + 1) / Float(self.questions.count)
    }
}
