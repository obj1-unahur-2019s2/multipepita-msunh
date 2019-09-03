import comidas.*

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
object pepita {
	var energia = 0
	
	method energia() { return energia }
	
	// la forma corta
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	
	// la forma larga
	method comer2(cosa, gramos) { energia = energia + cosa.energiaPorGramo() * gramos }
	
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() {		//realizado 
		return energia < 50
	}  
	
	method estafeliz1(){
		return energia >= 500 and energia <=1000
	}
	
	method estaFeliz() { 		//realizado 
		return energia.between(500,1000)
	}  
	
	
	method cuantoQuiereVolar() { // ya esta implementado 
		var cuanto = energia / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() { // completado
		self.volar(5)
		self.comer(alpiste,80)
		self.volar(5)		// "self" es una referencia al objeto que recibe el mensaje
		// ... completar este metodo con las otra acciones sobre self
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {self.comer(alpiste, 20)}
		// completar el método, de acuerdo a la estructura
		// que se deja comentada aca abajo
	    else if (self.estaFeliz()) {self.volar(8)} // realizado
	}
}