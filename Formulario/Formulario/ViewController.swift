
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var estadoCivil: UISwitch!
    @IBOutlet weak var estadoCivilLabel: UILabel!
    @IBOutlet weak var edad: UISlider!
    @IBOutlet weak var edadNumero: UILabel!
    @IBOutlet weak var guardarButton: UIButton!
    
    var usuarios = [Usuario]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func nombreCambiado(_ sender: UITextField) {
        if (sender.text?.isEmpty)! {
            guardarButton.isEnabled = false
        } else {
            guardarButton.isEnabled = true
        }
    }
    
    @IBAction func guardar(_ sender: Any) {
        let usuario = Usuario(nombre: nombre.text!, edad: Int(edad.value), estadoCivil: estadoCivil.isOn)
        
        usuarios.append(usuario)
        
        for usuario in usuarios {
            print(usuario.nombre, usuario.edad, usuario.estadoCivil)
        }
    }
    
    @IBAction func edadCambiada(_ sender: UISlider) {
        edadNumero.text = String(Int(sender.value))
    }
    
    @IBAction func estadoCivilCambiado(_ sender: UISwitch) {
        if sender.isOn {
            estadoCivilLabel.text = "Casado"
        } else {
            estadoCivilLabel.text = "Soltero"
        }
        
    }
}

