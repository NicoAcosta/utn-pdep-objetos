import nave.*
import items.*


class Jugador {
	
	var mochila = 0
	
	var nivelDeSospecha = 40
	
	var tareasPendientes
	
	var impugnado = false
	
	method usarItem(unItem) {
		mochila.remove(unItem)
	}
	
	method buscarItem(unItem) {
		mochila.add(unItem)
	}
	
	method quitarTarea(unaTarea) {
		tareasPendientes.remove(unaTarea)
	}
	
	method aumentarSospecha(unaCantidad) {
		nivelDeSospecha += unaCantidad
	}
	
	method reducirSospecha(unaCantidad) {
		nivelDeSospecha -= unaCantidad
	}
	
	method mochilaVacia() = mochila.isEmpty()
	
	method tieneItem(unItem) = mochila.contains(unItem)
	
	method tieneItems(unosItems) = unosItems.forEach{unItem => self.tieneItem(unItem)}
		
	method esSospechoso() = nivelDeSospecha > 50
	
	method impugnarse() {
		impugnado = true
	}
	
	method llamarReunionDeEmergencia() {
		nave.reunionDeEmergencia()
	}
	
	
	method completoSusTareas()
	
	
	method realizarTarea(unaTarea)
	
	method voto()
	method sumarTipoDeJugador()
	
}










