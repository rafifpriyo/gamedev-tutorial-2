extends RigidBody2D

export var speed = 10.0

func _ready():
	print('Level 1 Started ..!')
	print('Ship for mission!')

func _on_Player_body_entered(body: Node2D):
	if (body.get_parent().name == "Obstacles"):
		print('Contact with Meteor')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_right"):
		apply_central_impulse(Vector2(speed, 0))
