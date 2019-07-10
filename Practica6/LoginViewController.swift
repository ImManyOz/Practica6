//
//  LoginViewController.swift
//  Practica6
//
//  Created by CTACUCEA on 6/14/19.
//  Copyright © 2019 MTICUCEA. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        
        if(userEmail!.isEmpty || userPassword!.isEmpty){
            
            //Mandamos un mensaje
            
            displayMyAlertMessage(userMessage: "All fields are required")
            return;
            
        }
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail");
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword");
        
        //Validacion de usuario y contraseña
        
        if(userEmailStored == userEmail){
            
            if(userPasswordStored == userPassword){
                
                //Login is successful
                UserDefaults.standard.set(true, forKey:"isUserLoggedIn");
                UserDefaults.standard.synchronize();
                
            } else{
                displayMyAlertMessage(userMessage: "No Match")
            }
        }
        
    }
    
    
    @IBAction func idnrmpButtonTapped(_ sender: Any) {
        
        displayMyAlertMessage(userMessage: "We have sent an email to your account")
        return;
    }
    
    func   displayMyAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
        
    }
    
    
    
}
