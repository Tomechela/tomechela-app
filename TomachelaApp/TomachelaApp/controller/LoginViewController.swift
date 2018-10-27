//
//  LoginViewController.swift
//  TomachelaApp
//
//  Created by Álvaro Ávalos Hernández on 26/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit
import Openpay

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var checkInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkLogin(_ sender: UIButton) {
        guard validate() else { return }
        performSegue(withIdentifier: "paySegue", sender: sender)
    }
    
    @IBAction func checkIn(_ sender: UIButton) {
        performSegue(withIdentifier: "registerSegue", sender: sender)
    }
    
    func validate() -> Bool {
        return usernameTextField.text == "a" && passwordTextField.text == "b"
    }

}
