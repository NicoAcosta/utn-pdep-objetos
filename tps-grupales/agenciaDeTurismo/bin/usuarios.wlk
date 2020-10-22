import destinos.*
import viajes.*
import barrileteCosmico.*
class Usuario {
	const nombre 
	var viajesQueHizo 
	var billetera 
	var seguidos 
	var localidadOrigen  
	
	method setBilletera(nuevoValor){
		billetera = nuevoValor
	}
	
	method getOrigen(){
		return localidadOrigen
	}
	
	method setLocalidadOrigen(nuevaLocalidad){
		localidadOrigen = nuevaLocalidad
	}
	
	method hacerUnViaje(viaje){ 
		var precioViaje = viaje.getDestino().getPrecio() + viaje.getOrigen().distanciaA(viaje.getDestino()) * viaje.getMedioDeTransporte().getPrecio()
		if(billetera >= precioViaje){
			viajesQueHizo.add(viaje)
			self.setBilletera(billetera - precioViaje)
			self.setLocalidadOrigen(viaje.getDestino())
			return "Viaje Hecho"
		}else{
			return "No Puede Viajar"
		}
	}
	
	method cantidadDeKilometros(){
		return  viajesQueHizo.sum({viajes => viajes.getOrigen().distanciaA(viajes.getDestino())})
	}
	
	method seguirUsuario(otroUsuario){
		seguidos.add(otroUsuario)
		otroUsuario.seguiUsuario(self)
	}
	method getViajesQueHizo() {
		return viajesQueHizo 
	}
	method getBilletera() {
		return billetera 
	}
}

const pabloHari = new Usuario(nombre = "PHari", viajesQueHizo = [], billetera = 9500, seguidos = [], localidadOrigen = buenosAires)

