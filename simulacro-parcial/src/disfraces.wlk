class Disfraz {
	
	const nombre
	const fechaDeConfeccion
	
	const caracteristicas
	
	method puntuacion() = caracteristicas.sum({caracteristica => caracteristica.puntuacion()})
	
}