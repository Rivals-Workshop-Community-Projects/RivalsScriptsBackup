if attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && get_window_value(attack, window, AG_WINDOW_TYPE) == 69 {
	image_index += (vsp < -2) - (vsp > 2)
}

if intro_active && (state == PS_IDLE or state == PS_SPAWN) {
	sprite_index = sprite_get("intro");
	var plrnum = (player-1)*intro_player_offset;
	
	
	
	image_index = (state_timer*intro_speed) - plrnum;
	if state_timer == 1 { 
		sound_play(sound_get("horno"))
	}
	if image_index >= image_number-1 {intro_active = 0;}
	image_index = max(image_index, 0)
	
	if image_index < 1 {
	if up_down gender = 0;
	if down_down gender = 1;
	if shield_down gender = 2;
	}
	
} else intro_active = 0;

