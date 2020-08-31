extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ray:RayCast2D

var line:Line2D

var particules:CPUParticles2D

# Called when the node enters the scene tree for the first time.
func _ready():
	ray = $RayCast2D
	
	line = $Line2D
	
	particules = $Particles2D
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation = get_global_mouse_position().angle_to_point(position)
#	
#	line.points[1].x = $Sprite.position.x
pass

func _physics_process(delta):
	if ray.is_colliding():
		var pos = (ray.get_collision_point() - position).length()
		
		line.points[1].x = pos
		
		particules.position.x = pos
		
		particules.emitting = true
	
		var col:Node2D = ray.get_collider()
		
		if col.is_in_group("Mobs"):
			col.damage()
	else:
		line.points[1].x = ray.cast_to.x
		
		particules.emitting = false
