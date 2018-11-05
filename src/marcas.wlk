import carpas.*
import jarras.*
import personas.*

class Marca {
	var property contenidoDeLupulo = 0
	var property paisDeFabricacion = "" 
	
}

class MarcaCervezaRubia inherits Marca {
	var property graduacion = 0
	 
	 method graduacionDeCerveza() = graduacion
		 	
}

class MarcaCervezaNegra inherits Marca{

	 method graduacionDeCerveza() = graduacionReglamentaria.graduacionMaxima().min(contenidoDeLupulo * 2)
}

class MarcaCervezaRoja inherits MarcaCervezaNegra {
	
	override method graduacionDeCerveza() = super() * 1.25
}


object graduacionReglamentaria {
	var property graduacionMaxima = 10
}
