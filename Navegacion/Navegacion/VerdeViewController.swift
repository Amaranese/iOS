
import UIKit

class VerdeViewController: UIViewController {

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
