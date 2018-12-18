//
//  ViewController.swift
//  severTest
//
//  Created by alumnos on 13/12/18.
//  Copyright © 2018 alumnos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descargarImagen()
        
        listaUsuarios()
        
        registrarUsuario(user: "rick", pass: 1111)
    }

    func descargarImagen() {
        let url = URL(string: "https://www.cev.com/wp-content/uploads/2017/11/GUILLERMO-BLANCA.jpg")
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url!)
                DispatchQueue.main.async {
                    self.imagen.image = UIImage(data: data)
                }
            } catch  {
                print("Error")
            }
        }
    }

    func listaUsuarios() {
        let url = URL(string: "http://private-088c5a-usuarios4.apiary-mock.com/users")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    let users = try JSONDecoder().decode([Usuario].self, from: data!)
                    for u in users {
                        print(u.user, u.pass)
                    }
                } catch let error {
                    print(error)
                }
            } else {
                print(error!)
            }
        }.resume()
    }

    func registrarUsuario(user: String, pass: Int) {
        let url = URL(string: "http://private-088c5a-usuarios4.apiary-mock.com/register")
        var peticion = URLRequest(url: url!)
        peticion.httpMethod = "POST"
        let parametros = "user=\(user)&pass=\(pass)"
        peticion.httpBody = parametros.data(using: .utf8)
        URLSession.shared.dataTask(with: peticion) { (data, response, error) in
            if error == nil {
                print(response!)
                print(String(data: data!, encoding: .utf8)!)
            } else {
                print(error!)
            }
        }.resume()
    }
}

