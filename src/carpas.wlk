 class CarpasCerveceras {
 	
 	const property limiteDeGente = 0
 	var property tienenBanda
 	const property marcaDeCerveza = ""
 	var property personasEnLaCarpa = []
 	
 	
 	method superaLimiteDeGente() = personasEnLaCarpa.size() + 1 > limiteDeGente
 	
 	method cantidadDeGenteEnLaCarpa() = personasEnLaCarpa.size()
 	
    method dejaIngresar(persona) {
    	return not self.superaLimiteDeGente() and not persona.estaEbrio()
    }
    
    method personasEbrias() = self.personasEnLaCarpa().filter { persona => persona.estaEbrio() }
    
    method ebriosEmpedernidos() = self.personasEbrias().filter { persona => persona.compraronJarraDe1LitroOMas() }
    
    
 }
 
 
