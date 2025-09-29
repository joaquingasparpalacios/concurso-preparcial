import jurado.*
object concurso {
  var escenario = 20 //m2
  const property jurado = [mozart, beethoven]
  const property participantes = []

  method inscribirParticipante(participante) {
    participantes.add(participante)
  }

  method darDeBajaA(participante) {
    participantes.remove(participante)
  }

  method valorarAUnParticipante(participante) {
    jurado.forEach({j => j.valorar(participante)})
  }

  method valorarATodosLosParticipantesInscriptos() {
    participantes.forEach({p => self.valorarAUnParticipante(p)})
  }

  method ganadorDelConcurso() {
    return participantes.max({p => p.valoracionPromedio()})
  }

  method entrenar() {
    participantes.forEach({p => p.practicar()})
  }

  method escenario() = escenario
  method ampliarEscenario(mts) {
    escenario += mts
  }

  method juradoRecibeUnAjuste() {
    jurado.forEach({j => j.recibeAjustes()})
  }
}