extends Node
class_name GameMan

@export var current_game: GameInfo
@export var language: String = ""


func _ready() -> void:
	if language == "":
		language = "US"


func set_current_game(new_game: GameInfo):
	current_game = new_game

func remove_current_game():
	if current_game != null:
		current_game = null
	else:
		pass

func get_current_game():
	if current_game != null:
		return current_game.name
	else:
		return "null"

func set_language(pais: String):
	language = pais
