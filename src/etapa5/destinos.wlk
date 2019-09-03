import pepita.*
import comidas.*

object patagonia {

	method energiaRevitalizadora(){
		return 30
	}
}

object sierrasCordobesas{

	method energiaRevitalizadora(){
		return 70		
	}
	
}

// la responsabilidad de recordar si la temporada es alta o baja es de "Mar del Plata"
// una opcion de resolucion :
//*****************************

object marDelPlata{
	var property temporadaBaja = true 
	
	
	method energiaRevitalizadora(){
		if (temporadaBaja) {
			return 80
		} else {
			return -20
		} 
	} 
	
}

// otra opcion:
//***************

object marDelPlata2{
var  temporada = "baja" 
	
	method temporada(cual){
		temporada = cual
	}
	
	method temporada(){
		return temporada
	}
	
	method energiaRevitalizadora(){
		if (temporada == "baja") {
			return 80
		} else {
			return -20
		} 
	} 
	
}

// no hace falta cambiar el mensaje , dado que energiaRevitalizadora es polimorfico 
//para pepita (metodo visitar) // para saber el 10% de la energia de pepita, primero 
//le "pregunto" la energia a pepita y le calculo el porcentaje
 
object noroeste{
	
	method energiaRevitalizadora(){
		return pepita.energia() * 0.1
	}
}