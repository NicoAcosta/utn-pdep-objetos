class MedioDeTransporte {
	var tiempoPorKm // en minutos
	var precioPorKm
	
	method getTiempo(){
		return tiempoPorKm
	}
	
	method getPrecio(){
		return precioPorKm
	}
}

const avion =  new MedioDeTransporte(tiempoPorKm = 1, precioPorKm = 2)
const micro = new MedioDeTransporte(tiempoPorKm = 5, precioPorKm = 1)