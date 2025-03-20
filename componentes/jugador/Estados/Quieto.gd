extends Estado

func enter():
	print("hola")

func update(_delta):
	jugador.velocity.y = 100
	jugador.move_and_slide()
