/** First Wollok example */
import wollok.game.*

object lionel {
	const fulbo = pelota
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method inicio() {
		position = game.at(0,5)
	}

	method buscarla() {
		position = fulbo.position()
	}
	
	method tienePelota() {
		return position == fulbo.position()
	}

	method levantarla() {
		self.validarQueTienePelota()
		fulbo.subir(1)
	}

	method validarQueTienePelota() {
		if (not self.tienePelota()) 
			self.error("No hay pelota que patear")
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

	method subir(posiciones) {
		const posInicial = position
		position = game.at(position.x(),(position.y()+1))
		game.schedule(2000, {self.position(posInicial)})
	}
}
