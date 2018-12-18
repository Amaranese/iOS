import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var Saludo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("vistas cargadas")
        
    }
    @IBAction func Pulsa(_ sender: Any){
        Saludo.text = "Adiós"
        print("botón pulsado")
        }
        
    }

