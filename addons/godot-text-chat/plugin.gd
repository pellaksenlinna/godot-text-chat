@tool
extends EditorPlugin

func _enter_tree() -> void:
	add_custom_type("TextChat", "Panel", load("res://addons/godot-text-chat/text_chat.gd"), load("res://addons/godot-text-chat/node_icon.png"))

func _exit_tree() -> void:
	remove_custom_type("TextChat")
