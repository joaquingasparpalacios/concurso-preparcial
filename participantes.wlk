import jurado.*
import concurso.*
object tylorSwift {
    var property costoDeBanda = 1
    var valoracionDeJurados = []

  method calidad() {
    return 5 + costoDeBanda
  }

  method ocupacionDeEscenario() {
    return 20.min(costoDeBanda * 10)
  }

  method practicar() {
    costoDeBanda *= 2
  }

  method recibeValoracion(nuevaValoracion) {
    valoracionDeJurados.add(nuevaValoracion)
  }

  method valoracionPromedio() {
    return (valoracionDeJurados.sum() / valoracionDeJurados.size())
  }
}
object morat {
  const property integrantesDelGrupo = ["Juan", "Pablo", "Simon", "Martin"]
  var valoracionDeJurados = []
  method calidad() {
    return integrantesDelGrupo.size() * 2
  }

  method recibeValoracion(nuevaValoracion) {
    valoracionDeJurados.add(nuevaValoracion)
  }

  method valoracionPromedio() {
    return (valoracionDeJurados.sum() / valoracionDeJurados.size())
  }

  method ocupacionDeEscenario() {
    return 20.min(integrantesDelGrupo.sum({i => i.size()}))
  }
  
  method integrantesDelGrupoConMenosDe6caracteres() {
    return integrantesDelGrupo.filter({i => i.size() < 5})
  }

  method practicar() {
    integrantesDelGrupo.removeAll(self.integrantesDelGrupoConMenosDe6caracteres())
    }
}
object silvioRodriguez {
    method calidad() {
      return 10
    }

    method ocupacionDeEscenario() {
      return 1
    }

    method practicar() {
      //no hace nada, ya es perfecto
    }

    
}

object badBunny {
    var property cantidadDePalabrasDichas = 1000

    method calidad() {
      return 10.min(cantidadDePalabrasDichas / 1000) //cada 1000 palabras dichas hay una que se le entiende, por lo que su calidad aumenta en 1
    }

    method ocupacionDeEscenario() {
        return 4 
    }

    method practicar() {
      //le regala su flor favorita a beethoven y queda extasiado
        beethoven.cambiarEstadoDeAnimo(extasiado)
    }

}
  
