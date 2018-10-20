//
//  ResultViewController.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/20/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var textBox: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backAction(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil);
    }

}
