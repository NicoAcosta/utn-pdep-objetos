import usuarios.*
import multas.*

class Zona {
	
	var usuariosCirculando
	const velocidadPermitida
	
	method cantidadDeUsuariosCirculando() = usuariosCirculando.size()
	
	method esDiaPar() = new Date().day().even()
	
	//	podría haber hecho estas verificaciones del lado del usuario, pero me parecía más de sentido común
	//	que las haga el control de la zona
	method excesoDeVelocidad(unUsuario) = unUsuario.velocidadPromedioDelVehiculo() > velocidadPermitida
	
	method infraccionEcologica(unUsuario) = !unUsuario.vehiculoEcologico()
	
	method infraccionRegulatoria(unUsuario) {
		
		if ( self.esDiaPar() )
			return unUsuario.tieneDniImpar()
		else {
			return unUsuario.tieneDniPar()
		}
		
	}
	
	
	//	pensé en pasarle al usuario el costo, y que se genere y agregue la multa
	//	pero tambien por sentido común pensé que la generaria el control y el usuario solo se la agregaría
	method generarMulta(unCosto) {
		return new Multa(costo = unCosto)
	}
	
	/*
	 * Quise abstraer los controles para no repetir lógica,
	 * pero no sabía como pasar la condición por parámetro
	
	method control(unaCondicion, unCostoDeMulta, unUsuario) {
		if (unaCondicion(unUsuario)) {
			unUsuario.agregarMulta(generarMulta(unCostoDeMulta))
		}
	}
	
	*/
	
	method controlDeVelocidad(unUsuario) {
		if (self.excesoDeVelocidad(unUsuario))
			unUsuario.agregarMulta(self.generarMulta(3000))
	}
	
	method controlEcologico(unUsuario) {
		if (self.infraccionEcologica(unUsuario))
			unUsuario.agregarMulta(self.generarMulta(1500))
	}
	
	method controlRegulatorio(unUsuario) {
		if (self.infraccionRegulatoria(unUsuario))
			unUsuario.agregarMulta(self.generarMulta(2000))
	}
	
	method controlarUnUsuario(unUsuario) {
		self.controlDeVelocidad(unUsuario)
		self.controlEcologico(unUsuario)
		self.controlRegulatorio(unUsuario)
	}
	
	
	method controlarUsuarios() {
		usuariosCirculando.forEach{unUsuario => self.controlarUnUsuario(unUsuario)}
	}
	
	
	
	///////////
	
	
	method estaCirculando(unUsuario) = usuariosCirculando.contains(unUsuario)
	method ingresarUsuario(unUsuario) = usuariosCirculando.add(unUsuario)
	method quitarUsuario(unUsuario) = usuariosCirculando.remove(unUsuario)
	
	
}











