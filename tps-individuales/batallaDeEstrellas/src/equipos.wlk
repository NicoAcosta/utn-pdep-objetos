import personajes.*

object equipo1 {
	
	var miembros = [pamela, tulipan] //  var para poder cambiarlo en tests
	
	method miembros() = miembros
	
	method miembros(unMiembro, otroMiembro) = [unMiembro, otroMiembro]
	
	
	method primerMiembro() 	= miembros.get(0)
	method segundoMiembro() = miembros.get(1)
	
	method gritos() = self.primerMiembro().gritoDeVictoria() + "  -  " + self.segundoMiembro().gritoDeVictoria()
	
	method sumaDeEnergias() = self.primerMiembro().energia() + self.segundoMiembro().energia()
	
	method ataqueIndividual(unPersonaje, otroPersonaje) {
		unPersonaje.lucharManoAMano(otroPersonaje)
	}
	
	method atacar(otraPareja) {
		
		miembros.forEach({miembro => otraPareja.miembros().forEach({enemigo => self.ataqueIndividual(miembro, enemigo)})})
		
	}
	
}



object equipo2 {
	
	var miembros = [pocardo, toro] //  var para poder cambiarlo en tests
	
	method miembros() = miembros
	
	method miembros(unMiembro, otroMiembro) = [unMiembro, otroMiembro]
	
	
	method primerMiembro() 	= miembros.get(0)
	method segundoMiembro() = miembros.get(1)
	
	method gritos() = self.primerMiembro().gritoDeVictoria() + "  -  " + self.segundoMiembro().gritoDeVictoria()
	
	method sumaDeEnergias() = self.primerMiembro().energia() + self.segundoMiembro().energia()
	
	method ataqueIndividual(unPersonaje, otroPersonaje) {
		unPersonaje.lucharManoAMano(otroPersonaje)
	}
	
	method atacar(otraPareja) {
		
		miembros.forEach({miembro => otraPareja.miembros().forEach({enemigo => self.ataqueIndividual(miembro, enemigo)})})
		
	}
	
}


