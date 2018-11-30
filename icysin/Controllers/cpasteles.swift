//
//  cpasteles.swift
//  icysin
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

class pastel: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var tvpastelles: UITableView!
    
    var urlpastelitos = "https://icysinhelados.azurewebsites.net/?json=get_posts&post_type=pasteles"
    var encontrada : String = ""
    
    func  tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosPastel.pasteles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdapostre") as! cellpastel
        celda.lblnombrepo.text = DatosPastel.pasteles[indexPath.row]?.nombre
        celda.lblpreciopastel.text = DatosPastel.pasteles[indexPath.row]?.Precio
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func viewDidLoad() {
        urlpastelitos = "https://icysinhelados.azurewebsites.net/?json=get_posts&post_type=pasteles"
        
        
        Alamofire.request(urlpastelitos).responseJSON { response in
            if let dictRespusta = response.result.value as? NSDictionary{
                if let respuesta = dictRespusta.value(forKey: "status") as? String {
                    self.encontrada = respuesta
                }
                
                if self.encontrada == "ok" {
                    if let buscar = dictRespusta.value(forKey: "posts") as? NSArray{
                        
                        
                        for i in buscar{
                            
                            
                            if let dictpo = i as? NSDictionary {
                                var nombrepastel : String = ""
                                var preciopastel : String = ""
                                if let coco = dictpo.value(forKey: "title") as? String{
                                    nombrepastel = coco
                                }
                                
                                if let fe = dictpo.value(forKey: "custom_fields") as? NSDictionary{
                                    
                                    
                                    
                                    
                                    
                                    if let precio = fe.value(forKey: "precio") as? NSArray{
                                        for i in precio{
                                            if let precio = i as? String{
                                                preciopastel = precio
                                            }
                                        }
                                    }
                                    
                                    
                                }
                                
                                DatosPastel.pasteles.append(Pastel(nombre: nombrepastel, Precio: preciopastel, Descripcion: "", urlPoster: ""))
                            }
                        }
                        self.tvpastelles.reloadData()
                    }
                }
            }
        }
    }
    
}
