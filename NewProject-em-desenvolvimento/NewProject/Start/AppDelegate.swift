//
//  AppDelegate.swift
//  NewProject
//
//  Created by Kleiton Mendes on 11/07/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.coordinateSpace.bounds)
        window?.makeKeyAndVisible()
        
        let navigation = UINavigationController()
        window?.rootViewController = navigation
        
        let coordinator = LoginCoordinator(navigation: navigation)
        coordinator.navigate(to: .home)
        
        return true
    }
}

