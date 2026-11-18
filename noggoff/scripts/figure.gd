extends RigidBody2D


@onready var Flicker = $Flicker

const SPEED = 6
const JUMP_VELOCITY = -400.0

var direction :Vector2= Vector2.ZERO


func _ready() -> void:
	Flicker.flicked.connect(move)


func _input(event: InputEvent) -> void:

	if event is InputEventKey:
		if event.keycode == KEY_SPACE:
			linear_velocity = Vector2.ZERO
			
			
	
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	
	state.linear_velocity += direction * SPEED
	print(linear_velocity)
	direction = Vector2.ZERO


func  move(vec: Vector2)-> void:
	direction = vec
