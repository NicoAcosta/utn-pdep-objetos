
import contenidos.*
import empresa.*

class CompaniaNacional {
	
	method comision(unContenido) = unContenido.montoPorDerechoDeAutor() * 0.05
	
}


class CompaniaExtranjera inherits CompaniaNacional {
	
	var impuestoPorPrestacion
	
	override method comision(unContenido) = super(unContenido) + impuestoPorPrestacion
	
	
	
}