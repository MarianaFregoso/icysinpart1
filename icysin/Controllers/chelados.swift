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
        celda.lblPrecio.text = DatosHelados.helados[indexPath.row].Precio 
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowA indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func viewDidLoad() {
         urlhelados = "http://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
        
        if helados != "" {
            helados = helados.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
            urlhelados = "http://icysinhelados.azurewebsites.net/?json=get_posts&post_type=\(helados)"
            
            Alamofire.request(urlhelados).responseJSON { response in
                if let dictRespusta = response.result.value as? NSDictionary{
                    if let respuesta = dictRespusta.value(forKey: "Response") as? String {
                    self.encontrada = respuesta
                    }
                    
                    if self.encontrada == "True" {
                        DatosHelados.helados.removeAll()
                        if let buscar = dictRespusta.value(forKey: "Search") as? NSArray{
                            for i in buscar{
                                if let dictResultado = i as? NSDictionary {
                                    var nombrehelado : String = ""
                                    var preciohelado : String = ""
                                    
                                    if let nombre = dictResultado.value(forKey: "Title") as? String{
                                        nombrehelado = nombre
                                    }
                                    
                                    if let precio = dictResultado.value(forKey: "precio") as? String{
                                        preciohelado = precio
                                    }
                                    
                                    DatosHelados.helados.append(Helado(nombre: nombrehelado, Precio: preciohelado, Descripcion: "", urlPoster: ""))
                                }
                            }
                            self.tvHelados.reloadData()
                        }
                    }
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "ProductoDetalle" {
            let destino = segue.destination as! detalleproducto
            destino.helado = DatosHelados.helados[(tvHelados.indexPathForSelectedRow?.row)!]
            
        }
    }
}
