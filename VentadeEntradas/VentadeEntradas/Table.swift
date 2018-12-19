//
//  Table.swift
//  VentadeEntradas
//
//  Created by Alejandro Marañés on 14/12/2018.
//  Copyright © 2018 Alejandro Marañés. All rights reserved.
//

import UIKit
import Foundation

class Table: UITableViewController {
    
    var nameEvent = " "
    var codeValidation = " "
    var priceEvent = 0 
    var imageEvent = #imageLiteral(resourceName: "220px-Theringpostere")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 100;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return entrada.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let celda = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath) as! Celda
    celda.titulopelicula.text = entrada[indexPath.row].name
    celda.imagencelda.image = entrada[indexPath.row].image
    celda.validationcode = entrada[indexPath.row].validationcode

        return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let detailticket = segue.destination as! detailticket
    let celdapulsada = sender as! Celda

    detailticket.entradapagada = celdapulsada.titulopelicula.text!
    detailticket.imagenpelicula = celdapulsada.imagencelda.image!
    detailticket.codigoentrada = celdapulsada.validationcode
    }
}
