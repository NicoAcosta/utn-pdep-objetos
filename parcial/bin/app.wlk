import zonas.*
import usuarios.*




object app {
	
	var usuarios = #{}
	var zonas = #{}
	
	method pagarMultas() {
		usuarios.forEach{unUsuario => unUsuario.pagarMultas()}
	}
	
	method zonaMasTransitada() = zonas.max{unaZona => unaZona.cantidadDeUsuariosCirculando()}
	
	
	method usuariosComplicados() = usuarios.filter{unUsuario => unUsuario.esComplicado()}
	
	
	//////////
	
	
	method moverUsuarioA(unUsuario, zonaDeDestino) {
		try {
			const zonaDeOrigen = zonas.find{unaZona => unaZona.estaCirculando(unUsuario)}
			zonaDeOrigen.quitarUsuario(unUsuario)
			zonaDeDestino.agregarUsuario(unUsuario)
		} catch e: ElementNotFoundException {
			console.println("No se encontró a ese usuario en ninguna zona")
		}
	}
	
	method agregarUsuario(unUsuario, unaZona) {
		unaZona.agregarUsuario(unUsuario)
	}
	
}











