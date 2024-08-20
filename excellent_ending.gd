extends Node2D

var FinalScore = str(Global.finalScore)

func _ready():
	print("Successfully Changed to Best Scene")
	$MarginContainer/BG/VBoxContainer/HBoxContainer/ScoreNumber.text = FinalScore + "/80"
