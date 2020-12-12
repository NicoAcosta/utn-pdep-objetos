
import descargas.*
import contenidos.*
import empresa.*

//	Interfaz Plan

//	method factorAdicional()
//	method puedePagar(unCosto)
//	method cobrar(unCosto)
 
 
 
class Prepago {
	
	var saldo = 0
	
	method factorAdicional() = 1.1
	
	method puedePagar(unCosto) = saldo >= unCosto
	
	method cobrar(unCosto) {
		saldo -= unCosto
	}
	
}


class Facturado {
	
	var acumuladoAFacturar = 0
	
	method factorAdicional() = 1
	
	method puedePagar(unCosto) = true
	
	method cobrar(unCosto) {
		acumuladoAFacturar += unCosto
	}
	
}