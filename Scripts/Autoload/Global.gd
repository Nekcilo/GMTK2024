extends StaticBody2D

var total_scores = []
var is_dragging = false
var occupied: bool

func _ready():
	DisplayServer.window_set_size(Vector2i(1920, 1080))
	get_window().move_to_center()
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
