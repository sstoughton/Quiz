//
//  ViewController.swift
//  Quiz
//  CSC 2310
//  Created by Savannah Stoughton on 1/23/19.
//  High Point University
//  Copyright © 2019 Savannah Stoughton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //questions stored as constant strings...value can't be changed
    let questions: [String] = [
       "What is 7+7?",
       "What is the capital of Vermont?",
       "What is cognac made from?",
       "When was High Point University founded?",
       "What is the High Point University mascot?",
       "How many Division 1 athletic teams does HPU have?",
       "How many hours a day does a sloth typically sleep?",
       "What is the capital of North Carolina?"
       
    ]
    
    //questions stored as constant strings...value can't be changed
    let answers: [String] = [
       "14",
       "Montpelier",
       "Grapes",
       "1924",
       "Panther",
       "16",
       "10 hours",
       "Raleigh"
    ]
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    //load question into ??? placeholder
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

