//
//  Pastel.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Pastel {
    var nombre : String
    var imagenlista : UIImage
    var  imagendDetalle : UIImage
    var  Descripcion : String
    var Precio : Double
    
    init(nombre : String, imagenlista : UIImage, imagenDetalle : UIImage, Descripcion : String, Precio : Double) {
        self.nombre = nombre
        self.imagenlista = imagenlista
        self.imagendDetalle = imagenDetalle
        self.Descripcion = Descripcion
        self.Precio = Precio
    }
    
    
    
}
