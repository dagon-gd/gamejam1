extends EventAction


@export var item : String


func _init():

	wait = true


func Execute():

	Global.inventory.AddItem(item)

	finished.emit()
