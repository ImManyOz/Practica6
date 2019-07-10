//
//  RegisterPageViewController.swift
//  Practica6
//
//  Created by CTACUCEA on 6/14/19.
//  Copyright © 2019 MTICUCEA. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    
    // Declarando las entradas de texto
    
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //Declaramos las acciones del boton de registro
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        // Declaramos las variables que guardaran los datos
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        //validamos que la informacion sea correcta
        
        if(userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty){
            
            //Mandamos un mensaje
            
            displayMyAlertMessage(userMessage: "All fields are required")
            return;
            
        }
        
        //Checador del password y su confirmacion
        
        if(userPassword != userRepeatPassword){
            //Mandamos una alerta de mensaje
            displayMyAlertMessage(userMessage: "Passwords do not match")
            return;
            
        }
        // Datos guardados
        
        UserDefaults.standard.set(userEmail, forKey: "userEmail")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        UserDefaults.standard.synchronize();
        
        //Mandamos alerta de mensaje
        
        let myAlert = UIAlertController(title: "Alert", message: "Registration is successful. Thank you!", preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){ action in
            self.dismiss(animated: true, completion: nil);
            
        }
        
        //Esta linea de codigo genera una accion
        myAlert.addAction(okAction);
        self.present(myAlert, animated: true, completion: nil);
        
    }
    
    
    // Declaramos una funcion para mandar mensajes
    
    func   displayMyAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
        
    }
    
    
}
