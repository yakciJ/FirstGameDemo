extends Control

@onready var start = $MarginContainer/HBoxContainer/VBoxContainer/Start
@onready var exit = $MarginContainer/HBoxContainer/VBoxContainer/Exit
@export var game = preload("res://Scenes/game.tscn") as PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	start.button_down.connect(start_pressed)
	exit.button_down.connect(exit_pressed)
	
	
func start_pressed():
	get_tree().change_scene_to_packed(game)
	pass
	
func exit_pressed():
	get_tree().quit()
