extends CharacterBody2D

var speed = 50

func _physics_process(_delta):
	var direccion = Input.get_axis("mover izquierda","mover derecha")
	velocity.x = direccion * speed
	move_and_slide()
