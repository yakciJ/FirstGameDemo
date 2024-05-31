extends Node2D

const speed = 40
var direction = 1

@onready var ray_cast_2d_left = $RayCast2DLeft
@onready var ray_cast_2d_right = $RayCast2DRight
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var player = %Player
@onready var animation_player = $AnimationPlayer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_2d_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	if ray_cast_2d_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	position.x += speed * delta * direction


func _on_kill_slime_body_entered(body):
	animation_player.play("KillAndRespawn")
	player.bounce()

