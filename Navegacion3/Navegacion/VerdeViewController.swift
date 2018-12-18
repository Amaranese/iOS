
import UIKit

// PROTOCOLO-DELEGADO Definición del protocolo
protocol ProtocoloEnviar {
    func enviar(texto: String)
}

class VerdeViewController: UIViewController {
    
    // PROTOCOLO-DELEGADO variable delegado
    var delegado: ProtocoloEnviar?
    
    var numero = 0
    
    override func viewWillAppear(_ animated: Bool) {
        print(numero)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("soy el verde")
    }

    @IBAction func atras(_ sender: UIButton) {
        // PROTOCOLO-DELEGADO Llamada a la función que llega al delegado
        delegado?.enviar(texto: "hola, soy el verde")
        dismiss(animated: true) {
            print("me he ido atrás")
        }
    }

}
