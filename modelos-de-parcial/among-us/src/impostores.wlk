import jugadores.*
import nave.*



class Impostor inherits Jugador {
	
	
	override method completoSusTareas() = true
	
	// Sabotajes
	
	method sospechaDeSabotaje() {
		self.aumentarSospecha(5)
	}
	
	method reducirOxigeno(unaCantidad) {
		if (!nave.algunoTieneTuboDeOxigeno()) {
			nave.reducirOxigeno(10)
		}
		self.sospechaDeSabotaje()
		
	}
	
	method impugnarJugador(unJugador) {
		unJugador.impugnarse()
		self.sospechaDeSabotaje()
	}
	
	override method voto() = nave.jugadorRandom()
	
	override method sumarTipoDeJugador() {
		nave.sumarImpostor()
	}
	
	
	
		
}

