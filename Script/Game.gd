extends Node

var Mob = preload("res://Scene/Mob.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
	for i in range(256):
		var mob = Mob.instance()
	
		var mob_scale = rand_range(0.5, 2)
		
		mob.scale = Vector2(mob_scale, mob_scale)
	
		mob.position = Vector2(1300 + rand_range(0, 896), rand_range(64, 640))
	
		$Mobs.add_child(mob)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	
	
	pass # Replace with function body.
