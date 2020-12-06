import usuarios.*


class CombustibleInsuficienteException inherits Exception {}
class ExcesoDeCombustibleException inherits Exception {}



class Vehiculo {
	
	const capacidadDeTanque			//	L
	var combustibleCargado		//	L
	const property velocidadPromedio			//	km/h
	
	method puedeCargar(unosLitros) = combustibleCargado + unosLitros <= capacidadDeTanque
	
	method aumentarCombustibleCargado(unosLitros) {
		if (self.puedeCargar(unosLitros)) {
			throw new ExcesoDeCombustibleException()
		}
		combustibleCargado += unosLitros
	}
	
	method quitarCombustibleCargado(unosLitros) {
		combustibleCargado -= unosLitros
	}
	
	method consumirCombustible(unosLitros) {
		
		if (unosLitros > combustibleCargado)
			throw new CombustibleInsuficienteException()
		self.quitarCombustibleCargado(unosLitros)
		
	}
	
	method litrosHastaLlenarTanque() = capacidadDeTanque - combustibleCargado
	
	method costo(unosLitros) = 40 * unosLitros
	
	method consumoBase() = 2
	method consumoAdicional(unaDistancia)	// Abstracto
	method consumo(unaDistancia) = self.consumoBase() + self.consumoAdicional(unaDistancia)
	
	method esEcologico()	// Abstracto
	
	
	
	
	method recorrer(unaDistancia) {
		
		try {
			self.consumirCombustible(self.consumo(unaDistancia))
		} catch e: CombustibleInsuficienteException {
			console.println("Su vehículo asociado no tiene suficiente combustible para recorrer esa distancia")
			
		}
		
	}
	
	method cargarCombustible(unosLitros, unUsuario) {
		const cantidadCargada = self.cantidadCargada(unosLitros)
		try {
			unUsuario.pagar(self.costo(cantidadCargada))
		} catch e: DineroInsuficienteException {
			console.println("No tiene suficiente dinero para cargar esos litros de combustible")
			self.quitarCombustibleCargado(cantidadCargada)
		}
		
	}
	
	method cantidadCargada(unosLitros) {
		
		try {
			self.aumentarCombustibleCargado(unosLitros)
			return unosLitros
		} catch e: ExcesoDeCombustibleException {
			console.println("Se excedió en la cantidad de litros a cargar. Se intentará cargar hasta llenar el tanque")
			const maximoCargable = self.litrosHastaLlenarTanque()
			self.aumentarCombustibleCargado(maximoCargable)
			return maximoCargable
		}
		
		
	}
	
	
	
	
	
	
}


class Camioneta inherits Vehiculo {
	
	override method esEcologico() = false
	
	override method consumoBase() = 4
	override method consumoAdicional(unaDistancia) = unaDistancia * 5
	
}

class Deportivo inherits Vehiculo {
	
	override method esEcologico() = velocidadPromedio < 120
	
	override method consumoAdicional(unaDistancia) = velocidadPromedio * 0.2
	
}

class Familiar inherits Vehiculo {
	
	override method esEcologico() = true
	
	override method consumoAdicional(unaDistancia) = 0
	
}










