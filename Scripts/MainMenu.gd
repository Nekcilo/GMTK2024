extends Control

func _ready():
	AudioPlayer.play_music_menu()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://DiaGame.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://OptionsMenu.tscn")

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://CreditsMenu.tscn")

func _on_quit_pressed():
	get_tree().quit()
