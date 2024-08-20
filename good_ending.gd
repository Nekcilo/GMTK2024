extends Node2D

var FinalScore = str(Global.finalScore)

func _ready():
	FinalScore
	print("Successfully Changed to Good Scene")
	$BG/VBoxContainer/HBoxContainer/ScoreNumber.text = FinalScore + "/80"
