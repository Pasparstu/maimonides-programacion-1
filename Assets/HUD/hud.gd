extends Control

var vida = 100
var max_vida = 300
var magia = 20
var max_magia = 100
var moneda = 500

@onready var barra_vida = $MarginContainer/BarrasContainer/VidaContainer/Vidabar
@onready var texto_vida = $MarginContainer/BarrasContainer/VidaContainer/VidaLabel
@onready var barra_magia = $MarginContainer/BarrasContainer/MagiaContainer/Magiabar
@onready var texto_magia = $MarginContainer/BarrasContainer/MagiaContainer/MagiaLabel
@onready var texto_moneda = $MarginContainer/MonedaContainer

func _ready():
	actualizar_valores()

func _process(_delta):
	barra_vida.value = vida
	texto_vida.text = str(vida)
	barra_magia.value = magia
	texto_magia.text = str(magia)

func actualizar_valores():
	barra_vida.max_value = max_vida
	barra_magia.max_value = max_magia
