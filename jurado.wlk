 import participantes.*
 
 
 
 object mozart {
    var puntos = 0
    method puntos(participante) = (participante.calidad()*2).min(10)
    method recibirAjuste() {
        puntos = puntos.min(8)
    }
 }

 object beethoven {
    method puntos(participante) = participante.ocupaDeEscenario() / 10 
    var animo = 1
    var estaEntusiasmado = animo.between(2, 5)
    
    method estaEntusiasmado() = estaEntusiasmado
    method cambiarEstadoAnimico(unNumero) {animo = unNumero.min(5)}
    method estaEnojado() {return(animo == 1)}

    method recibeBuenasNoticias(){
        estaEntusiasmado = not(estaEntusiasmado)
        animo = 5
    } 
    method recibirAjuste() {
        if(self.estaEntusiasmado()){
            animo =- 1
        }
    }
 }