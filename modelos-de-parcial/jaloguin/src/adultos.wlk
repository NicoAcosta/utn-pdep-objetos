import ninios.*


class Adulto {
	
	var niniosAsustadores
	
	method agregarNinioSiCumple(unNinio) {
		if ( unNinio.tieneMasDeCaramelos(15) )
		niniosAsustadores.add(unNinio)
	}
	
	method agregarNiniosSiCumplen(unosNinios) {
		
		unosNinios.forEach({ninio => self.agregarNinioSiCumple(ninio)})
		
	}
	
	method cantidadDeNiniosAsustadores() = niniosAsustadores.size()
	
	method tolerancia() = 10 * self.cantidadDeNiniosAsustadores()
	
	method seAsustaPor(unAsustador) = self.tolerancia() < unAsustador.capacidadDeAsustar()
	
	method cantidadDeCaramelosQueDa() = self.tolerancia() / 2
	
}

class Mayor inherits Adulto {
	
	override method seAsustaPor(unAsustador) = true
	
	override method cantidadDeCaramelosQueDa() = super() / 2
	
	
}

class Necio inherits Adulto {
	
	override method seAsustaPor(unAsustador) = false
	
}
