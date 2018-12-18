
import UIKit

class VerdeViewController: UIViewController {
    
    var numero = 0
    
    override func viewWillAppear(_ animated: Bool) {
        print(numero)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("soy el verde")
    }

    @IBAction func atras(_ sender: UIButton) {
        dismiss(animated: true) {
            print("me he ido atrás")
        }
    }

}
