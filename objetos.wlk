/** First Wollok example */
import wollok.game.*

object lionel {
	const fulbo = pelota
	var property position = game.at(3,5)
	var camisetaActual = "titular"
	
	method image() {
		return "lionel-" + camisetaActual + ".png"
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

	method camiseta() {
		if (position.x() == 0) {
			if (camisetaActual == "titular") {
				camisetaActual = "suplente"
			} else {
				camisetaActual = "titular"
			}
		}
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
