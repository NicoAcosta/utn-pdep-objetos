import destinos.*
import viajes.*
import mediosDeTransporte.*
object barrileteCosmico {
	
	var destinos = [marDeAjo,marDelPlata,lasToninas,buenosAires]
	var mediosDeTransporte = [avion,micro]
	
	method destinosMasImportantes() {
		return destinos.filter({destino => destino.esImportante()})
	}
	
	method aplicarDescueto(descuento) {
		destinos.forEach({destino => destino.ponerDescuento(descuento)})
	}
	
	method esEmpresaExtrema() {
		return destinos.any({destino => destino.esPeligroso()})
	}
	
	method getDestinos(){
		return destinos 
	}
	method getPrecios() {
		return destinos.map({destino => destino.getPrecio()}) 
	}
	
	method generarViaje(usuario,destino){
		 var viaje = new Viaje(localidadOrigen = usuario.getOrigen(), 
			localidadDestino = destino, 
			medioDeTransporte = mediosDeTransporte.anyOne()
		)
		return viaje
	}
	
}
