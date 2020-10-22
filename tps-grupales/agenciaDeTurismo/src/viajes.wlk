import mediosDeTransporte.*
import destinos.*
class Viaje {
	var localidadOrigen
	var localidadDestino
	var medioDeTransporte
	
	method getOrigen(){
		return localidadOrigen
	}
	
	method getDestino(){
		return localidadDestino
	}
	
	method getMedioDeTransporte(){
		return medioDeTransporte
	}
}
