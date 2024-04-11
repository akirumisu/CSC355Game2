extends Node2D

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_end_button_pressed():
	get_tree().quit()

func _on_volume_slider_value_changed(value):
	AudioServer.set_bus_volume_db(0, linear_to_db(value))
