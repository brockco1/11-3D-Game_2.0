extends Area

signal coinCollected

func _ready():
	pass

func _physics_process(delta):
	rotate_y(deg2rad(3))
	
func _on_Coin_body_entered(body):
	if body.name == "Charater":
		$AnimationPlayer.play("bounce")
		$Timer.start()
func _on_Timer_timeout():
	emit_signal("coinCollected")
	queue_free()
	
