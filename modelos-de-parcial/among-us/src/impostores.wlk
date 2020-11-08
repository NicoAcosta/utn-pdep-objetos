import jugadores.*
import nave.*



class Impostor inherits Jugador {
	
	
	override method completoSusTareas() = true
	
	
	
	
	// Tareas
	
	override method arreglarTableroElectrico() {}
	override method sacarBasura() {}
	override method ventilarNave() {}
	
	
	// Sabotajes
	
	method reducirOxigeno(unaCantidad) {
		if (!nave.algunoTieneTuboDeOxigeno()) {
			nave.reducirOxigeno(10)
		}
	}
	
	method impugnarJugador(unJugador) {
		unJugador.impugnarse()
	}
	
	override method jugadorQueVota() = nave.jugadorRandom()
	
	override method sumarTipoDeJugador() {
		nave.sumarImpostor()
	}
	
	
}

