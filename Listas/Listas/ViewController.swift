//
//  ViewController.swift
//  Listas
//
//  Created by alumnos on 17/10/18.
//  Copyright © 2018 alumnos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  
    @IBOutlet weak var tabla: UITableView!
    
    var cantantes = ["Enrico Caruso","Luciano Pavarotti","Maria Callas","Beniamino Gigli","Richard Tucker","Giuseppe Di Stefano","Mario del Monaco","Plácido Domingo","Juan Diego Flórez","Evgeny Nikitin","Ildar Abdrazakov","Askar Abdrazakov","Fiódor Chaliapin","Mark Reizen","Boris Shtokolov","Vladímir Chernov","Eduard Jil","Pável Lisitsián","Sviatoslav Smirnov","Irina Arjípova","Olga Borodiná","Larissa Diadkova","Zara Dolujánova","Klavdia Kudriashova","María Maksákova","María Maksákova","Galina Gorchakova","Aida Garifullina","Aida Garifullina","Makvala Kasrashvili","Nina Koshetz","Julia Lezhneva","Félia Litvinne","Yevguenia Mrávina","Anna Netrebko","Claudia Novikova","Galina Vishnévskaya","Nikolái Figner","Ivan Ozhogin","Hermann Jadlowker","Serguéi Lémeshev","Maksim Mirónov"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.dataSource = self
        tabla.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cantantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaID", for: indexPath)
        celda.textLabel?.text = cantantes[indexPath.row]
        return celda
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(indexPath.row, cantantes[indexPath.row])
    }
}
    
   
    

