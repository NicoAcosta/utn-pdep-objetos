import jugadores.*
import nave.*
import items.*



class Tripulante inherits Jugador {
	
	
	
	override method completoSusTareas() = tareasPendientes.isEmpty()
	
	
	override method realizarTarea(unaTarea) {
		
		unaTarea.hacerTarea(self)
		
	}
	
	override method sumarTipoDeJugador() {
		nave.sumarTripulante()
	}
	
	override method voto() {
		 
		 if (impugnado) {
		 	impugnado = false
		 	return null
		 }
		 
		 return self.preferenciaDeVoto()
	}
	
	method preferenciaDeVoto()
	
	
	
}









class Troll inherits Tripulante {
	
	override method preferenciaDeVoto() = nave.elegirNoSospechoso()
	
}

class Detective inherits Tripulante {
	
	override method preferenciaDeVoto() = nave.jugadorMasSospechoso()
	
}

class Materialista inherits Tripulante {
	
	override method preferenciaDeVoto() = nave.elegirMochilaVacia()
	
}






