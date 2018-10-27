//
//  AppDelegate.swift
//  TomachelaApp
//
//  Created by Oliver Jordy Pérez Escamilla on 20/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "MyMain", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "beerMenuVC")
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "OrderPreView")
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [firstViewController, secondViewController]
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        firstViewController.tabBarItem.title = "MENU"
        secondViewController.tabBarItem.title = "ORDER"
       
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}
