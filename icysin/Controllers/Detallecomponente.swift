//
//  Detallecomponente.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class detallecomponente: UIViewController{
    @IBOutlet weak var vfondo: UIView!
    @IBOutlet weak var btncarrito: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btncarrito.backgroundColor = UIColor.white
        btncarrito.layer.cornerRadius = 15
        btncarrito.setTitleColor(UIColor.black, for: .normal)
        
        vfondo.layer.cornerRadius = 15
    }
    
}
