extends Estado

func enter ():
	jugador.sprite.play("Correr")
 
func physics_update(_delta):
	var direccion = Input.get_axis(" izquierda", " derecha")

	if direccion == 0:
		jugador.velocity.x= 0
		get_parent().ir_a_estado_siguiente("Quieto")
	else:
		if direccion < 0:
			jugador.sprite.flip_h = true
		else:
			jugador.sprite.flip_h = false
	jugador.velocity.x = direccion * jugador.velocidad
	jugador.move_and_slide()

	if Input.is_action_just_pressed("atacar"):
		get_parent().ir_a_estado_siguiente("Atacar")
