//
//  Datos.swift
//  VentadeEntradas
//
//  Created by Alejandro Marañés on 14/12/2018.
//  Copyright © 2018 Alejandro Marañés. All rights reserved.
//

import UIKit
import Foundation

let persistence = UserDefaults.standard

var savedticket = [String]()
var validationcodesaved = [String]()

var eventImages = [#imageLiteral(resourceName: "220px-Theringpostere"), #imageLiteral(resourceName: "chicosdelmaiz"), #imageLiteral(resourceName: "elexorcista"), #imageLiteral(resourceName: "hausu")]

func saveData() {
    savedticket.removeAll()
    validationcodesaved.removeAll()
    
    for a in entrada
    {
        savedticket.append(a.name)
    }
    persistence.set(savedticket, forKey : "Entradas")
    
    for a in entrada
    {
        validationcodesaved.append(a.validationcode)
    }
    persistence.set(validationcodesaved, forKey: "CodigoPelicula")
    }
func preparedata() {
    if let data = persistence.array(forKey: "Entradas") as? [String]
    {
        savedticket = data
    }
    entrada.removeAll()
    if let code = persistence.array(forKey: "CodigoPelicula") as? [String]
    {
        validationcodesaved = code
    }
    entrada.removeAll()
    
    if savedticket.count == 0
    {
        return
    }
    for i in 0...savedticket.count - 1 {
        let ticket = Entrada(name: savedticket[i], image: #imageLiteral(resourceName: "220px-Theringpostere"), tickets: " ", validationcode: validationcodesaved[i])
        entrada.append(ticket)
        }
    asociateimage()
}
func asociateimage() {
    for i in entrada {
        
        switch i.name {
        case "220px-Theringpostere" :
            i.image = eventImages[0]
            break
        case "chicosdelmaiz" :
            i.image = eventImages[1]
            break
        case "elexorcista" :
            i.image = eventImages[2]
            break
        case "hausu" :
            i.image = eventImages[3]
            break
            
        default:
            break
            
        }
        
    }
}

