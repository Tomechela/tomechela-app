//
//  RegisterViewController.swift
//  TomachelaApp
//
//  Created by Álvaro Ávalos Hernández on 26/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
  
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func registerButton(_ sender: UIButton) {
        performSegue(withIdentifier: "registerPaySegue", sender: self)
    }
    
}
