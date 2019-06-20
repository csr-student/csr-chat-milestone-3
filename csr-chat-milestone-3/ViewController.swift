//
//  ViewController.swift
//  csr-chat-milestone-3
//
//  Created by Cody Sugarman on 6/19/19.
//  Copyright © 2019 Cody Sugarman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func goToSignUp(_ sender: UIButton) {
        CSRMethods.app.changeScreens(id: "signup")
    }
    
    @IBAction func goToLogin(_ sender: UIButton) {
        CSRMethods.app.changeScreens(id: "login")

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

