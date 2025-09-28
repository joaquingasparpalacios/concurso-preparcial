 import participantes.*
 
 
 
 object mozart {
    method puntos(participante) = (participante.calidad()*2).min(10)
 }

 object beethoven {
    method puntos(participante) = participante.ocupaDeEscenario() / 10 
    var animo = 1
    method estaEnojado() = true
    method estaEntusiasmado() = false

    method cambiarEstadoAnimico() {
        if(self.estaEnojado()){
            animo = 1
        }else{
            animo = 5 //estaEntusiasmado() = true
        }   
    }

 }