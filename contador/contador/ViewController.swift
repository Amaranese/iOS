import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var contado: UILabel!
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contado.text = "0"
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
    @IBAction func sumar(_ sender: AnyObject) {
        i = i + 1
        self.contado.text = String(i)
    }
    @IBAction func numerousuario(_ sender: UITextField) {
        let numero = Int(sender.text!)
        
        if let n = numero{
            i = n;
            contado.text = String(i)
            sender.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            sender.textColor = #colorLiteral(red: 1, green: 0.1273401127, blue: 0, alpha: 1)
        }
    }
}
