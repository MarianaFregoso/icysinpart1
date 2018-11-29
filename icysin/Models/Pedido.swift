//
//  Pedido.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Pedido {
    var nombre : String
    var componentes : String
    var imagenlista : UIImage
    
    init(nombre : String, componentes : String, imagenlista : UIImage) {
        self.nombre = nombre
        self.componentes = componentes
        self.imagenlista = imagenlista
        }
}
