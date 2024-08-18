extends Node2D

var scores = Global.total_scores

var Excellent = 10
var Good = 5
var Bad = 1

func _ready():
	print("Castle game, Start!")
	print(scores)
	AudioPlayer.stop()
	AudioPlayer.play_music_level()
	for i in scores:
		#check each array index for if it's == to excellent, good or bad
		print("E")

func _input(event):
	if event.is_action_pressed("Escape"):
		get_tree().quit()
		print("Quit Game")
