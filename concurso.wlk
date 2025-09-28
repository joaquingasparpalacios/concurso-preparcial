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

    method practicar() {
      participantes.forEach({p => p.practicar()})
    }
}


