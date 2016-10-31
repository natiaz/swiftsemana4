//: Velocímetro - Tarea semana 4

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 150
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades

    
    init() {
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
        let actual : Int = velocidad.rawValue
        let velocidadEnCadena = String(velocidad)

        return(actual, velocidadEnCadena)
    }
}

var coche = Auto()
var tipos : [Velocidades] = [Velocidades.Apagado, Velocidades.VelocidadBaja, Velocidades.VelocidadMedia, Velocidades.VelocidadAlta]
var control : Int = 0

for i in 1...20 {
    
    
    
    coche.velocidad = tipos[control]
    let resultado = coche.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")

    if control == tipos.count - 1
    {
        --control
    }
    else
    {
        ++control
    }
    

}



