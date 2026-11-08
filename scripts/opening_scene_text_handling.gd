extends Panel

@onready var name_label = $name;
@onready var presents_label = $presents;

@onready var anim_player = $AnimationPlayer;


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	
	if(anim_name == "name"):
		anim_player.play("fadein")
		return;
	
	if(anim_name == "fadein"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
		return;
	
	name_label.show();
	anim_player.play("name");
	
	
