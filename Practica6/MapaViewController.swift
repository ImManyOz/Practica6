//
//  MapaViewController.swift
//  Practica6
//
//  Created by CTACUCEA on 6/17/19.
//  Copyright © 2019 DesarrolloCecy All rights reserved.
//

import UIKit
import MapKit

class MapaViewController: UIViewController {
    
    
    @IBOutlet weak var mapa: MKMapView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var ciudad: UILabel!
    @IBOutlet weak var phone: UILabel!
    
    var user: UserModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Crear el pin
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: user.lat!, longitude: user.lon!)
        pin.title = user.username
        mapa.addAnnotation(pin)
        mapa.setCenter(pin.coordinate, animated: true)
        
        username.text = user.username
        ciudad.text = user.city
        phone.text = user.phone
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
