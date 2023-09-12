object bombon {
	var peso = 15
	
	method precio() = 5
	method peso() = peso
	method sabor() = "frutilla"
	method contieneGluten() = false
	
	method recibirMordisco(){
		peso = (peso * 0.8) -1
	}
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method peso() = peso
	method sabor() = "chocolate"
	method contieneGluten() = true
	
	method recibirMordisco(){
		peso = peso * 0.8
	}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method peso() = peso
	method sabor() = "frutilla"
	method contieneGluten() = false
	
	method recibirMordisco(){
		peso -= 1
	}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method peso() = peso
	method sabor() = "naranja"
	method contieneGluten() = false
	
	method recibirMordisco(){
		if (peso > 2) {
			peso = peso * 0.9	
		}
	}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method peso() = peso
	method sabor() = "vainilla"
	method contieneGluten() = true
	
	method recibirMordisco(){
		if (peso > 70) {
			peso = peso * 0.5
		}
		else {
			peso = peso * 0.75
		}
	}
}

object chocolatin {
	var property peso
	const precio = peso * 0.5
	
	method precio() = precio
	method sabor() = "chocolate"
	method contieneGluten() = true
	
	method recibirMordisco(){
		peso -= 2
	}
}

object golosinaBaniada {
	var property golosinaBase
	var peso = golosinaBase.peso() + 4
	
	method peso() = peso
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method contieneGluten() = golosinaBase.contieneGluten()
	
	method recibirMordisco(){
		golosinaBase.recibirMordisco()
	}
}

object pastillaTuttiFrutti {
	var peso = 5
	var property contieneGluten
	const sabor = ["frutilla","chocolate","naranja"]
	
	method peso() = peso
	method precio() = if !contieneGluten {7} else {10}
	method sabor() {
		
	} 
	
	method recibirMordisco(){
		
	}
}