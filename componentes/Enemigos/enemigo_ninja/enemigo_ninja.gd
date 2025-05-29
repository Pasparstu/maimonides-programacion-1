extends Enemigo

@export var hitbox: Area2D

@onready var posicion_inicial : Vector2 = position
var distancia : float = 500
var velocidad : float = 105
var direccion : Vector2 = Vector2(1,0)

func _physics_process(_delta : float):
	velocity = direccion * velocidad 
	if position.distance_to(posicion_inicial) >= distancia:
		direccion = position.direction_to(posicion_inicial)
	move_and_slide()
	
	if esta_mirando_al_jugador():
		visible = false
	else:
		visible = true

# DERECHA = FALSE, IZQUIERDA = TRUE
func esta_enemigo_a_izq_del_jugador():
	if position.x > Globales.jugador.position.x:
		return false
	else:
		return true

func esta_jugador_mirando_izq():
	if Globales.jugador.sprite.flip_h == true:
		return true
	else:
		return false

func esta_mirando_al_jugador():
	if esta_jugador_mirando_izq():
		if esta_enemigo_a_izq_del_jugador():
			return true
		else:
			return false
	else:
		if not esta_enemigo_a_izq_del_jugador():
			return true
		else:
			return false
			
