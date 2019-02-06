//
//  AppDelegate.swift
//  Randomizer
//
//  Created by Alexey Efimov on 05/02/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        
        switch userActivity.activityType {
        case UserActivityType.generateRandomNumber.rawValue:
            if let viewController = window?.rootViewController as? ViewController {
                viewController.randomNumberGenerate()
            }
        default:
            break
        }
        
        return true
    }


}

