import equipos.*
import personajes.*

object batalla {
	
	const equipos = [equipo1, equipo2]
	
	const primerEquipo = equipos.get(0)
	
	const segundoEquipo = equipos.get(1)
	
	method equipoGanador() = equipos.max({pareja => pareja.sumaDeEnergias()})
	
	method gritosGanadores() {
		if (self.equipoGanador() == primerEquipo) {
			return primerEquipo.gritos()
		} else {
			return segundoEquipo.gritos()
		}
	}
	
	method batallar() {
		
		primerEquipo.atacar(segundoEquipo)
		segundoEquipo.atacar(primerEquipo)
		
		return self.gritosGanadores()
	}
	
	/*
	 * 	Una consulta general
	 * 
	 * 	Trate de crear métodos más reutilizables accediendo a los objetos por su posición en la colección en vez de su nombre
	 * 
	 * 	Entiendo que quizás sería más expresivo usar su nombre directamente
	 * 
	 * 	¿Qué debería tomar como  prioridad?
	 */
	
}




