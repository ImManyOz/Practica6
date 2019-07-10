//
//  UserTableTableViewCell.swift
//  Practica6
//
//  Created by CTACUCEA on 6/17/19.
//  Copyright © 2019 DesarrolloCecy. All rights reserved.
//

import UIKit

class UserTableTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    @IBOutlet weak var steperInvitados: UIStepper!
    
    @IBOutlet weak var lblInvitados: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
    @IBAction func invitar(_ sender: UISwitch) {
        
        if(sender.isOn){
        steperInvitados.isEnabled = true
        }else {
            steperInvitados.isEnabled = false
            steperInvitados.value = 0
            lblInvitados.text = "0"
        }
        
    }
    
    
    @IBAction func agregarInvitados(_ sender: UIStepper) {
        lblInvitados.text = steperInvitados.value.description
    }
    
}
