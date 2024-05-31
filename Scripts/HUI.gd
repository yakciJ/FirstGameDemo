extends CanvasLayer

@onready var score = $Score

# Called when the node enters the scene tree for the first time.
func Show_score():
	score.text = str(Global.score) + " coins."
