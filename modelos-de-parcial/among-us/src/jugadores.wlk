import nave.*
import items.*


class Jugador {
	
	var mochila = []
	
	var property nivelDeSospecha = 40
	
	var tareasARealiwzar = []
	
	var impugnado = false
	
	method usarItem(unItem) {
		mochila.remove(unItem)
	}
	
	method buscarItem(unItem) {
		mochila.add(unItem)
	}
	
	method quitarTarea(unaTarea) {
		mochila.remove(unaTarea)
	}
	
	method aumentarSospecha(unaCantidad) {
		nivelDeSospecha += unaCantidad
	}
	
	method reducirSospecha(unaCantidad) {
		nivelDeSospecha -= unaCantidad
	}
	
	method mochilaVacia() = mochila.isEmpty()
	
	method tieneItem(unItem) = mochila.contains(unItem)
		
	method esSospechoso() = nivelDeSospecha > 50
	
	method impugnarse() {
		impugnado = true
	}
	
	method llamarReunionDeEmergencia() {
		nave.reunionDeEmergencia()
	}
	
	
	method completoSusTareas()
	
	
	// Tareas
	method arreglarTableroElectrico()
	method sacarBasura()
	method ventilarNave()
	
	
	
	method jugadorQueVota()
	method sumarTipoDeJugador()
	
}










