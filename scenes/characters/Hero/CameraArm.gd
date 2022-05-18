extends SpringArm
class_name CameraArmModel

export var hero_nodepath : NodePath
onready var hero : Spatial = get_node(hero_nodepath)

export(float, 0.1, 1) var mouse_sensitivity : float = 0.3
export(float, -90, 0) var min_pitch : float = -90
export(float, 0, 90) var max_pitch : float = 90




