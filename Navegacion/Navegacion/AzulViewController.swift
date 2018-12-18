

import UIKit

class AzulViewController: UIViewController {
    
    var algo = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print("soy el azul")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(algo)
    }
    
    @IBAction func irAlRojo(_ sender: UIButton) {
        performSegue(withIdentifier: "irAlRojo", sender: sender)
    }

}

