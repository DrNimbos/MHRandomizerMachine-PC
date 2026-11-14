extends Node2D

var SELECT_BR = load("res://cena/select_br.tscn")
var SELECT_US = load("res://cena/select.tscn")



func _on_portugues_pressed() -> void:
	GameManager.set_language("BR")
	get_tree().change_scene_to_packed(SELECT_US)


func _on_english_pressed() -> void:
	GameManager.set_language("US")
	get_tree().change_scene_to_packed(SELECT_US)

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().quit()
