import usuarios.*

class Multa {
	
	var property costo
	var property pagada = false
	
	method actualizarCosto() {
		costo = costo * 1.1
	}
	
	method registrarPago() {
		pagada = true
	}
	
	method serPagadaPor(unUsuario) {
		
		try {
			unUsuario.pagar(costo)
			self.registrarPago()
		} catch e: DineroInsuficienteException {
			console.println("No tiene dinero suficiente para pagar la multa. Se aumentará un 10% su costo")
			self.actualizarCosto()
		}
		
	}
	
	
}











