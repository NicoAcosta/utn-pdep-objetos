import jugadores.*
import items.*


class GanaronLosImpostoresException inherits Exception {}
class GanaronLosTripulantesException inherits Exception {}



object nave {
	
	var jugadores
	
	var nivelDeOxigeno
	
	var tripulantes
	
	var impostores
	
	method aumentarOxigeno(unaCantidad) {
		nivelDeOxigeno += unaCantidad
	}
	
	method reducirOxigeno(unaCantidad) {
		nivelDeOxigeno -= unaCantidad
		if (nivelDeOxigeno <= 0) {
			throw new GanaronLosImpostoresException()
		}
	}
	
	method quitarJugador(unJugador) {
		jugadores.remove(unJugador)
	}
	
	method algunoTieneTuboDeOxigeno() = jugadores.any({jugador => jugador.tieneItem(tuboDeOxigeno)})
	
	method verificarTareas() {
		if (jugadores.all{jugador => jugador.completoSusTareas()}) {
			throw new GanaronLosTripulantesException()
		}
	}
	
	method jugadorRandom() = jugadores.anyOne()
	
	method jugadorRandomNoSospechoso() = jugadores.filter{jugador => !jugador.esSospechoso()}.anyOne()
	
	method elegirNoSospechoso() {
		
		if (!jugadores.filter{jugador => !jugador.esSospechoso()}.isEmpty())
			return self.jugadorRandomNoSospechoso()
		else
			return null
		
	}
	
	method jugadorRandomMochilaVacia() = jugadores.filter{jugador => jugador.mochilaVacia()}.anyOne()
	
	method elegirMochilaVacia() {
		
		if (!jugadores.filter{jugador => jugador.mochilaVacia()}.isEmpty())
			return self.jugadorRandomMochilaVacia()
		else
			return null
		
	}
	
	method jugadorMasSospechoso() = jugadores.max{jugador => jugador.nivelDeSospecha()}
	
	method sumarTripulante() {
		tripulantes += 1
	}
	
	method sumarImpostor() {
		impostores += 1
	}
	
	
	method actualizarTiposDeJugadores() {
		impostores = 0
		tripulantes = 0
		
		jugadores.forEach{jugador => jugador.sumarTipoDeJugador()}
	}
	
	
	method reunionDeEmergencia() {
		
		const votos = jugadores.map{jugador => jugador.jugadorQueVota()}.filter{voto => voto != null}
		
		const jugadorMasVotado = jugadores.max{jugador => votos.occurrencesOf(jugador)}
		
		self.quitarJugador(jugadorMasVotado)
		
		self.actualizarTiposDeJugadores()
		
		if (impostores == 0) {
			throw new GanaronLosTripulantesException()
		}
		
		if (tripulantes == 0) {
			throw new GanaronLosImpostoresException()
		}
		
	}
	
	
	
	
	
	
}
