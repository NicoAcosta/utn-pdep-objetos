class Fiesta {
	
	const lugar
	const fecha
	const invitados
	
	method fecha() = fecha
	
	method agregarInvitado(unInvitado) {
		invitados.add(unInvitado)
	}
	
	method esUnBodrio() = invitados.all({invitado => !invitado.satisfecho()})
	
	method mejorDisfraz() = invitados.map({invitado => invitado.disfraz()}).max({disfraz => disfraz.puntuacion()})
	
	method estaInvitado(unaPersona) = invitados.contains(unaPersona)
	
	method algunoEstaSatisfechoAlCambiar(unAsistente, otroAsistente) {
		return
			unAsistente.satisfechoConOtroDisfraz(otroAsistente.disfraz()) ||
			otroAsistente.satisfechoConOtroDisfraz(unAsistente.disfraz())
		
	}
	
	method puedenIntercambiarTrajes(unAsistente, otroAsistente) {
		
		const asistentes = [unAsistente, otroAsistente]
		
		return
			asistentes.all({asistente => self.estaInvitado(asistente)}) &&
			asistentes.any({asistente => !asistente.satisfecho()}) &&
			self.algunoEstaSatisfechoAlCambiar(unAsistente, otroAsistente)
	}
	
	method agregarAsistente(unAsistente) {
		if (unAsistente.disfraz() != null && !self.estaInvitado(unAsistente))
			self.agregarInvitado(unAsistente)
	}
	
}



object fiestaInolvidable inherits Fiesta {
	
	method esInolvidable() {
		return 
			invitados.all({invitado => invitado.sexy()}) &&
			invitados.all({invitado => invitado.satisfecho()})	
	}
	
}



