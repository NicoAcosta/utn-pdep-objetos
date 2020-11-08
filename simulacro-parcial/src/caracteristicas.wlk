import fiesta.*

// interfaz Caracteristica

class Gracioso {
	
	const nivelDeGracia
	const edad
	
	method puntuacion() {
		if (edad > 50)
			return 3 * nivelDeGracia
		return nivelDeGracia
	}
	
}

class Tobara {
	
	const fechaDeCompra
	const fiesta
		
	
	method puntuacion() {
		
		if ( fechaDeCompra.minusDays(2) >= fiesta.fecha() )
			return 5
		return 3
		
		
	}
	
}

class Careta {
	
	const personaje
	
	method puntuacion() = personaje.valor()
	
}

class Personaje {
	
	const valor
	method valor() = valor
	
}

class Sexy {
	
	const personaSexy
	
	method puntuacion() {
		if ( personaSexy )
			return 15
		return 2
	}
	
}





