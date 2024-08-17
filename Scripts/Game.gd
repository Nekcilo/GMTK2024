extends Node2D

func _ready():
	print("Castle game, Start!")
	print(Global.total_scores)
	AudioPlayer.stop()
	AudioPlayer.play_music_level()

func _input(event):
	if event.is_action_pressed("Escape"):
		get_tree().quit()
		print("Quit Game")
