//
//  DetailViewController.swift
//  TomachelaApp
//
//  Created by Oliver Jordy Pérez Escamilla on 26/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func UserWantsTheBeer(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func UserDontWantTheBeer(_ sender: UIButton) {
   
        self.navigationController?.popViewController(animated: true)

    }
    
    

}
