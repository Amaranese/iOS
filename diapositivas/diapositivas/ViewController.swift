//
//  ViewController.swift
//  diapositivas
//
//  Created by alumnos on 16/10/18.
//  Copyright © 2018 alumnos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func color(_ sender: Any) {
        view.backgroundColor = UIColor.blue
        view.endEditing(true)
    }
    @IBAction func salir(_ sender: Any) {
        view.endEditing(true)
    }
}






