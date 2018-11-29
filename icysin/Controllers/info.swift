//
//  info.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//


import UIKit

class infomenu: UIViewController{
    
    @IBOutlet weak var btnmenu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnmenu.backgroundColor = UIColor.black
        btnmenu.layer.cornerRadius = 15
        btnmenu.setTitleColor(UIColor.white, for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


