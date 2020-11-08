import asustadores.*
import ninios.*


class Legion inherits Asustador {
	
	var miembros
	
	method lider() = miembros.max({ninio => ninio.capacidadDeAsustar()})
	
	override method capacidadDeAsustar() = miembros.sum({ninio => ninio.capacidadDeAsustar()})
	
	override method cantidadDeCaramelos() = miembros.sum({ninio => ninio.cantidadDeCaramelos()})
	
	override method recibirCaramelos(unaCantidad) {
		self.lider().recibirCaramelos(unaCantidad)
	}
	
	override method intentarAsustarA(unAdulto) {
		
		unAdulto.agregarNiniosSiCumplen(miembros)
		
		if (unAdulto.seAsustaPor(self))
			self.recibirCaramelos(unAdulto.cantidadDeCaramelosQueDa())
		
	}
	
}
