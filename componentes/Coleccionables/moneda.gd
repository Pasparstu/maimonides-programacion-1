extends Coleccionable

func coleccionable():
	Globales.jugador.moneda +=1 
	queue_free()
