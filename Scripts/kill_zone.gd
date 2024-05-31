extends Area2D

@onready var timer = $Timer
@onready var lose_sound = $LoseSound
@export var game_over = preload("res://Scenes/GameOver.tscn") as PackedScene
func _on_body_entered(body):
	lose_sound.play()
	Engine.time_scale = 0.4
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().change_scene_to_packed(game_over)
