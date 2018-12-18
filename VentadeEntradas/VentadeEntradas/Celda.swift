//
//  Celda.swift
//  VentadeEntradas
//
//  Created by Alejandro Marañés on 18/12/2018.
//  Copyright © 2018 Alejandro Marañés. All rights reserved.
//

import UIKit

class Celda: UITableViewCell {
    
    @IBOutlet weak var imagencelda: UIImageView!
    @IBOutlet weak var titulopelicula: UILabel!
    
    var validationcode = " "
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
