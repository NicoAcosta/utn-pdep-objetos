import ninios.*

class Barrio {
	
	var ninios
		
	method niniosOrdenados() = ninios.sortedBy({a, b => a.cantidadDeCaramelos() > b.cantidadDeCaramelos()})
	
	method niniosConMasCaramelos() = self.niniosOrdenados().take(3)
	
	method niniosCon10OMasCaramelos() = ninios.filter{ninio => ninio.tieneMasDeCaramelos(10)}
	
	method elementosUsados() = self.niniosCon10OMasCaramelos().flatMap{ninio => ninio.elementosDeSusto()}.asSet()
	
}