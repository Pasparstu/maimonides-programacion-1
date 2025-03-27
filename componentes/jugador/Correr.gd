extends Estado

func enter ():
	jugador.sprite.play("Correr")

func physics_update(_delta):
	Input.is_action_pressed(" derecha")
	jugador.velocity.x = 300
	jugador.move_and_slide()
	
	Input.is_action_pressed(" izquierda")
	jugador.sprite.flip_h= true
	jugador.velocity.x = -300
	jugador.move_and_slide()
