import carpas.*
import jarras.*
import personas.*


class MarcaCervezaRubia {
	var property contenidoDeLupulo = 0
	var property paisDeFabricacion = "" 
	var property graduacionDeCerveza = 0
	
}

class MarcaCervezaNegra {
	var property contenidoDeLupulo = 0
	var property paisDeFabricacion = ""
	
	 method graduacionDeCerveza(graduacionReglamentaria) = graduacionReglamentaria.graduacionMaxima().min(contenidoDeLupulo * 2)
}

class MarcaCervezaRoja inherits MarcaCervezaNegra {
	
	override method graduacionDeCerveza(graduacionReglamentaria) = super(graduacionReglamentaria) * 1.25
}


object graduacionReglamentaria {
	var property graduacionMaxima = 0
}
