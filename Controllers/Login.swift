//
//  Login.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class  login: UIViewController {
    
    @IBOutlet weak var btniniciarsesion: UIButton!
    @IBOutlet weak var vfondo: UIView!
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var lblwarning: UILabel!
    @IBAction func doTapSiguiente(_ sender: Any) {
        
        if txt1.text != nil && txt1.text != "" && txt2.text != nil && txt2.text != "" {
            
            performSegue(withIdentifier: "doTapSiguiente", sender: self)
        }else{
            
            lblwarning.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btniniciarsesion.backgroundColor = UIColor.white
        btniniciarsesion.layer.cornerRadius = 15
        btniniciarsesion.setTitleColor(UIColor.black, for: .normal)
        
        vfondo.layer.cornerRadius = 12
    }
    
    
}
