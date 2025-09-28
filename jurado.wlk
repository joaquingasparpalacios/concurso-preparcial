 import participantes.*
 
 
 
 object mozart {
    method puntos(participante) = (participante.calidad()*2).min(10)
 }

 object beethoven {
    method puntos(participante) = participante.ocupaDeEscenario() / 10 
    var animo = 1
    var estaEntusiasmado = false

    method estaEnojado() = animo == 1
    method estaEntusiasmado() = estaEntusiasmado

    method recibeBuenasNoticias() {
        animo = 5
        estaEntusiasmado = true
    } 

 }