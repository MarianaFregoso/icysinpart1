//
//  DetalleProductoController.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage
import Alamofire

class  detalleproducto: UIViewController {
    
    @IBOutlet weak var btnañadircomp: UIButton!
    @IBOutlet weak var vfondo: UIView!
    
    @IBOutlet weak var lblnombreproducto: UILabel!
    @IBOutlet weak var lblprecioproducto: UILabel!
    @IBOutlet weak var lbldescripcionproducto: UILabel!
    @IBOutlet weak var imgproducto: UIImageView!
    
    
    
    var helado : Helado?
    var pastel : Pastel?
    
    var urlhelados = "https://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
    var urlimagen = "https://icysinhelados.azurewebsites.net//wp-content/uploads/2018/11/vainilla.jpg"
    
    var urlpastelitos = "https://icysinhelados.azurewebsites.net/?json=get_posts&post_type=pasteles"
    
    var encontrada : String = ""
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if  helado != nil{
            lblnombreproducto.text = helado?.nombre
            lblprecioproducto.text = helado?.Precio
        
        }
        
        if pastel != nil{
            lblnombreproducto.text = pastel?.nombre
            lblprecioproducto.text = pastel?.Precio
        }
        
        btnañadircomp.backgroundColor = UIColor.white
        btnañadircomp.layer.cornerRadius = 15
        btnañadircomp.setTitleColor(UIColor.black, for: .normal)
        
        vfondo.layer.cornerRadius = 18

}
}
