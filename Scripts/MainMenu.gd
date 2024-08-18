extends Control

func _ready():
	AudioPlayer.play_music_menu()
	DisplayServer.window_set_size(Vector2i(1920, 1080))
	get_window().move_to_center()
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

func _on_play_pressed():
	get_tree().change_scene_to_file("res://DiaGame.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://OptionsMenu.tscn")

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://CreditsMenu.tscn")

func _on_quit_pressed():
	get_tree().quit()
