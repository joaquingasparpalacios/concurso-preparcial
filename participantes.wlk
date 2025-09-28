import jurado.*

object taylorswift {
    var costoBanda = 1
    
    method actualizarCostoBande(unCosto) {costoBanda = unCosto}
    method tieneBanda() = true 
   
    method calidad() = 5 + costoBanda
    method ocupaDeEscenario() = (costoBanda * 10).max(20)

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
            (integrantesDeLaBanda.fold(0, {i => i.length()})).max(20)
        )
    }
    
    method unirALaBanda(unaPersona) {integrantesDeLaBanda.add(unaPersona)}
    
    method seVaDeLaBanda(unaPersona) {integrantesDeLaBanda.remove(unaPersona)} //agregado para realizar pruebas

        //entrenamiento
    
    method practicar() {self.seVaDeLaBanda(self.integrateConMasDe5Caracteres())}
    
    method integrateConMasDe5Caracteres() {
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
    var cantMiembrosBanda = 0
    const decoracionEscenario = []
    method tieneBanda() = tieneBanda 
    method calidad() = calidad
    method ocupaDeEscenario() = (1 + self.cantidadDeDecoracion() + (cantMiembrosBanda / 2)).max(20) 

    method cantMiembrosBanda() = cantMiembrosBanda
    method adquiereBandaParaElShow(cantidadMiembros) {
        tieneBanda = not(tieneBanda)
        cantMiembrosBanda = cantidadMiembros
        calidad =+ 3
    }

    method calidadDecoracionEscenario() {
        calidad = calidad + decoracionEscenario.calidadDeDecorado().sum()
    }

    method agregarDecoracionAlEscenario(unObjeto) {
        decoracionEscenario.add(unObjeto)
    } 
    method cantidadDeDecoracion() = decoracionEscenario.sum({d => d.cantidadQueOcupa()})
    method practicar() {
        calidad = calidad * 2
        cantMiembrosBanda =- 1

    }
    
}

//decoraciones posibles
object luces {
    var cantLuces = 0
    var cantidadQueOcupa = 0
    method añadirLuces(cantidad) {
      cantLuces =+ cantidad
    }
    method cantidadQueOcupa() {
        if (cantLuces >=10){
            return(15)
        } else {
            return(5)
        }
    }
    method calidadDeDecorado(){
        if(cantidadQueOcupa.between(10, 15)){
            return(10)
        }else if(cantidadQueOcupa.between(1, 9)){
            return(5)
        }else{
            return(0)
        }
    }
    
}

object pantallaGigante {
    method canlidadDeDecorado() = 2 
    method cantidadQueOcupa() = 1
}

object fuegosArtificiales {
    method calidadDeDecorado() = 1 
    method cantidadQueOcupa() = 3
}