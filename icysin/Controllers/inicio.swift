//
//  inicio.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class inicio: UIViewController {
    
    @IBOutlet weak var vfondo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        vfondo.layer.cornerRadius = 15
    }
    
}
