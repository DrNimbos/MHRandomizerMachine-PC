extends Node

@export var list_weapon: Array[Weapon]
@export var list_weapon_roll: Array[Weapon]
@onready var v_box_container: GridContainer = $"../weapon/Lista Arma/VBoxContainer2"

func build_list() -> void:
	if GameManager.current_game != null:
		list_weapon = GameManager.current_game.weapon_list
	if list_weapon.is_empty():
		pass
	else:
		for i in list_weapon:
			var weapon_nom = i.name
			#var weapon_icon = i.foto
			var checkbox = CheckBox.new()
			checkbox.text = weapon_nom
			#checkbox.icon = weapon_icon
			#checkbox.text_overrun_behavior = TextServer.OVERRUN_TRIM_WORD_ELLIPSIS
			#checkbox.expand_icon = true
			checkbox.toggled.connect(_on_check_box_toggled.bind(i))
		#	checkbox.theme = CHECKBOX_MONSTERS
			checkbox.size_flags_horizontal = Control.SIZE_EXPAND_FILL
			checkbox.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
			checkbox.custom_minimum_size.x = 300
			v_box_container.add_child(checkbox)
			print(weapon_nom)

func _on_check_box_toggled(toggled_on: bool, weapon: Weapon) -> void:
	if toggled_on:
		if not list_weapon_roll.has(weapon):
			list_weapon_roll.append(weapon)
	else:
		list_weapon_roll.erase(weapon)
