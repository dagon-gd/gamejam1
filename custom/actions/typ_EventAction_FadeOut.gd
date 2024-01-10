extends EventAction

## how the long the effect will take. 0 means instantly.
@export_range(0.0, 10.0) var time : float = 0.0


func _init():
	
	if time <= 0.0:
		
		wait = true


func Execute():

	Global.vfx.FadeOut(time)

	if time <= 0.0:

		finished.emit()

		return

	else:

		$Timer.wait_time = time

		$Timer.start()


func _on_timer_timeout():

	if wait:

		finished.emit()
