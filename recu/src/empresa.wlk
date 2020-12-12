
import contenidos.*
import usuarios.*


// Empresa De Compercializacion


object empresaDeComercializacion {
	
	var usuarios = []
	
	method montoPorDerechoDeAutor(unContenido) = unContenido.montoPorDerechoDeAutor()
	
	method comisionPropia(unContenido) = unContenido.montoPorDerechoDeAutor() * 0.25
	
	method comisionTelcom(unContenido, unUsuario) = unUsuario.comisionCompaniaTelcom(unContenido)
	
	method factorAdicionalPlan(unUsuario) = unUsuario.factorAdicionalPlan()
	
	method precioSubtotal(unContenido, unUsuario) = 
		self.montoPorDerechoDeAutor(unContenido) 	+
		self.comisionPropia(unContenido) 			+
		self.comisionTelcom(unContenido, unUsuario)
		
	
	
	//	1
	
	method precioDeDescarga(unContenido, unUsuario) =
		self.precioSubtotal(unContenido, unUsuario) *
		self.factorAdicionalPlan(unUsuario)
	
	
	//	2
	
	method descargar(unContenido, unUsuario) {
		unUsuario.descargar(unContenido)
	}
	
	
	//	3
	
	method cantidadDeDescargasEnElMesActual(unUsuario) = unUsuario.cantidadDeDescargasEnElMesActual()
	
	
	//	4
	
	method contenidosDescargados(unUsuario, unaFecha) = unUsuario.contenidosDescargados(unaFecha)
	
	
	//	5
	
	method descargarParaTodos(unContenido) {
		usuarios.forEach{usuario => usuario.descargar(unContenido)}
	}
	
	//	En el caso de que a algún usuario con plan prepago no le alcance el saldo, se cortará el programa lanzando una expeción.
	
	
	
}

