
import planes.*
import contenidos.*
import companias.*
import descargas.*
import empresa.*

class SaldoInsuficienteException inherits Exception {}


class Usuario {
	
	var compania
	
	var descargas
	
	var plan
	
	method agregarDescarga(unContenido) {
		const nuevaDescarga = new Descarga(unContenido)
		descargas.add(nuevaDescarga)
	}
	
	method factorAdicionalPlan() = plan.factorAdicional()
	
	method comisionCompaniaTelcom(unContenido) = compania.comision(unContenido)
	
	
	method precio(unContenido) = empresaDeComercializacion.precioDeDescarga(unContenido, self)
	
	method puedeDescargar(unContenido) = plan.puedePagar(self.precio(unContenido))
	
	method cobrarse(unContenido) {
		plan.cobrar(self.precio(unContenido))
	}
	
	method descargar(unContenido) {
		if (self.puedeDescargar(unContenido)) {
			self.cobrarse(unContenido)
			self.agregarDescarga(unContenido)
		} else {
			throw new SaldoInsuficienteException(message = "Su plan prepago no tiene saldo suficiente para pagar este contenido")
		}
	}
	
	
	method cantidadDeDescargasEnElMesActual() {
		const fechaActual = new Date()
		const mesActual = fechaActual.month()
		const anioActual = fechaActual.year()
		const descargasUltimoMes = descargas.filter{descarga => descarga.anio() == anioActual && descarga.mes() == mesActual}
		return descargasUltimoMes.size()
	}
	
	method contenidosDescargados(unaFecha) {
		const descargasParaLaFecha = descargas.filter{descarga => descarga.fecha() == unaFecha}
		return descargasParaLaFecha.map{descarga => descarga.contenido()}
	}
	
	
	
}