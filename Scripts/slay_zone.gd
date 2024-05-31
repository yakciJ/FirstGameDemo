extends Area2D

func _on_body_entered(body):
	#body.bounce()
	get_parent().queue_free()
