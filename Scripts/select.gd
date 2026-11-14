extends Node2D

var MH_1JP = load("res://Resource/Games/MH1JP.tres")
var MH_1US_BR = load("res://Resource/Games/MH1US.tres")
var MH_2_BR = load("res://Resource/Games/MH2.tres")
var MH_3U_BR = load("res://Resource/Games/MH3U.tres")
var MH_3_BR = load("res://Resource/Games/MH3.tres")
var MH_4U_BR = load("res://Resource/Games/MH4U.tres")
var MH_4_BR = load("res://Resource/Games/MH4.tres")
var MH_FRONTIER_BR = load("res://Resource/Games/MHFrontier.tres")
var MHGU_BR = load("res://Resource/Games/MHGU.tres")
var MHG_BR = load("res://Resource/Games/MHG.tres")
var MHP_1_BR = load("res://Resource/Games/MHP1.tres")
var MHP_2G_BR = load("res://Resource/Games/MHP2G.tres")
var MHP_2_BR = load("res://Resource/Games/MHP2.tres")
var MHP_3_BR = load("res://Resource/Games/MHP3.tres")
var MHRS_BR = load("res://Resource/Games/MHRS.tres")
var MHR_BR = load("res://Resource/Games/MHR.tres")
var MH_WILDS_BR = load("res://Resource/Games/MHWS.tres")
var MHWI_BR = load("res://Resource/Games/MHWI.tres")
var MHW_BR = load("res://Resource/Games/MHW.tres")
var CUSTOM_BR = load("res://Resource/Games/Custom.tres")
var MH_1G_BR = load("res://Resource/Games/MH1G.tres")
var BASE_NEW = load("uid://b5aij2cnv6agu")
var MH_OUT = load("uid://b5ax06mo6cwd8")
var MENU_LING = load("uid://d3weejvm2cfoo")

@onready var custom: Button = $VBoxContainer/custom


func _ready() -> void:
	if GameManager.language == "BR":
		custom.text = "Customizado"
	elif GameManager.language == "US":
		custom.text = "Custom"


func _on_mh_1jp_pressed() -> void:
	GameManager.set_current_game(MH_1JP)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_1us_pressed() -> void:
	GameManager.set_current_game(MH_1US_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_11g_pressed() -> void:
	GameManager.set_current_game(MH_1G_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_m_hfreedom_pressed() -> void:
	GameManager.set_current_game(MHP_1_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_2_pressed() -> void:
	GameManager.set_current_game(MH_2_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhp_2_pressed() -> void:
	GameManager.set_current_game(MHP_2_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhpg_pressed() -> void:
	GameManager.set_current_game(MHP_2G_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_3_pressed() -> void:
	GameManager.set_current_game(MH_3_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_3u_pressed() -> void:
	GameManager.set_current_game(MH_3U_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhp_3_pressed() -> void:
	GameManager.set_current_game(MHP_3_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_4_pressed() -> void:
	GameManager.set_current_game(MH_4_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_4u_pressed() -> void:
	GameManager.set_current_game(MH_4U_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_gen_pressed() -> void:
	GameManager.set_current_game(MHG_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhgu_pressed() -> void:
	GameManager.set_current_game(MHGU_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhw_pressed() -> void:
	GameManager.set_current_game(MHW_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_wi_pressed() -> void:
	GameManager.set_current_game(MHWI_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhr_pressed() -> void:
	GameManager.set_current_game(MHR_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhrs_pressed() -> void:
	GameManager.set_current_game(MHRS_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mhfzz_pressed() -> void:
	GameManager.set_current_game(MH_FRONTIER_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_custom_pressed() -> void:
	GameManager.set_current_game(CUSTOM_BR)
	get_tree().change_scene_to_packed(BASE_NEW)


func _on_mh_wilds_pressed() -> void:
	GameManager.set_current_game(MH_WILDS_BR)
	get_tree().change_scene_to_packed(BASE_NEW)

func _on_mh_out_pressed() -> void:
	GameManager.set_current_game(MH_OUT)
	get_tree().change_scene_to_packed(BASE_NEW)

func _on_download_pressed() -> void:
	if OS.has_feature("web"):
		JavaScriptBridge.eval("window.open('https://drive.google.com/file/d/1DctITkmQccohQXaeVqUFrMywNbgHcFM-/view?usp=sharing', '_blank').focus();")
	else:
		OS.shell_open("https://drive.google.com/file/d/1DctITkmQccohQXaeVqUFrMywNbgHcFM-/view?usp=sharing")


func _on_site_pressed() -> void:
	if OS.has_feature("web"):
		JavaScriptBridge.eval("window.open('https://drnimbos.github.io/', '_blank').focus();")
	else:
		OS.shell_open("https://drnimbos.github.io/")


func _on_lang_pressed() -> void:
	get_tree().change_scene_to_packed(MENU_LING)
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().change_scene_to_packed(MENU_LING)
