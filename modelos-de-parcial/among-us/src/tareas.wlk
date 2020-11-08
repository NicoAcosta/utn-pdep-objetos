import jugadores.*
import nave.*
import items.*



class Tarea {
	
	var jugador
	
	method realizar()
	
	method verificarTareas(){
		nave.verificarTareas()
	}
	
}

class ArreglarElTablero inherits Tarea {
	
	
	override method realizar() {
		
		jugador.arreglarTableroElectrico()
		self.verificarTareas()
		
	}
	
	
}

class SacarBasura inherits Tarea {
	
	
	override method realizar() {
		
		jugador.sacarBasura()
		self.verificarTareas()
		
	}
	
	
}

class VentilarNave inherits Tarea {
	
	
	override method realizar() {
		
		jugador.ventilarNave()
		self.verificarTareas()
		
	}
	
	
}