//
//  ColorViewController.swift
//  Navegacion
//
//  Created by Alejandro Marañés on 21/11/2018.
//  Copyright © 2018 alumnos. All rights reserved.
//

import UIKit

class ColorViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        

        return cell
    }
   

   

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }
 

}
