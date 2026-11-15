extends Node
@onready var settings: Control = $"../Settings"
@onready var settings_btn: Button = $"../Ui Handler/settings"
@onready var node_2d: Node2D = $".."

@onready var disable_tempereds: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Disable Tempereds"
@onready var only_tempered: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Only Tempered"
@onready var only_arch_tempered: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Only Arch-Tempered"
@onready var only_apex: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Only Apex"
@onready var only_hyper: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Only Hyper"
@onready var only_afflicted: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Only Afflicted"
@onready var only_zenith: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Only Zenith"
@onready var only_musou: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Only Musou"
@onready var enable_capture: CheckBox = $"../Settings/ScrollContainer/VBoxContainer/Enable capture"

func _ready() -> void:
	if GameManager.current_game != null:
		match GameManager.current_game.name:
			"Monster Hunter 1 (JP)","Monster Hunter 1 (US)","Monster Hunter G","Monster Hunter Freedom":
				settings.hide()
				settings_btn.hide()
				node_2d.disable_tempered = true
			"Monster Hunter 2", "Monster Hunter Freedom", "Monster Hunter Freedom 2", "Monster Hunter Freedom Unite", "Monster Hunter Portable 3", "Monster Hunter 3", "Monster Hunter 3 Ultimate", "Monster Hunter Outlanders":
				settings.show()
				settings_btn.show()
				enable_capture.show()
				node_2d.disable_tempered = true
			"Monster Hunter 4", "Monster Hunter 4 Ultimate":
				settings.show()
				settings_btn.show()
				enable_capture.show()
				only_apex.show()
				node_2d.disable_tempered = true
			"Monster Hunter Generations Ultimate":
				settings.show()
				settings_btn.show()
				enable_capture.show()
				only_hyper.show()
				node_2d.disable_tempered = true
			"Monster Hunter World", "Monster Hunter World Iceborne", "Monster Hunter Wilds":
				settings.show()
				settings_btn.show()
				enable_capture.show()
				only_tempered.show()
				disable_tempereds.show()
				only_arch_tempered.show()
				node_2d.disable_tempered = false
			"Monster Hunter Rise", "Monster Hunter Rise Sunbreak":
				settings.show()
				settings_btn.show()
				enable_capture.show()
				only_afflicted.show()
				node_2d.disable_tempered = true
			"Monster Hunter Frontier":
				settings.show()
				settings_btn.show()
				enable_capture.show()
				only_zenith.show()
				only_musou.show()
				node_2d.disable_tempered = true
			"Custom":
				settings.show()
				settings_btn.show()
				enable_capture.show()
				only_tempered.show()
				disable_tempereds.show()
				only_arch_tempered.show()
				only_afflicted.show()
				only_zenith.show()
				only_musou.show()
				only_apex.show()
				only_hyper.show()
				node_2d.disable_tempered = false
			_:
				settings_btn.hide()
				settings.hide()
