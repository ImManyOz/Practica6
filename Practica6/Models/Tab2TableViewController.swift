//
//  Tab2TableViewController.swift
//  Practica6
//
//  Created by CTA CUCEA on 7/9/19.
//  Copyright © 2019 MTICUCEA. All rights reserved.
//

import UIKit

class Tab2ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "task2")
        
        cell?.textLabel?.text = task2[indexPath.row].task
        cell?.detailTextLabel?.text = task2[indexPath.row].dueDate.description
        
        return cell!
        
    }
    
}
