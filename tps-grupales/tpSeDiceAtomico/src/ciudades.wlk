import centrales.*

object springfield {
	
	const velocidadVientos = 10 // m/s
	const riquezaDelSuelo = 0.9 // 90 %	
	
	var necesidad = 0
	
	const centrales = [burns, exBosque, elSuspiro]
	
	method necesidad(unaCantidad) {
		necesidad = unaCantidad
	}
	
	
	method velocidadVientos() = velocidadVientos
	
	method riquezaDelSuelo() = riquezaDelSuelo
	
	
	
	
	method produccionEnergeticaDeUnaCentral(unaCentral) = unaCentral.produccionEnergetica(self)
	
	
	
	
	method centralesContaminantes() = centrales.filter({central => central.contamina()})
	
	
	
	
	method sumaDeProducciones(unasCentrales) {
		
		const producciones = unasCentrales.map({central => self.produccionEnergeticaDeUnaCentral(central)})
		
		return producciones.sum()
		
		}
		
	method sumaDeProduccionesDeTodasLasCentrales() = self.sumaDeProducciones(centrales)
	
	method cubrioSusNecesidades() = self.sumaDeProduccionesDeTodasLasCentrales() >= necesidad
	
	
	
	
	method sumaDeProduccionesContaminantes() = self.sumaDeProducciones(self.centralesContaminantes())
	
	method estaEnElHorno() = self.sumaDeProduccionesContaminantes() > necesidad / 2
	

	
	
	method centralMasProductiva() = centrales.max({central => self.produccionEnergeticaDeUnaCentral(central)})


	
	
}




object alberquerque {
	
	const caudalDelRio = 150 // en l/s
	
	const centrales = [hidroelectrica]
	
	method caudalDelRio() = caudalDelRio
	
	
	
	
	method produccionEnergeticaDeUnaCentral(unaCentral) = unaCentral.produccionEnergetica(self)
	
	
	
	
	method centralMasProductiva() = centrales.max({central => self.produccionEnergeticaDeUnaCentral(central)})
	
	
	
	
}




object region {
	
	const ciudades = [springfield, alberquerque]
	
	method centralesMasProductivas() = ciudades.map({ciudad => ciudad.centralMasProductiva()})
	
	
}