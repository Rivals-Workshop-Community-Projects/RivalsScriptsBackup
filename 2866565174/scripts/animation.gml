if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND{
	switch(attack){
		case AT_UTILT:
			if window <= 3{
				hud_offset = round(lerp(hud_offset, 100, 0.2));
			}
		break;
		case AT_USTRONG:
			if window >= 2 && window_timer <= 8{
				hud_offset = round(lerp(hud_offset, 150 + (grabbed_player_obj != noone? grabbed_player_obj.char_height + 10:0), 0.2));
			}
		break;
		case AT_USTRONG_2:
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			if window == 1{
				hud_offset = round(lerp(hud_offset, 160 + grabbed_player_obj.char_height, 0.2));
			}
		break;
		case AT_DSTRONG_2:
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		break;
		case AT_NAIR:
			hud_offset = round(lerp(hud_offset, 100, 0.2));
		break;
		case AT_UAIR: case AT_NSPECIAL: case AT_EXTRA_1:
			hud_offset = round(lerp(hud_offset, 150, 0.2));
		break;
	}
}

if abs(hud_offset) < 1{
	hud_offset = 0;
}

if (state == PS_RESPAWN){
	sprite_index = sprite_get("respawn"); image_index = floor(image_number*state_timer/(image_number*5));
}