//
//  More2ViewController.swift
//  Practica6
//
//  Created by CTACUCEA on 6/14/19.
//  Copyright © 2019 MDesarrolloCecy. All rights reserved.
//
import UIKit
var task2 = [TaskModel2]()
class More2ViewController: UIViewController {
    
    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func addTask(_ sender: Any) {
        
        if txtTask.text!.isEmpty {
            let alert = UIAlertController(title: "Cuidado", message: "La tarea está vacía", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
        else {
            task2.append(TaskModel2(task: txtTask.text!, dueDate: datePicker.date))
            let alert = UIAlertController(title: "Nueva Tarea", message: "La tarea ha sido guardada", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            txtTask.text = ""
            print(task.count)
            
        }
    }
}

