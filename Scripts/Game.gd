extends Node2D

func _ready():
	AudioPlayer.stop()
	AudioPlayer.play_music_level()

func _input(event):
	if event.is_action_pressed("Escape"):
		get_tree().quit()
		print("Quit Game")

func _on_next_pressed():
	get_tree().change_scene_to_file("res://dialogue.tscn")
