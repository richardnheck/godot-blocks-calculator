extends Node2D
class_name Keyboard

signal key_clicked(value)
signal delete_clicked
signal clear_clicked

onready var key_parent = $Control/GridContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for key in key_parent.get_children():
		key.connect("clicked", self, "on_key_clicked")

func on_key_clicked(value):
	emit_signal("key_clicked", value)

func _on_DeleteButton_pressed() -> void:
	emit_signal("delete_clicked")

func _on_ClearButton_pressed() -> void:
	emit_signal("clear_clicked")
