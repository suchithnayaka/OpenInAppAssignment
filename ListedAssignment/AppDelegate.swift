//
//  AppDelegate.swift
//  ListedAssignment
//
//  Created by Suchith Nayaka on 23/05/24.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .light
        
        return true
    }
}
