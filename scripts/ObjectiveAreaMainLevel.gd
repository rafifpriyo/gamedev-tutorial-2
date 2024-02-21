extends Area2D

func _on_ObjectiveArea_body_entered(body: Node2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		get_tree().change_scene("./scenes/Level1.tscn")
