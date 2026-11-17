extends Control

signal flicked(vec:Vector2)

var is_following_mouse :bool= false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	if event.is_pressed():
		is_following_mouse = true
	if event.is_released():
		is_following_mouse = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_following_mouse:
		position = get_global_mouse_position()


