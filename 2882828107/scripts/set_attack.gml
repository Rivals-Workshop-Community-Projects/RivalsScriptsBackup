//set_attack
if (attack == AT_DATTACK){
    with oPlayer if id != other.id{
		if (dattack_drag == other.id) dattack_drag = false;
    }
	if (down_was_pressed){
		initial_dash_speed = -7;
	}
	with (obj_stage_article) if ("enemy_stage_article" in self){ 
		if (dattack_drag == other.id) dattack_drag = false;
	}
}


if (attack == AT_TAUNT){
	clear_button_buffer( PC_TAUNT_PRESSED );
	sound_stop(sound_get ("watering_cannot"));
}