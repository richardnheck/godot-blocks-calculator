extends Node2D


onready var keyboard:Keyboard = $CanvasLayer/Control/Keyboard
onready var number_label:Label = $CanvasLayer/Control/NumberLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	number_label.text = ""
	keyboard.connect("key_clicked", self, "on_Keyboard_number_key_clicked")
	keyboard.connect("clear_clicked", self, "on_Keyboard_clear_clicked")
	keyboard.connect("delete_clicked", self, "on_Keyboard_delete_clicked")


func on_Keyboard_number_key_clicked(value):
	var length = number_label.text.length()
	if length <= 3:
		number_label.text += value

func on_Keyboard_clear_clicked():
	number_label.text = ""
	
func on_Keyboard_delete_clicked():
	var string = number_label.text
	string.erase(string.length() - 1, 1)
	number_label.text = string
	


func _on_ShowButton_pressed() -> void:
	var number = number_label.text
	var length = number.length()
	
	var ones = 0
	var tens = 0
	var hundreds = 0
	var thousands = 0
	
	print("length = " + String(length))
	
	if length > 0:
		ones = number[length - 1]
	
	if length > 1:
		tens = number[length - 2]	
		
	if length > 2:
		hundreds = number[length - 3]
		
	if length > 3:
		thousands = number[length - 4]
	
	print("ones =" + String(ones))
	print("tens =" + String(tens))
	print("hundreds =" + String(hundreds))
	print("thousands =" + String(thousands))
	
	$CanvasLayer/Control/OnesLabel.text = String(ones)
	$CanvasLayer/Control/TensLabel.text = String(tens)
	$CanvasLayer/Control/HundredsLabel.text = String(hundreds)
	$CanvasLayer/Control/ThousandsLabel.text =  String(thousands)
	
