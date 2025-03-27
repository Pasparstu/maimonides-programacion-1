extends Estado

func enter ():
	jugador.sprite.play("Saltar")


func physics_update(_delta):
	jugador.velocity.y = -500
	jugador.move_and_slide()
	
