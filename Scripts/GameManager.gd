extends Node

@onready var hui = $"../HUI"
@onready var game_over_screen = $"."


func add_coin():
	Global.score+=1
	hui.Show_score()
	if Global.score > Global.highscore:
		Global.highscore = Global.score
