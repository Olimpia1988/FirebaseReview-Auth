//
//  LoginViewController.swift
//  FirebaseReview
//
//  Created by Olimpia on 11/11/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
      
    }
    
    func initialSetup() {
        errorLabel.isHidden = true
        Utilities.styleTextField(nameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleFilledButton(loginButton)
        
    }

    @IBAction func loginAction(_ sender: Any) {
    }
    

}
