import concurso.*
object mozart {
  var recibioAjustes = false

  method valorar(participante) {
    const valoracion = participante.calidad() * 2
    const valoracionFinal = if (not(recibioAjustes)) { 10.min(valoracion)} else { 8.min(valoracion) }
    participante.recibeValoracion(valoracionFinal)
    return valoracionFinal
  }
  method recibeAjustes() {
    recibioAjustes = true
  }

}

object beethoven {
  var recibioAjustes = false
  var animo = enojado.bonus()
  
  method cambiarEstadoDeAnimo(nuevoAnimo) {
    animo = nuevoAnimo.bonus()
  }

  method bonusDeAnimo() {
    return if (not(recibioAjustes)) { animo } else { animo - 1}
  }
    

    method valorarPorEscenario(participante) {
      return participante.ocupacionDeEscenario() / concurso.escenario() * 10
    }

  method valorar(participante) {
    const valoracionFinal 10.min(self.valorarPorEscenario(participante) + self.bonusDeAnimo())
    participante.recibeValoracion(valoracionFinal)
    return valoracionFinal
    }
  
  method lleganBuenasNoticias() {
    entusiasmado.setNivelDeEntusiasmo(5)
    animo = entusiasmado.bonus()
  }

  method recibeAjustes() {
    recibioAjustes = true
  }

}

object enojado {
  method bonus() {
    return 1
  }
}
object entusiasmado {
  var nivelDeEntusiasmo = 4
  
  method bonus() {
    return nivelDeEntusiasmo
  }
  method setNivelDeEntusiasmo(nivel) {
    nivelDeEntusiasmo = nivel
  }
}
object extasiado {
  method bonus() {
    return 6
  }
}