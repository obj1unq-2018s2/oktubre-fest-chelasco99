import carpas.*
import jarras.*
	
	
class Persona {
	var property peso = 0
	var property jarrasQueCompro = []
	var property escuchaMusica 
	var property aguante = 0
	
	
	method estaEbrio() = self.cantidadAlcoholQueIngirio() * self.peso() > self.aguante()
	
	method cantidadAlcoholQueIngirio() {
		return jarrasQueCompro.sum { jarra => jarra.capacidadDeLitros() }
	} 
	
	method leGustaEstaCerveza(marca) = true
		
	
	
}

class PersonaConNacionalidadBelga inherits Persona {
	var property nacionalidad = "Belgica"
 	override method leGustaEstaCerveza(marca) = true  
 }
 
 class PersonaConNacionalidadCheca inherits Persona {
 	var property nacionalidad = "Rep.Checa"
 	override method leGustaEstaCerveza(marca) = true
 }
 
 class PersonaConNacionalidadAlemana inherits Persona {
 	var property nacionalidad = "Alemania"
 	override method leGustaEstaCerveza(marca) = true 
 }
