extends AudioStreamPlayer2D

const level_music = preload("res://Assets/musik-hintergrund-142725.mp3")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()

func play_music_menu():
	_play_music(level_music)
	print("Playing Menu Music!")

func play_music_level():
	_play_music(level_music)
	print("Playing Level Music!")
