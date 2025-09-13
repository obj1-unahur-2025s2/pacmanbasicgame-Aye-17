import wollok.game.*
object pacman {
	var property image = "pacman.png"
	var property position = game.origin()
	var vidas = 3

	method perderVida() {
		vidas = vidas - 1
		position = game.origin()	
	}
	
	method juegoTerminado() = vidas == 0

	/*Hecho en clase*/
	
	method moverseHaciaArriba() {
		if(self.position().y() == game.height()-1) {
			self.position(game.at(self.position().x(),0))
		}
		else{
			self.position(self.position().up(1))
		}
	}

	method moverseHaciaAbajo() {

		if(self.position().y() == 0) {
			self.position(game.at(self.position().x(),game.height()-1))
		}
		else{
			self.position(self.position().down(1))
		}


		//self.position(self.position().down(1))
	}

	method moverseHaciaIzquierda() {

		if(self.position().x() == 0) {
			self.position(game.at(game.width()-1,self.position().y()))
		}
		else{
			self.position(self.position().left(1))
		}

		//self.position(self.position().left(1))
	}

	method moverseHaciaDerecha() {

		if(self.position().x() == game.width()-1) {
			self.position(game.at(0,self.position().y()))
		}
		else{
			self.position(self.position().right(1))
		}

		//self.position(self.position().right(1))
	}

	/*Hecho en clase*/
}

object cherry {
	var property image = "cherry.png"
	var property position = game.center()
}

object fantasmaRojo {
	method position() = game.at(3,3)
	method image() = "rival1.png"
}

object fantasmaAzul {
	method position() = game.at(5,6)
	method image() = "rival2.png"
}



class Rival {
	const numero
	
	method image() = "rival" + numero.toString() + ".png"

	method position() = game.at(numero + 1, numero + 1)
}
