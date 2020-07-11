//
//  AppBrain.swift
//  Historivia
//
//  Created by Ivan on 10/07/2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

struct AppBrain {
    var quizQuestions = [
            Question(questionText: "To who did the Constantinopole fall in 1453?", answer: ["Crusaders","Mongols","Ottoman Turks","Romans"], correctAnswer: "Ottoman Turks"),
            Question(questionText: "Which of the following was the Greek goddess of wisdom?", answer: ["Aphrodite","Hera","Artemis","Athena"], correctAnswer: "Athena"),
            Question(questionText: "Catherine the Great ruled what country?", answer: ["England","France","Germany","Russia"], correctAnswer: "Russia"),
            Question(questionText: "What was the next state after the original 13 to be admitted to the United States?", answer: ["Florida","Kentucky","Vermont","West Virginia"], correctAnswer: "Vermont"),
            Question(questionText: "Which of these four wise men died before the other three were born?", answer: ["Confucius","Plato","Jesus","Solomon"], correctAnswer: "Solomon"),
            Question(questionText: "Manuel Noriega took refuge in whose embassy after the U.S. invasion of Panama City in 1989?", answer: ["Cuba","Russia","Yugoslavia","Vatican City"], correctAnswer: "Vatican City"),
            Question(questionText: "Namibia became a colony of what European nation in 1890, under the name South-West Africa?", answer: ["Germany","Great Britain","The Netherlands","Portugal"], correctAnswer: "Germany"),
            Question(questionText: "Which famous philosopher was Alexander the Great's personal tutor?", answer: ["Socrates","Plato","Aristotle","Heraclitus"], correctAnswer: "Aristotle"),
            Question(questionText: "During which year did Christopher Columbus first arrive in the Americas?", answer: ["1501","1495","1492","1498"], correctAnswer: "1492"),
            Question(questionText: "During which century did the Renaissance period emanating from Northern Italy begin?", answer: ["16th","15th","13th","14th"], correctAnswer: "14th"),
            Question(questionText: "Who was the first Roman emperor?", answer: ["Nero","Augustus","Tiberius","Julius Caesar"], correctAnswer: "Augustus"),
            Question(questionText: "What was the name of Greek goddess of love, beauty and desire?", answer: ["Athena","Aphrodite","Apolla","Hetate"], correctAnswer: "Aphrodite"),
            Question(questionText: "What is the year of JFK's assassination?", answer: ["1963","1966","1964","1966"],correctAnswer:"1963"),
            Question(questionText: "Where was Napoleon born?", answer: ["Majorca","Corsica","Sicily","Portugal"], correctAnswer: "Corsica"),
            Question(questionText: "Who was the first president of the United States?", answer: ["George Washington","Abraham Lincoln","John Adams","Thomas Jefferson"], correctAnswer: "George Washington"),
            Question(questionText: "What was the name of the womam who supposedly caused the Trojan war?", answer: ["Helen","Kassandra","Aphrodite","Patricia"], correctAnswer: "Helen"),
            Question(questionText: "Athens experienced a decades-long Golden Age under the rule of what leader?", answer: ["Pericles","Solon","Herodotus","Socrates"], correctAnswer: "Pericles"),
            Question(questionText: "Who ultimately won the Peloponnesian War?", answer: ["Persia","Athens","Sparta","Macedonia"], correctAnswer: "Sparta")
        ]
    
    var questionNumber = 0
    var userScore = 0
    var userLives = 3
    
    mutating func takeLife(){
        userLives -= 1
    }
    
    func checkLife() -> Bool {
        if userLives >= 1 {
            return true
        } else {
            return false
        }
    }
    mutating func restartGame(){
        quizQuestions.shuffle()
        userLives = 3
        userScore = 0
        questionNumber = 0
    }
    
    func checkProgress() -> Bool {
        if questionNumber >= (quizQuestions.count-1) {
            return false
        } else {
            return true
        }
        
    }
    
    func getQuestion() -> String {
        return quizQuestions[questionNumber].questionText
    }
    
    func getAnswer(_ number: Int) -> String {
        return quizQuestions[questionNumber].answer[number]
    }
    
    mutating func checkAnswer (_ userAnswer: String) -> Bool{
        if userAnswer == quizQuestions[questionNumber].correctAnswer {
            userScore += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion () {
        if questionNumber < (quizQuestions.count-1) {
            questionNumber += 1
        }

    }
    
    func getCorrectAnswer() -> String {
        return quizQuestions[questionNumber].correctAnswer
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber)/Float(quizQuestions.count-1)
        return progress
    }
    
    mutating func getScore() -> String {
        return String("Your score: \(userScore)")
    }
    
    mutating func getLives() -> String {
        return String("Lives: \(userLives)")
    }
}
