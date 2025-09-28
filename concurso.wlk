import jurado.*
import participantes.*

object concurso {
  
    var property escenario = 20

    const participantes = []

    method inscribirParticipante(unParticipante) {
      participantes.add(unParticipante)
    }
    method darDeBaja(unParticipante){
        participantes.remove(unParticipante)
    } 

    method practicarParticipantes() {
      participantes.forEach({p => p.practicar()})
    }
}

object eventosEspeciales {
  
  method realizarAjusteA(unPersonaje) {
    unPersonaje.recibirAjuste()
  }

}

