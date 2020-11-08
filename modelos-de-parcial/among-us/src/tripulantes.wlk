import jugadores.*
import nave.*
import items.*



class Tripulante inherits Jugador {
	
	
	
	override method completoSusTareas() = tareasARealizar.isEmpty()
	
	
	
	// Tareas
	
	override method arreglarTableroElectrico() {
		
		if (self.tieneItem(llaveInglesa)) {
			
			self.aumentarSospecha(10)
			self.quitarTarea(arreglarTableroElectrico)
			
		}
		
	}
	
	override method sacarBasura() {
		
		if (self.tieneItem(escoba) && self.tieneItem(bolsaDeConsorcio)) {
			
			self.reducirSospecha(4)
			self.quitarTarea(sacarBasura)
				
		}		
	}
	
	override method ventilarNave() {
		nave.aumentarOxigeno(5)
	}
	
	
	
	
	override method sumarTipoDeJugador() {
		nave.sumarTripulante()
	}
	
	
	
}



class Troll inherits Tripulante {
	
	override method jugadorQueVota() = nave.elegirNoSospechoso()
	
}

class Detective inherits Tripulante {
	
	override method jugadorQueVota() = nave.jugadorMasSospechoso()
	
}

class Materialista inherits Tripulante {
	
	override method jugadorQueVota() = nave.elegirMochilaVacia()
	
}






