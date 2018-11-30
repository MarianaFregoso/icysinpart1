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

class helados: UIViewController,UITableViewDataSource ,UITableViewDelegate{
    @IBOutlet weak var tvHelados: UITableView!
    
    var urlhelados = "https://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
    var encontrada : String = ""
    
    func  tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosHelados.helados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellhelados") as! cellhelados
        celda.lblnombrehelado.text = DatosHelados.helados[indexPath.row].nombre
        celda.lblPrecio.text = DatosHelados.helados[indexPath.row].Precio
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func viewDidLoad() {
         urlhelados = "https://icysinhelados.azurewebsites.net/?json=get_posts&post_type=helados"
        

            Alamofire.request(urlhelados).responseJSON { response in
                if let dictRespusta = response.result.value as? NSDictionary{
                    if let respuesta = dictRespusta.value(forKey: "status") as? String {
                    self.encontrada = respuesta
                    }
                    
                    if self.encontrada == "ok" {
                        if let buscar = dictRespusta.value(forKey: "posts") as? NSArray{
                            
                            
                            for i in buscar{
                                
                                
                                if let dictpo = i as? NSDictionary {
                                    var nombrehelado : String = ""
                                    var preciohelado : String = ""
                                    if let coco = dictpo.value(forKey: "title") as? String{
                                        nombrehelado = coco
                                    }
                                    
                                    if let fe = dictpo.value(forKey: "custom_fields") as? NSDictionary{
                                       
                                        
                                        
                                       
                                        
                                        if let precio = fe.value(forKey: "precio") as? NSArray{
                                            for i in precio{
                                                if let precio = i as? String{
                                                    preciohelado = precio
                                                }
                                            }
                                        }
                                        
                                        
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProductoDetalle" {
            let destino = segue.destination as! detalleproducto
            destino.helado = DatosHelados.helados[(tvHelados.indexPathForSelectedRow?.row)!]
    }
    
 
}
