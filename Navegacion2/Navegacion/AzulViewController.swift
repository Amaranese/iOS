

import UIKit

class AzulViewController: UIViewController {
    
    var algo = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print("soy el azul")
    }
    
    @IBAction func irAlRojo(_ sender: UIButton) {
        performSegue(withIdentifier: "irAlRojo", sender: sender)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is VerdeViewController {
            let verdeVC = segue.destination as! VerdeViewController
            verdeVC.numero = 10
        }
    }
    
}

