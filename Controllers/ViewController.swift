//
//  ViewController.swift
//  icysin
//
//  Created by Alumno on 15/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnbienvenidos: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnbienvenidos.backgroundColor = UIColor.white
        btnbienvenidos.layer.cornerRadius = 15
        btnbienvenidos.setTitleColor(UIColor.black, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
}

