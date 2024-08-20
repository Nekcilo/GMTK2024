extends Node2D

var scores = Global.total_scores

var Excellent = 10
var Good = 5
var Bad = 1

var Step = 0
var Score: int

var CastlePieces = {
	"Body": 0,
	"Tower1": 0,
	"Tower2": 0,
	"Tower3": 0,
	"Tower4": 0,
	"Turret1": 0,
	"Turret2": 0,
	"Turret3": 0
}

var TotalScore: int

func _ready():
	print("Castle game, Start!")
	print(scores)
	AudioPlayer.stop()
	AudioPlayer.play_music_level()

	for i in scores:
		Step = Step + 1
		Score = i
		print(TotalScore)
		match Step:
			1:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
			2:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
			3:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
			4:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
			5:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
			6:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
			7:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
			8:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
					TotalScore = TotalScore + Excellent
					Global.finalScore = TotalScore
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
					TotalScore = TotalScore + Good
					Global.finalScore = TotalScore
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
					TotalScore = TotalScore + Bad
					Global.finalScore = TotalScore
		

func randPiece():
	var X = 1
	var Key = "null"
	
	while X != 0:
		Key = CastlePieces.keys().pick_random()
		X = CastlePieces[Key]
		print("Slay")
	return Key

func _process(delta):
	if TotalScore == 80:
		print("Best Ending!")
		get_tree().change_scene_to_file("res://excellent_ending.tscn")
		print("CHANGING TO BEST SCENE")
	elif TotalScore >= 50:
		print("Good Ending")
		get_tree().change_scene_to_file("res://good_ending.tscn")
		print("CHANGING TO GOOD SCENE")
	elif TotalScore <= 49:
		print("Bad Ending")
		get_tree().change_scene_to_file("res://bad_ending.tscn")
		print("CHANGING TO BAD SCENE")
