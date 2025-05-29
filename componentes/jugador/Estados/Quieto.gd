extends Estado

func enter():
	jugador.sprite.play("Quieto")
	jugador.velocity.x = 0

func physics_update(_delta):
	jugador.velocity.y = jugador.gravedad
	jugador.move_and_slide()  

	if not jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Cayendo")

	if jugador.is_on_floor() and Input.is_action_just_pressed("saltar"):
		get_parent().ir_a_estado_siguiente("Saltando")
	
	if jugador.is_on_floor() and Input.is_action_just_pressed(" derecha") or Input.is_action_just_pressed(" izquierda"):
		get_parent().ir_a_estado_siguiente("Correr")

	if jugador.is_on_floor() and Input.is_action_just_pressed("atacar"):
		get_parent().ir_a_estado_siguiente("Atacar")
