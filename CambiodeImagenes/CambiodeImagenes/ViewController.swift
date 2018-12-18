//
//  ViewController.swift
//  CambiodeImagenes
//
//  Created by Alejandro Marañés on 17/12/2018.
//  Copyright © 2018 Alejandro Marañés. All rights reserved.
//

import UIKit
class ViewController: UIViewController { // Declaracion de los objetos que habra dentro de nustra app
    @IBOutlet weak var boton0: UIButton!
    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    @IBOutlet weak var boton4: UIButton!
    @IBOutlet weak var boton5: UIButton!
    @IBOutlet weak var boton6: UIButton!
    @IBOutlet weak var boton7: UIButton!
    @IBOutlet weak var boton8: UIButton!
    @IBOutlet weak var lbltime: UILabel!
    @IBOutlet weak var btnstart: UIButton!
    var buttons = [UIButton]() // Conjunto de todos los botones que hay dentro
    var images = [UIImage]() // Conjunto de todas las imagenes que hay dentro de la app
    var startimages = [Int]() // todas las imagenes que aparecen al cargar el juego.
    var cuentaatras = 30 // Valor con el cual comienza la cuenta atras el temporizador
    var time = Timer() // Factor que se utiliza para las ordenes que se indiquen dentro de la misma.
    var finishGame = false // factor que indica si dicho juego a acabado o no.
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [boton0,boton1,boton2,boton3,boton4,boton5,boton6,boton7,boton8];//comienzo de las imagenes
        images = [#imageLiteral(resourceName: "440px-Bundesarchiv_Bild_183-71043-0003,_Wladimir_Iljitsch_Lenin"),#imageLiteral(resourceName: "Georgy_Malenkov_1964"),#imageLiteral(resourceName: "Vyacheslav_Molotov_Anefo2"),#imageLiteral(resourceName: "500px-Bundesarchiv_Bild_183-29921-0001,_Bulganin,_Nikolai_Alexandrowitsch"),#imageLiteral(resourceName: "500px-Alexander_Kerensky_LOC_24416")] //Imagenes las cuales están integradas en nuestra app.
        changepositionimage() // declaracion de la accion del camnbio de posicion de las imagenes
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func time(_ sender: UIButton) {// Esta indica la cuenta atras dentro del label de cuenta atras y que comenzara cuando le demos al boton start.
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timelbl), userInfo: nil, repeats: true)
        self.btnstart.isHidden = true
    }
    
    @IBAction func cambio(_ sender: UIButton) { // Esto nos indicara la comprobacion de las imagenes para saber si estan bien o no.
        if sender.tag < 4 {
            sender.setImage(images[sender.tag + 1], for: UIControl.State.normal)
            sender.tag = sender.tag + 1
            checkimages()
        } else {
            sender.tag = 0
            sender.setImage(images[sender.tag], for: UIControl.State.normal)
        }
    }
    @objc func timelbl(){ // declaracion del objeto temporizador
        if cuentaatras == 0 { // esto hace que cuando llegue a cero las imagenes cambiaran de posicion si se cumple
            changepositionimage() // se hace la llamada a la accion de cambio de imagen
            time.invalidate() // parada del cronometro de cuenta atras
        }else{
            cuentaatras -= 1
            lbltime.text = "Time : \(cuentaatras)"
            } // Esto indica que ira de 1 en 1 la cuenta atras
    }
    func checkimages() { // Esta funcion hara que se miren y las imagenes para ver si entan en su posición correcta
        var countImages = 0
        for i in 0...8 {
            if startimages[i] == buttons[i].tag {
                countImages += 10
                lbltime.text = " Puntuation \(countImages)"
            }
        }
        if countImages == 90 {//Puntuacion final que has de tener para haber ganado la partida
            lbltime.text = "You Win"
    }
}
    func changepositionimage(){ // Esta funcion hace que las imagenes cambien de posicion
        for i in  buttons {
            let aleatorynumber = Int(arc4random_uniform(5))
            i.tag = aleatorynumber
            i.setImage(images[aleatorynumber], for: UIControl.State.normal)
            startimages.append(i.tag)
    func checkimages() { // Esta funcion hara que se miren y las imagenes para ver si entan en su posición correcta
        var countImages = 0
        for i in 0...8 {
            if startimages[i] == buttons[i].tag {
                countImages += 10
                lbltime.text = " Puntuation \(countImages)"
            }
        }
        if countImages == 90 {//Puntuacion final que has de tener para haber ganado la partida
        lbltime.text = "You Win"
                }
            }
        }
    }
}
