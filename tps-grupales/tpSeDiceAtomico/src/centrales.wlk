import turbinas.*


object burns {
	
	//const tipo = "atomica"
	
	var varillasDeUranio = 0
	
	method varillasDeUranio(unaCantidad) {
		varillasDeUranio = unaCantidad
	}
	
	method produccionEnergetica(unaCiudad) = 0.1 * varillasDeUranio // en millones de kWh
	
	method contamina() = varillasDeUranio > 20
	
	
}


object exBosque {
	
	//const tipo = "carbon"
	
	var capacidad = 0 // en tonteladas
	
	method capacidad(unaCantidad) {
		capacidad = unaCantidad
	}
	
	method produccionEnergetica(unaCiudad) = 0.5 + capacidad * unaCiudad.riquezaDelSuelo()
	
	method contamina() = true
	
	
}

object elSuspiro {
	
	//const tipo = "eolica"
	
	const turbinas = [primeraTurbina]
	
	method produccionEnergetica(unaCiudad) = turbinas.map({turbina => turbina.produccionEnergetica(unaCiudad)}).sum()
	
	method contamina() = false
	
	
}

object hidroelectrica {
	
	//const tipo = "hidroelectrica"
	
	method produccionEnergetica(unaCiudad) = 2 * unaCiudad.caudalDelRio()
	
	
	
}