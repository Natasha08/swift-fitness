//
//  LoginViewController.swift
//  FitnessApp
//
//  Created by Natasha Osborne on 6/9/17.
//  Copyright © 2017 Natasha Osborne. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let userController = UserController()
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let newUser = User.init(email: email, password: password)
        userController.loginUser(username: email, password: password)
        print("BUTTON PRESSED")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
