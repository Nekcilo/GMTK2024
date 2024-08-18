extends Node2D

var scores = Global.total_scores

var Excellent = 10
var Good = 5
var Bad = 1

var Step = 0
var Score: int

var GameFinished: bool

func _ready():
	print("Castle game, Start!")
	print(scores)
	AudioPlayer.stop()
	AudioPlayer.play_music_level()
	
	for i in scores:
		#check each array index for if it's == to excellent, good or bad
		print(i)
		Step = Step + 1
		Score = i
		match Step:
			1:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")
					
			2:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")
				
			3:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")
					
			4:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")
					
			5:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")
					
			6:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")
					
			7:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")
					
			8:
				Score = Score
				print(Score)
				if Score == Excellent:
					print("Excellent")
				elif Score == Good:
					print("Good")
				elif Score == Bad:
					print("Bad")

func _input(event):
	if event.is_action_pressed("Escape"):
		get_tree().quit()
		print("Quit Game")
