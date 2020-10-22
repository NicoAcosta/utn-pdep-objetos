class Localidad {
	const nombre 
	var equipajeImpresindible 
	var precio  
	const ubicacion
	
	method esPeligroso(){
		return equipajeImpresindible.contains("Vacuna Gripal")
	}
	
	method getEquipaje() {
		return equipajeImpresindible
	}
	
	method getPrecio(){
		return precio
	}	
	
	method ponerDescuento(descuento){
		precio = precio - (precio * (descuento/100))
		self.agregarEquipo("Certificado de Descuento")
	}
	
	method agregarEquipo(equipo){
		equipajeImpresindible.add(equipo)
	}
	
	method esImportante(){
		return self.getPrecio() > 2000
	}
	
	method getUbicacion(){
		return ubicacion
	}
	
	method distanciaA(destino){ // nuevo
		var maximo = ubicacion.max(destino.getUbicacion())
		var minimo = ubicacion.min(destino.getUbicacion())
		return maximo-minimo
	}	
}

const marDeAjo = new Localidad( 
	nombre = "Garlic's Sea", 
	equipajeImpresindible = ["Caña de pescar","piloto"], 
	precio = 2500, 
	ubicacion = 360
)
const marDelPlata = new Localidad(nombre = "Silver's Sea",
	equipajeImpresindible = ["Protector solar","Equipo de Buceo"],
	precio = 1350,
	ubicacion = 404
)
const buenosAires = new Localidad(nombre = "Good Airs",
	equipajeImpresindible = ["Cerveza","Protector Solar"],
	precio = 1500,
	ubicacion = 0
)
const lasToninas = new Localidad(nombre = "Last Toninas",
	equipajeImpresindible = ["Vacuna Gripal","Vacuna B","Necronomicon"],
	precio = 3500,
	ubicacion = 337 
)
