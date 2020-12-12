

class Descarga {
	
	const property fecha = new Date()
	
	const property contenido
	
	constructor(unContenido) {
		contenido = unContenido
	}
	
	method mes() = fecha.month()
	
	method anio() = fecha.year()
	
}