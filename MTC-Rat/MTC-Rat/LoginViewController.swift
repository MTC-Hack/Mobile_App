//
//  ViewController.swift
//  MTC-Rat
//
//  Created by Кирилл Володин on 28.09.17.
//  Copyright © 2017 Кирилл Володин. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 20
        loginButton.clipsToBounds = true
    }

    @IBAction func logIn(_ sender: UIButton) {
        
        guard let email = loginTextField.text else {
            return
        }
        guard let password = passwordTextField.text else {
            return
        }
        
        performSegue(withIdentifier: "login", sender: nil)
        
    }

}

