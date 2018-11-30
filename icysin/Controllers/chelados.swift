//
//  chelados.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

class helados: UIViewController{
    
    
    @IBOutlet weak var tvHelados: UITableView!
    
    var urlhelados = "http://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
    var helados : String = ""
    var encontrada : String = ""
    
    func  tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosHelados.helados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowA indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellhelados") as! cellhelados
        celda.lblnombrehelado.text = DatosHelados.helados[indexPath.row].nombre
        celda.imghelados.image = DatosHelados.helados[indexPath.row].imagenlista
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowA indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func viewDidLoad() {
         urlhelados = "http://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
         
    }
    
    
}
