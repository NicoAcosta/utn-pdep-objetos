
//	Interfaz Contenido

//	method montoPorDerechoDeAutor()


class Ringtone {
	
	const autor
	
	const duracion // en MINUTOS
	
	method precioPorMinutoDelAutor() = autor.precioPorMinuto()
	
	method montoPorDerechoDeAutor() = duracion * self.precioPorMinutoDelAutor()
	
	
}

class Autor {
	
	var property precioPorMinuto
	
}


class Chiste {
	
	const MONTO_POR_CARACTER = 5
	
	const nombre
	
	method caracteresDelNombre() = nombre.size()
	
	method montoPorDerechoDeAutor() = MONTO_POR_CARACTER * self.caracteresDelNombre()
	
	
}

class Juego {
	
	const montoPropio
	
	method montoPorDerechoDeAutor() = montoPropio
	
}