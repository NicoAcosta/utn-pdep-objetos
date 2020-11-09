import jugadores.*
import nave.*
import items.*



class Tarea {
	
	const itemsNecesarios
	
	method condicion(unJugador) = unJugador.tieneItems(itemsNecesarios)
	
	method consecuenciasJugador(unJugador)
	method consecuenciasNave()

	method verificarTareas(){
		nave.verificarTareas()
	}
	
	method hacerTarea(unJugador) {
		
		if (self.condicion(unJugador)) {
			
			self.consecuenciasJugador(unJugador)
			self.consecuenciasNave()
			
			self.verificarTareas()
			
		}
	}
	
}






object arreglarElTableroElectrico inherits Tarea(itemsNecesarios = [llaveInglesa]) {
	
	override method consecuenciasJugador(unJugador) {
		unJugador.aumentarSospecha(10)
	}
	
	override method consecuenciasNave() {
		nave.aumentarOxigeno(10)
	}
	
}

object sacarLaBasura inherits Tarea(itemsNecesarios = [escoba, bolsaDeConsorcio]) {
	
	override method consecuenciasJugador(unJugador) {
		unJugador.reducirSospecha(4)
	}
	
	override method consecuenciasNave() {}
}

object ventilarLaNave inherits Tarea(itemsNecesarios = []) {
	
	override method consecuenciasJugador(unJugador) {}
	
	override method consecuenciasNave() {
		nave.aumentarOxigeno(5)
	}
}


