//
//  ViewController.swift
//  Randomizer
//
//  Created by Alexey Efimov on 05/02/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

enum UserActivityType: String {
    
    case generateRandomNumber = "ru.swiftbook.Randomizer.generateRandomNumber"
}

class ViewController: UIViewController {

    @IBOutlet var randomNumber: UILabel!
    
    @IBAction func getRandomNumber() {
        randomNumberGenerate()
    }
    
    func randomNumberGenerate() {
        randomNumber.text = String(Int.random(in: 1...100))
        createUserActivityType()
    }
    
    private func createUserActivityType() {
        
        let activity = NSUserActivity(activityType: UserActivityType.generateRandomNumber.rawValue)
        
        activity.title = "Generate Random Number"
        
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        
        self.userActivity = activity
        self.userActivity?.becomeCurrent()
    }
    
}

