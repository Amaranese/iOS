//
//  DetailTicket.swift
//  VentadeEntradas
//
//  Created by Alejandro Marañés on 14/12/2018.
//  Copyright © 2018 Alejandro Marañés. All rights reserved.
//

import UIKit

class detailticket: UIViewController {
@IBOutlet weak var imagedetail: UIImageView!
@IBOutlet weak var codigo: UILabel!
@IBOutlet weak var nombrepelicula: UILabel!
    
    var entradapagada = " "
    var codigoentrada = " "
    var imagenpelicula = #imageLiteral(resourceName: "220px-Theringpostere")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    imagedetail.image = imagenpelicula
    codigo.text = codigoentrada
    nombrepelicula.text = entradapagada
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
    }

