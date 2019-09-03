import comidas.*
import pepita.*

object pepon {
	var property energia = 0// aca falta un atributo
	
	method comer(cosa, gramos) {
		energia += (cosa.energiaPorGramo() * gramos) / 2		
		
	}  // implementar // realizado
	
	
	method volar(kms) { 
		energia -= (kms*0.5) + 1
	}           // implementar // realizado
	
	
	method haceLoQueQuieras() {
		self.volar(1)
		
	}   // implementar // realizado
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos // realizado
object pipa {
	var property kmsRecorridos = 0
	var property gramosIngeridos = 0
	
	
	
	method volar(kms){
		kmsRecorridos += kms
	}
	
	method comer(cosa, gramos){
		gramosIngeridos += gramos
	}
	
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	 
	 
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código // para que pipa
	//sea un polimorfica y no se rompa al preguntarle haceLoQueQuieras()
}
