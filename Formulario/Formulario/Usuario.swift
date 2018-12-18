
import Foundation

class Usuario {
    var nombre : String
    var edad : Int
    var estadoCivil : Bool
    
    init(nombre: String, edad: Int, estadoCivil: Bool) {
        self.nombre = nombre
        self.edad = edad
        self.estadoCivil = estadoCivil
    }
}
