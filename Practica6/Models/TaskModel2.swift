//
//  TaskModel2.swift
//  Practica6
//
//  Created by CTACUCEA on 6/14/19.
//  Copyright © 2019 MDesarrolloCecy. All rights reserved.
//
import Foundation

class TaskModel2 {
    var id: Int = 0
    var task: String
    var dueDate: Date
    
    init (task: String, dueDate: Date){
        self.task = task
        self.dueDate = dueDate
    }
}
