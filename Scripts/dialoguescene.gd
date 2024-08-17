extends Node2D

var Count

func _ready():
	Count = 1
	Dialogic.start("test")
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "timeline_end":
		Count = Count + 1
		print(Count)
		test_function()

func test_function():
	match Count:
		1:
			Dialogic.start("test")
		2: 
			#cutscene here
			Dialogic.start("Interaction_2")
		3: 
			Dialogic.start("Interaction_3")
