//
//  ViewController.swift
//  VentadeEntradas
//
//  Created by Alejandro Marañés on 03/12/2018.
//  Copyright © 2018 Alejandro Marañés. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
@IBOutlet weak var Fecha: UIDatePicker!
@IBOutlet weak var pickerView: UIPickerView!
@IBOutlet weak var quantLabel: UILabel!
@IBOutlet weak var valueLabel: UILabel!
@IBOutlet weak var stepper: UIStepper!
@IBOutlet weak var imagenes: UIImageView!

    
var imageArray:[UIImage] = [#imageLiteral(resourceName: "220px-Theringpostere"), #imageLiteral(resourceName: "chicosdelmaiz"), #imageLiteral(resourceName: "elexorcista"), #imageLiteral(resourceName: "hausu")]
var validationcode = ""
    
let peliculas = ["The Ring ","Los chicos del Maiz","El Exorcista","Hausu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.wraps = false
        stepper.autorepeat = false
        stepper.maximumValue = 1000
        stepper.minimumValue = 0
       self.pickerView.dataSource = self
        self.pickerView.delegate = self
        
    preparedata()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return peliculas[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return peliculas.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imagenes.image = imageArray[row]
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        quantLabel.text = Int(sender.value).description
        var totalPrice: Int = 0
        var quantityTickets: Int = 0
        quantityTickets = Int(sender.value)
        var priceforticket: Int = 12;
        totalPrice = quantityTickets * priceforticket
        valueLabel.text = String(totalPrice) + " € "
        quantLabel.text = String(quantityTickets) + " ticket "
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let label = pickerView.selectedRow(inComponent: 0)
        
        let buyticket = Entrada(name: peliculas[label], image: imagenes.image!, tickets: quantLabel.text!, validationcode : validationcode)
        entrada.append(buyticket)
        saveData()
    }
    
    func Stringr(size: UInt)->String{
        let words = "1234567890qQwWeErRtTyYuUiIoOpPaAsSdDfFgGhHjJkKlLzZxXcCvVbBnNmM"
        validationcode = ""
        
        for _ in 0..<size {
            
            let Irandom = arc4random_uniform(UInt32(words.count))
            let Ichar = words.index(words.startIndex, offsetBy: Int(Irandom))
            validationcode.append(String(words[Ichar]))
        }
        return validationcode
    }
    
    @IBAction func buytickets(_ sender: UIButton) {
        
        Stringr(size: 12)
        print(validationcode)
    }
    
}
