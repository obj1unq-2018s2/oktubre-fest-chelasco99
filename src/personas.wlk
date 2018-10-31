import carpas.*
import jarras.*
	
	
class Persona {
	var property peso = 0
	var property jarrasQueCompro = []
	var property escuchaMusica 
	var property aguante = 0
	
	
	method estaEbrio() = self.cantidadAlcoholQueIngirio() * peso > aguante
		
	
	method compraronJarraDe1LitroOMas() = self.jarrasQueCompro().all { jarra => jarra.capacidadDeLitros() >= 1}
	
	
	method cantidadAlcoholQueIngirio() {
		return jarrasQueCompro.sum { jarra => jarra.contenidoDeAlcohol() }
	} 
	
	method leGustaEstaCerveza(marca) = true
	
	method quiereEntrar(carpa) {
		return self.leGustaEstaCerveza(carpa.marcaDeCerveza()) 
		and self.cumplePreferenciaDeMusica(carpa)
		and self.hayGentePar(carpa)	
	}
	
	method cumplePreferenciaDeMusica(carpa) = if ( self.escuchaMusica() )  carpa.tienenBanda()
	                                          else not carpa.tienenBanda()
	                                          
	                                          
	method hayGentePar(carpa) = true //Implementar
	
	
	
	method puedeEntrarEnUna(carpa) = if ( self.quiereEntrar(carpa) ) carpa.dejarIngresar()
	                                 else {}
	                                 
	method entrarEnUna(carpa) = if ( self.quiereEntrar(carpa) ) carpa.dejarIngresar()
	                            else self.error ("No puede ingresar")
	
	method esPatriota(nacionalidad) = self.jarrasQueCompro().all { jarra => jarra.marca().paisDeFabricacion() == nacionalidad  } 
	
}

class PersonaConNacionalidadBelga inherits Persona {
	var property nacionalidad = "Belgica"
 	override method leGustaEstaCerveza(marca) = marca.contenidoDeLupulo() > 4  
 }
 
 class PersonaConNacionalidadCheca inherits Persona {
 	var property nacionalidad = "Rep.Checa"
 	override method leGustaEstaCerveza(marca) = marca.graduacionDeCerveza() > 8
 }
 
 class PersonaConNacionalidadAlemana inherits Persona {
 	var property nacionalidad = "Alemania"
 	override method leGustaEstaCerveza(marca) = true 
 }
