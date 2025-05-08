extends Coleccionable

func coleccionable():
	Globales.jugador.monedas +=1 
	queue_free()
