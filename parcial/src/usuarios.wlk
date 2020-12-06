import vehiculos.*
import multas.*

class DineroInsuficienteException inherits Exception {}

class Usuario {
	
	var nombreDeUsuario
	const dni
	var dineroDisponible
	
	var vehiculo
	var multas
	
	method puedePagar(unMonto) = unMonto < dineroDisponible
	
	method pagar(unMonto) {
		if (self.puedePagar(unMonto)) {
			throw new DineroInsuficienteException()
		}
		dineroDisponible -= unMonto
	}
	
	method cargarDinero(unMonto) {
		dineroDisponible += unMonto
	}
	
	method quitarMulta(unaMulta) {
		multas.remove(unaMulta)
	}
	
	
	method recorrer(unaDistancia) {
		vehiculo.recorrer(unaDistancia)
	}
	
	method cargarCombustible(unosLitros) {
		vehiculo.cargarCombustible(unosLitros, self)
	}
	
	method pagarMulta(unaMulta) {
		unaMulta.serPagadaPor(self)
	}
	
	
	
	
	method agregarMulta(unaMulta) {
		multas.add(unaMulta)
	}
	
	method multasPendientes() = multas.filter{unaMulta => !unaMulta.pagada()}
	
	method deuda() = self.multasPendientes().sum{unaMulta => unaMulta.costo()}
	
	
	
	
	//	Métodos para controles
	
	method velocidadPromedioDelVehiculo() = vehiculo.velocidadPromedio()
	
	method vehiculoEcologico() = vehiculo.esEcologico()
	
	method tieneDniPar() = dni.even()
	
	method tieneDniImpar() = !self.tieneDniPar() // este método está solo por expresividad, pudiendo usar directamente !metodopar
	
	
	
	// Métodos para la app
	
	method pagarMultas() {
		multas.forEach{unaMulta => unaMulta.serPagadaPor(self)}
	}
	
	method esComplicado() = self.deuda() > 5000
	
	
	
	
	
	
	
}











