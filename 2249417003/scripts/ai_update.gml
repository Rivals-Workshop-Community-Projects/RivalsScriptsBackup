
//ai_update - called every frame for this character as a CPU

if (ai_recovering) {
	//lock certain moves while recovering.
	if (free && state == PS_IDLE_AIR && (has_walljump == false || x < 50 || x > room_width - 50) && ralsei_dair_ammo > 5 && hitstun < 1) {
		set_state(PS_ATTACK_AIR);
		attack = AT_DAIR;
		window = 0;
		window_timer = 0;
	}
	
    //walljump out of walljump-cancellable moves.
    if (state = PS_ATTACK_AIR && djumps > 0 && can_wall_jump && has_walljump) {
    	jump_down = true;
    	jump_pressed = true;
    }
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	var target_y_distance = 999999;
	var target_x_distance = 999999;
	var target_exists = instance_exists(ai_target);
	if (target_exists) {
		target_y_distance = abs(y - ai_target.y);
		target_x_distance = abs(x - ai_target.x);
	}

	switch (attack) {
		case AT_NAIR:
			attack_down = has_hit_player && !ai_recovering && y < room_height * 0.9;
		break;
		case AT_DAIR:
			attack_down = ralsei_dair_ammo > 0 && //keep shooting if ralsei has ammo, and either:
			(
				target_x_distance <= 50 //the target is in range
				|| has_hit //the target was hit by the last bullet
				|| (ralsei_dair_ammo > ralsei_dair_max_ammo * 0.8 && (target_y_distance <= 40 || target_x_distance > 200)) //ralsei's ammo is almost full, but he isn't in danger of being hit
				|| (ai_recovering && y > room_height * 0.4)
			);
			if (ai_recovering) { //hold towards the stage.
				left_down = (x > room_width / 2);
				right_down = !left_down;
			}
			else if (target_exists) { //hold towards the target player.
				left_down = (x > ai_target.x / 2);
				right_down = !left_down;
			}
		break;
		case AT_NSPECIAL:
			attack_down = target_exists && 
				( 
					(target_y_distance <= 20 && target_x_distance <= 400 && ai_target.state != PS_CROUCH)  
					|| (target_exists && ai_target.state == PS_HITSTUN)
				);
		break;
		case AT_FSPECIAL:
			jump_down = (window >= 3 && free);
		break;
	}

}




