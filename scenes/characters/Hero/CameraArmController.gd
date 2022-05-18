extends Node
class_name CameraArmController

var model : CameraArmModel

func _ready():
	model = get_parent() as CameraArmModel
	model.set_as_toplevel(true)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(_delta):
	model.translation = model.hero.translation
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	if Input.is_action_just_pressed("ui_accept"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
func _input(event):
	if event is InputEventMouseMotion:
		model.rotation_degrees.x -= event.relative.y * model.mouse_sensitivity
		model.rotation_degrees.x = clamp(model.rotation_degrees.x, model.min_pitch, model.max_pitch)

		model.rotation_degrees.y += event.relative.x * model.mouse_sensitivity
		model.rotation_degrees.y = wrapf(model.rotation_degrees.y, 0, 360)
