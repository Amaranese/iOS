
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contadorLabel: UILabel!
    var contador = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        contadorLabel.text = String(contador)
    }
    
    @IBAction func sumarUno(_ sender: Any) {
        contador += 1
        contadorLabel.text = String(contador)
    }
    
    @IBAction func numeroUsuario(_ sender: UITextField) {
        let numero = Int(sender.text!)
        
        if let n = numero { // Guard
            contador = n;
            contadorLabel.text = String(contador)
            sender.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            sender.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
    }
}

