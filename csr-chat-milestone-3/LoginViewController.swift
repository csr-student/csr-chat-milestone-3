//
//  LoginViewController.swift
//  csr-chat-milestone-3
//
//  Created by Cody Sugarman on 6/19/19.
//  Copyright © 2019 Cody Sugarman. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBAction func goBack(_ sender: UIButton) {
        CSRMethods.app.changeScreens(id: "home")
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func tryLogin(_ sender: UIButton) {
        
        if usernameTextField.text! == "" {
            CSRMethods.app.showAlert(titleMessage: "CSR Alert!", messageString: "Incorrect username. Try again!")
            return
        }
        if emailTextField.text! == "" {
            CSRMethods.app.showAlert(titleMessage: "CSR Alert!", messageString: "Incorrect email. Try again!")
            return
        }
        if passwordTextField.text! == "" {
            CSRMethods.app.showAlert(titleMessage: "CSR Alert!", messageString: "Incorrect password. Try again!")
            return
        }
        
        CSRMethods.app.login(username: usernameTextField.text!, email: emailTextField.text!, password: passwordTextField.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
