
import UIKit

class PantallaRojaVC: UIViewController {
    
    @IBAction func cambiarColor(_ sender: Any) {
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        view.endEditing(true)
    }
    
    @IBAction func exit(_ sender: Any) {
        view.endEditing(true)
    }
    
}
