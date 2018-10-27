//
//  DetailViewController.swift
//  TomachelaApp
//
//  Created by Oliver Jordy Pérez Escamilla on 26/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var numberOfBeers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func UserWantsTheBeer(_ sender: UIButton) {
        numberOfBeers += 1
        print(numberOfBeers)
        if let tabItems = tabBarController?.tabBar.items {
            // In this case we want to modify the badge number of the third tab:
            let tabItem = tabItems[1]
            tabItem.badgeValue = String(numberOfBeers)
        }
    }
    
    @IBAction func UserDontWantTheBeer(_ sender: UIButton) {
        if numberOfBeers ==  0 {
             self.navigationController?.popViewController(animated: true)
        }

        else {
            numberOfBeers -= 1
            print(numberOfBeers)
            if let tabItems = tabBarController?.tabBar.items {
                // In this case we want to modify the badge number of the third tab:
                let tabItem = tabItems[1]
                tabItem.badgeValue = String(numberOfBeers)
            }
            
            
        }
      
    }
    
    

}
