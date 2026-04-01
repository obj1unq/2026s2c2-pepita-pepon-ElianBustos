object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia/10
	}

	method cansada() {
		return energia < 30
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30

	method energia() {
		return energia
	}

	method comer(alimento) {
		energia = energia + alimento.energiaQueAporta() / 2
	}

	method vuelo(distancia) {

		energia = energia - (20 + distancia * 2)


	}


	method cansado() {
		return energia < 34
	
	}
}

object rebeca {
	var ave = pepita
	var entrenar = 0

	method mascota(nuevaAve) {
		ave = nuevaAve
		entrenar = 0
	}

	method alimentar(alimento) {
		
		ave.comer(alimento)
		entrenar = entrenar + 1
	}

	method cenas() {
		return entrenar 
	}
}