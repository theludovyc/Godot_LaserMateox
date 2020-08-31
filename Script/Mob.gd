extends KinematicBody2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var life := 5.0

var speed = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	
	life *= scale.x
	
	$Sprite.modulate.g = range_lerp(scale.x, 0.5, 2, 1, 0)
	
	speed *= 1/scale.x
	
	pass # Replace with function body.

func damage():
	life-=1
	
	if life <= 0:
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_collide(Vector2(speed, 0))
	
#	pass
