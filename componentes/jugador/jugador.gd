extends CharacterBody2D


@export var jugador:CharacterBody2D
@export var gravedad : float
@export var sprite = AnimatedSprite2D
@export var impulso_salto : float 
@export var velocidad : float 
@export var hud : Control

var vida : int = 100
var max_vida : int = 300
var magia : int = 100
var max_magia : int = 500
var moneda : int

func _ready():
	Globales.jugador = self
	inicializar_jugador()
	actualizar_hud()

	await get_tree().process_frame
	moneda = Globales.save_manager.datos_guardados.moneda

func _physics_process(_delta):
	actualizar_hud()

func inicializar_jugador():
	vida = max_vida
	magia = max_magia
	moneda = 0

func morir():
	queue_free()

func herir(cantidad : int):
	vida = cantidad
	if vida <= 0:
		morir()

func actualizar_hud():
	hud.vida = vida
	hud.max_vida = max_vida
	hud.moneda = moneda
	hud.magia = magia
	hud.max_magia = max_magia
