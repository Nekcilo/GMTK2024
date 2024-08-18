extends Node2D

var scores = Global.total_scores

var Excellent = 10
var Good = 5
var Bad = 1

var Step = 0
var Score: int
var X = 1
var Key = "null"

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

var GameFinished: bool

func _ready():
	print("Castle game, Start!")
	print(scores)
	AudioPlayer.stop()
	AudioPlayer.play_music_level()
	
	for i in scores:
		Step = Step + 1
		Score = i
		match Step:
			1:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
			2:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
			3:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
			4:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
			5:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
			6:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
			7:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)
			8:
				Score = Score
				if Score == Excellent:
					print("Excellent")
					CastlePieces[randPiece()] = Excellent
					print(CastlePieces)
				elif Score == Good:
					print("Good")
					CastlePieces[randPiece()] = Good
					print(CastlePieces)
				elif Score == Bad:
					print("Bad")
					CastlePieces[randPiece()] = Bad
					print(CastlePieces)

func _input(event):
	if event.is_action_pressed("Escape"):
		get_tree().quit()
		print("Quit Game")

func testfunc():
	while CastlePieces != 0:
		CastlePieces = CastlePieces[CastlePieces.keys().pick_random()]
		CastlePieces = Excellent
		print("Testing CastlePieces:", CastlePieces)

func randPiece():
	while X != 0:
		Key = CastlePieces.keys().pick_random()
		X = CastlePieces[Key]
	return Key
