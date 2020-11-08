import asustadores.*
import adultos.*

class NoTieneSuficientesCaramelosException inherits Exception


class Ninio inherits Asustador {
	
	var actitud
	
	var property elementosDeSusto
	
	var cantidadDeCaramelos
	
	var property puntosPorMaquillaje = 3
	
	method agregarCaramelos(unaCantidad) {
		cantidadDeCaramelos += unaCantidad
	}
	
	method quitarCaramelos(unaCantidad) {
		cantidadDeCaramelos -= unaCantidad
	}
	
	
	
	
	override method cantidadDeCaramelos() = cantidadDeCaramelos
	
	override method capacidadDeAsustar() {
		
		const puntosPorElementos = elementosDeSusto.sum({elemento => elemento.capacidadDeSusto()})
		
		return puntosPorElementos * actitud
		
	}
	
	override method recibirCaramelos(unaCantidad) {
		self.agregarCaramelos(unaCantidad)
	}
	
	override method intentarAsustarA(unAdulto) {
		
		unAdulto.agregarNinioSiCumple(self)
		
		if (unAdulto.seAsustaPor(self))
			self.recibirCaramelos(unAdulto.cantidadDeCaramelosQueDa())
		
	}
	
	
	
	
	
	
	
	
	
	
	method comerCaramelos(unaCantidad) {
		
		if ( self.tieneMasDeCaramelos(unaCantidad - 1) ) {
			
			self.quitarCaramelos(unaCantidad)
			
		} else {
			
			throw new NoTieneSuficientesCaramelosException()
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}


// interfaz Traje

class Tierno {
	
	method cuantoAsusta() = 2
	
}

class Terrorifico {
	
	method cuantoAsusta() = 2
	
}





