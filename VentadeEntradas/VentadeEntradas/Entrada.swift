//
//  Entrada.swift
//  VentadeEntradas
//
//  Created by Alejandro Marañés on 12/12/2018.
//  Copyright © 2018 Alejandro Marañés. All rights reserved.
//

import Foundation
import UIKit

class Entrada {
    
    var name : String
    
    var image : UIImage
    
    var tickets : String
    
    var validationcode : String
    
    init (name:String, image:UIImage, tickets:String, validationcode:String){
        
        self.name = name
        self.image = image
        self.tickets = tickets
        self.validationcode = validationcode
    }

}



