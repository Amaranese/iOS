

import UIKit

class AzulViewController: UIViewController, ProtocoloEnviar { // PROTOCOLO-DELEGADO Heredamos del protocolo Enviar
    
    var algo = ""
    
    // PROTOCOLO-DELEGADO Implementamos la función del protocolo Enviar
    func enviar(texto: String) {
        algo = texto
        print("Ha llegado el mensaje:", algo)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Muestro el mensaje:", algo)
    }
    
    @IBAction func irAlRojo(_ sender: UIButton) {
        performSegue(withIdentifier: "irAlRojo", sender: sender)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is VerdeViewController {
            let verdeVC = segue.destination as! VerdeViewController
            verdeVC.numero = 10
            
            // PROTOCOLO-DELEGADO Asignamos este ViewController como delegado
            verdeVC.delegado = self
        }
    }
    
}

