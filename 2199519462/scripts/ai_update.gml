if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	switch(attack) {
		default: break;
		case AT_FSPECIAL:
		if ai_recovering or abs(x-ai_target.x) > 400 && !bake_mode {
			special_down = 1;
		}
		break;
		case AT_USPECIAL:
		if ai_recovering or abs(y-ai_target.y) > 300 && !bake_mode {
			special_down = 1;
		}
		if (ai_target.x-x)*spr_dir < 60 && (ai_target.x-x)*spr_dir > -60 left_down = 1;
		if (ai_target.x-x)*spr_dir > 150 right_down = 1;
		break;
		case AT_TAUNT:
		if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN) && state_timer <= 30 {
			if !bake_mode {
				attack_down = (state_timer mod (10-temp_level) == 0) * (random_func(0, 4, 1) == 0);
			} else {
				attack_down = (state_timer mod (10-temp_level) == 0)
			}
			attack_pressed = attack_down;
		} else {
			taunt_down = 0;
			taunt_pressed = 0;
		}
		break;
		case AT_UTILT:
		attack_down = 1;
		break;
		case AT_JAB:
		attack_down = (state_timer mod 2 == 0);
		break;
	}
} else if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN) && !ai_recovering && attack != AT_TAUNT {
	taunt_down = 1;
	taunt_pressed = 1;
}
if state == PS_WALL_JUMP {
	jump_down = 1;
}