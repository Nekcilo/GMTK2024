extends AudioStreamPlayer2D

const menu_music = preload("res://Fragments of Eden OST.mp3")
const level_music = preload("res://Worlds Apart OST (Radio).mp3")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()

func play_music_menu():
	_play_music(menu_music)
	print("Playing Menu Music!")

func play_music_level():
	_play_music(level_music)
	print("Playing Level Music!")
