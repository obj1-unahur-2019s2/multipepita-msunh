
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada // realizado
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo // realzado
 */ 
object alcaucil {
	method energiaPorGramo() { return 20}
}

/*
 * el sorgo da 9 joules por gramo // realizado
 */ 
object sorgo {
	method energiaPorGramo() { return 9}
}

// despues, agregar mijo y canelones //

object mijo{		// realizado
	var estadoMijo = false

	
	method mojarse() { estadoMijo = true }
	
	method secarse() { estadoMijo = false}
	
	
	method energiaPorGramo() {
		if (estadoMijo) {return 15}
		else { return 20}
	
}	
}

object canelones{ //realizado
	
	var salsa = false
	var queso = false
	
	method ponerSalsa(){ salsa = true}
	method ponerQueso(){ queso = true}
	method sacarSalsa(){ salsa = false}
	method sacarQueso(){ queso = false}
	
	method energiaPorGramo(){
		var cuanto = 20
		
		if ( salsa && queso ) {return cuanto + 12}
		if (salsa) {return cuanto + 5}
		if (queso) {return cuanto + 7}								
		
		return cuanto
	} 
}