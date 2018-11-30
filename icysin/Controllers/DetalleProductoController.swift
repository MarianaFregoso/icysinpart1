//
//  DetalleProductoController.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class  detalleproducto: UIViewController {
    
    @IBOutlet weak var btnañadircomp: UIButton!
    @IBOutlet weak var vfondo: UIView!
    
    var helado : Helado?
    
    var urlhelados = "http://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
    var encontrada : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnañadircomp.backgroundColor = UIColor.white
        btnañadircomp.layer.cornerRadius = 15
        btnañadircomp.setTitleColor(UIColor.black, for: .normal)
        
        vfondo.layer.cornerRadius = 18
    }

}
