extends PlatformCharacterModel
class_name HeroModel

# Export vars
export var mesh_nodepath : NodePath
onready var mesh : Spatial = get_node(mesh_nodepath)

## Combat/Damage variables
export var max_health := 100.0
export var max_power := 100.0

## Combat/Damage variables
var health := 100.0
var power := 100.0

