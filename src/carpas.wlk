 class CarpasCerveceras {
 	
 	const property limiteDeGente = 0
 	var property tienenBanda
 	var property marcaDeCerveza
 	var property personasEnLaCarpa = []
 	
 	
 	method hayLugar() = personasEnLaCarpa.size() < limiteDeGente
 	
 	method cantidadDeGenteEnLaCarpa() = personasEnLaCarpa.size()
 	
    method dejaIngresar(persona) {
    	return  self.hayLugar() and not persona.estaEbrio()
    }
    
    method personasEbrias() = self.personasEnLaCarpa().filter { persona => persona.estaEbrio() }
    
    method ebriosEmpedernidos() = self.personasEbrias().count { persona => persona.comproJarrasDe1LitroOMas() }
    
    
 }
 
 
