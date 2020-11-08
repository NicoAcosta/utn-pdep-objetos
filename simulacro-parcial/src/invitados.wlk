class Invitado {
	
	var disfraz
	
	const personalidad
	
	method disfraz() = disfraz

	method disfraz(unDisfraz) {
		disfraz = unDisfraz
	}
	
	method conOtroDisfraz(unDisfraz) {
		self.disfraz(unDisfraz)
		return self
	}
	
	method satisfechoComun() = disfraz.puntuacion() > 10
	
	
	method satisfecho() = self.satisfechoComun()
	
	method satisfechoConOtroDisfraz(unDisfraz) {
		
		self.conOtroDisfraz(unDisfraz).satisfecho()
		
	}
	
	method sexy() = personalidad.sexy()
}




class Exigente inherits Invitado {
	method satisfechoParticular()
	override method satisfecho() = self.satisfechoComun() && self.satisfechoParticular()
}



class Caprichoso inherits Exigente {
	
	method satisfechoParticular(disfraz) = disfraz.size().even()
	
}

class Pretencioso inherits Exigente {
	
	method satisfechoParticular(disfraz) = new Date().minusDays(30) >= disfraz.fecha()
	
}

class Numerologo inherits Exigente {
	
	const puntaje
	method satisfechoParticular(disfraz) = disfraz.puntuacion() == puntaje
		
}