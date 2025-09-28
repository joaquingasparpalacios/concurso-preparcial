import jurado.*

object taylorswift {
    var costoBanda = 1
    
    method actualizarCostoBande(unCosto) {costoBanda = unCosto}
    method tieneBanda() = true 
   
    method calidad() = 5 + costoBanda
    method ocupaDeEscenario() = (costoBanda * 10).min(20)

    method practicar() {
        costoBanda = costoBanda * 2
    }
}

object morat {

    const integrantesDeLaBanda = []

    method tieneBanda() = true 
   
    method calidad() = integrantesDeLaBanda.size() * 2
    method ocupaDeEscenario() {
        return(
            (integrantesDeLaBanda.fold(0, {i => i.length()})).min(20)
        )
    }
    
    method unirALaBanda(unaPersona) {integrantesDeLaBanda.add(unaPersona)}
    method seVaDeLaBanda(unaPersona) {integrantesDeLaBanda.remove(unaPersona)} //agregado para realizar pruebas

        //entrenamiento
    
    method practicar() {integrantesDeLaBanda.remove(self.integratesConMasDe5Caracteres())}
    
    method integratesConMasDe5Caracteres() {
        return integrantesDeLaBanda.filter({i => i.length()} > 5)
    }

        
}

object silvioRodriguez {

    method tieneBanda() =  false
    method calidad() = 10
    method ocupaDeEscenario() = 1  

    method practicar() {}
  
}

object badBunny {
    
    var calidad = 5
    var tieneBanda = false
    const decoracionEscenario = []

    method calidad() = calidad + self.adquiereBandaParaElShow() + self.calidadDecoracionEscenario()
    method ocupaDeEscenario() = (1 + self.cantidadDeDecoracion()).min(20)

    
    method adquiereBandaParaElShow() {
        tieneBanda = not(tieneBanda)
        return(10)
    }

    method calidadDecoracionEscenario() {
        return (decoracionEscenario.calidadDeDecorado().sum())
    }

    method agregarDecoracionAlEscenario(unObjeto) {
        decoracionEscenario.add(unObjeto)
    } 
    method cantidadDeDecoracion() = decoracionEscenario.size()
    method practicar() {
        calidad = calidad * 2
    }
}

//decoraciones posibles
object luces {
    var cantLuces = 0
    method añadirLuces(cantidad) {
      cantLuces =+ cantidad
    }
    method calidadDeDecorado() = if (cantLuces <= 10)  1 else 3
}

object efectosVisuales {
    method canlidadDeDecorado() = 2 
}

object fuegosArtificiales {
    method calidadDeDecorado() = 1 
}