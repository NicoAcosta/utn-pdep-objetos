

// interfaz Personalidad

object alegre {
	
	method sexy() = false
	
}

class Taciturna {
	
	const edad
	
	method sexy() = edad < 30
	
}

class Cambiante inherits Taciturna {
	
	const posiblesPersonalidades = [alegre, new Taciturna (edad = edad)]
	
	override method sexy() = posiblesPersonalidades.anyOne().sexy()
	
}