extends Button
class_name NumberButton

signal clicked


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_NumberButton_pressed() -> void:
	emit_signal("clicked", self.text)
