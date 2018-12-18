

import Foundation

let diccionario = ["hola":"hello", "guapo": "pretty", "Adios":"bye", "soy":"I am", "Feo":"Ugly"]

func traducir(palabra:String) -> String{
    return diccionario[palabra] ?? "WTF"
}

func fraseApalabra(frase:String) -> [String]{
    var palabras = [String]()
    var palabra = ""
    for letra in frase{
        if letra == " "{
            palabras.append(palabra)
        } else {
            palabra.append(letra)
        }
    }
    return palabras
}
func pruebasTraductor(){
//    print("dime una palabra")
//    let entrada = readLine()
//    print (traducir(palabra: entrada!))
    let palabras = fraseApalabra(frase: "Hola que tal??")
    print(palabras)
}
