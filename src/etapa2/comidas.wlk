
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
	var estadoMijo = null

	
	method mojarse() { estadoMijo = true }
	
	method secarse() { estadoMijo = false}
	
	
	method energiaPorGramo() {
		if (estadoMijo) {return 15}
		else { return 20}
	
}	
}

/* object canelones{ // sin terminar
	var salsa = null
	var queso = null
	
	method ponerSalsa(){ salsa = true}
	method ponerQueso(){ queso = true}
	method sacarSalsa(){ salsa = false}
	method sacarQueso(){ queso = false}
	
	method energiaPorGramo(){
		return 20
		if (salsa) {return 5}
		if (queso) {return 7}
		if ( salsa && queso ) {return 12}
	}*/
