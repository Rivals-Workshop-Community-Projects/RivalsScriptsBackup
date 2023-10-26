//ai_update
up_down = true;
if (position_meeting(x, y - 16, asset_get("par_block"))){
	if (vsp > 0){
		if (djumps < 1){
			jump_pressed = true;
		} else if (state != PS_DOUBLE_JUMP){
			up_down = true;
			special_pressed = true;
		}
	}
	if (state == PS_DOUBLE_JUMP){
		jump_down = true;
		up_down = true;
		attack_pressed = true;
	}
	if (state == PS_ATTACK_AIR && attack == AT_UAIR){
		jump_down = true;
	}
}