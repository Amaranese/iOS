import UIKit
class TableViewController: UITableViewController {
    var colores = [UIColor]()
    let numerodecolores = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...numerodecolores {
            let rojo = CGFloat(arc4random()) / CGFloat(UINT32_MAX)
            let verde = CGFloat(arc4random()) / CGFloat(UINT32_MAX)
            let azul =  CGFloat(arc4random()) / CGFloat(UINT32_MAX)
            colores.append(UIColor(red: rojo, green: verde, blue: azul, alpha: 1))
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colores.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "miID", for: indexPath)
        cell.backgroundColor = colores[indexPath.row]
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let celda = sender as! UITableViewCell
       segue.destination.view.backgroundColor = celda.backgroundColor
    }
}
