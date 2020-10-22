object pamela {
	
	//const ocupacion = "doctora"
	const botiquin = ["algodon", "agua oxigenada", "cinta de papel", "cinta de papel"]
	var energia = 6000
	const gritoDeVictoria = "Acá pasó la Pamela"
	
	method elementos() = botiquin
	
	method energia() = energia
	
	method gritoDeVictoria() = gritoDeVictoria

	method perderEnergia(unaCantidad) {
		energia -= unaCantidad
	}
	
	method sumarEnergia(unaCantidad) {
		energia += unaCantidad
	}
	
	method perderMitadDeLaEnergia() {
		self.perderEnergia(energia/2)
	}
	
	method cantidadDeElementos() = self.elementos().size()
	
	method ultimoElemento() = self.elementos().last()
	
	method quitarElemento(unElemento) {
		self.elementos().remove(unElemento)
	}
	
	method quitarUltimoElemento() {
		self.quitarElemento(self.ultimoElemento())
	}
	
	method noHacerNada() {}
	
	method lucharManoAMano(unEnemigo) {
		self.sumarEnergia(400)
	}
	
}


object pocardo {
	
	//const ocupacion = "musicoterapeuta"
	const botiquin = ["guitarra", "curitas", "cotonetes"]
	var energia = 5600
	const gritoDeVictoria = "¡Siente el poder de la música!"
	
	method elementos() = botiquin
	
	method energia() = energia
	
	method gritoDeVictoria() = gritoDeVictoria
	
	
	method perderEnergia(unaCantidad) {
		energia -= unaCantidad
	}
	
	method sumarEnergia(unaCantidad) {
		energia += unaCantidad
	}
	
	method perderMitadDeLaEnergia() {
		self.perderEnergia(energia/2)
	}
	
	method cantidadDeElementos() = self.elementos().size()
	
	method ultimoElemento() = self.elementos().last()
	
	method quitarElemento(unElemento) {
		self.elementos().remove(unElemento)
	}
	
	method quitarUltimoElemento() {
		self.quitarElemento(self.ultimoElemento())
	}
	
	method noHacerNada() {}
	
	
	
	method lucharManoAMano(unEnemigo) {
		self.sumarEnergia(500)
	}
	
}


object tulipan {
	
	//const ocupacion = "guerrera"
	const galpon = ["rastrillo", "maceta", "maceta", "manguera"]
	var energia = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	//const hobby = "jardineria"
	
	method elementos() = galpon
	
	method energia() = energia
	
	method gritoDeVictoria() = gritoDeVictoria
	
	method cantidadDeElementos() = self.elementos().size()
	
	method ultimoElemento() = self.elementos().last()
	
	method quitarElemento(unElemento) {
		self.elementos().remove(unElemento)
	}
	
	method quitarUltimoElemento() {
		self.quitarElemento(self.ultimoElemento())
	}
	
	method perderEnergia(unaCantidad) {
		energia -= unaCantidad
	}
	
	method noHacerNada() {}
		
	method lucharManoAMano(unEnemigo) {
		unEnemigo.perderMitadDeLaEnergia()
	}
	
	
}


object toro {
	
	//const ocupacion = "toro"
	const botin = []
	var energia = 7800
	const gritoDeVictoria = "No se metan con el toro"	
	
	method elementos() = botin
	
	method energia() = energia
	
	method gritoDeVictoria() = gritoDeVictoria
	
	method perderEnergia(unaCantidad) {
		energia -= unaCantidad
	}
	
	method perderMitadDeLaEnergia() {
		energia -= (energia/2)
	}
	
	method agregarElemento(unElemento) {
		self.elementos().add(unElemento)
	}
	
	method tieneElemento(unElemento) = self.elementos().contains(unElemento)
	
	method ultimoElemento() = self.elementos().last()
	
	method quitarElemento(unElemento) {
		self.elementos().remove(unElemento)
	}
	
	method quitarUltimoElemento() {
		self.quitarElemento(self.ultimoElemento())
	}
	
	method lucharManoAMano(unEnemigo) {
		
		unEnemigo.perderEnergia(200 * unEnemigo.cantidadDeElementos())
		
		if (!self.tieneElemento(unEnemigo.ultimoElemento())) {
			
			self.agregarElemento(unEnemigo.ultimoElemento())
			
			unEnemigo.quitarUltimoElemento()
			
			}
	}
	
}



















