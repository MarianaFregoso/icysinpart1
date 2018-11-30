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
    
    var urlhelados = "https://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
    var encontrada : String = ""
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(urlhelados)
        Alamofire.request(urlhelados).responseJSON{ response in
            if let dictRespuesta = response.result.value as? NSDictionary{
                if let respuesta = dictRespuesta.value(forKey: "status") as? String{
                    self.encontrada = respuesta
                }
                if self.encontrada == "ok" {
                    if let nombre = dictRespuesta.value(forKey: "title") as? String {
                        self.lblnombreproducto.text = nombre
                    }
                   
                }
            }
        }
        
        
        
        btnañadircomp.backgroundColor = UIColor.white
        btnañadircomp.layer.cornerRadius = 15
        btnañadircomp.setTitleColor(UIColor.black, for: .normal)
        
        vfondo.layer.cornerRadius = 18
    }

}
