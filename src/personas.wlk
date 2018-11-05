import carpas.*
import jarras.*
	
	
class Persona {
	const property peso = 0
	var property jarrasQueCompro = []
	var property escuchaMusica 
	var property aguante = 0
	
	
	method estaEbrio() = self.cantidadAlcoholQueIngirio() * peso > aguante
		
	
	method comproJarrasDe1LitroOMas() = self.jarrasQueCompro().all { jarra => jarra.capacidadDeLitros() >= 1}
	
	
	method cantidadAlcoholQueIngirio() {
		return jarrasQueCompro.sum { jarra => jarra.contenidoDeAlcohol() }
	} 
	
	method nacionalidad()
	
	method leGustaEstaCerveza(marca)
	
	method quiereEntrar(carpa) {
		return self.leGustaEstaCerveza(carpa.marcaDeCerveza()) 
		and self.cumplePreferenciaDeMusica(carpa)
	}
	
	
	method cumplePreferenciaDeMusica(carpa) = if ( self.escuchaMusica() )  carpa.tienenBanda()
	                                          else not carpa.tienenBanda()
	                                          
	                                          			
	method puedeEntrarEnUna(carpa) = if ( self.quiereEntrar(carpa) ) carpa.dejaIngresar()
	                                 else {}
	                                 
	method entrarEnUna(carpa) { if ( self.puedeEntrarEnUna(carpa) )
	                                 carpa.add(self)
	                            else self.error ("No puede ingresar")
   }	

	method esPatriota() = jarrasQueCompro.all { jarra => jarra.marca().paisDeFabricacion() == self.nacionalidad() } 
	
}

class PersonaBelga inherits Persona {
	override method nacionalidad() = "Belgica"
	
 	override method leGustaEstaCerveza(marca) = marca.contenidoDeLupulo() > 4
 		
 	
	                           
 }
 
 class PersonaCheca inherits Persona {
 	override method nacionalidad() = "Rep.Checa"
 	
 	override method leGustaEstaCerveza(marca) = marca.graduacionDeCerveza() > 8
 	 	
 }
 
 class PersonaAlemana inherits Persona {
 	override method nacionalidad() = "Alemania"
 	
 	override method leGustaEstaCerveza(marca) = true 
 	
 	override method quiereEntrar(carpa) = super(carpa) and carpa.cantidadDeGenteEnLaCarpa().even()
 }
