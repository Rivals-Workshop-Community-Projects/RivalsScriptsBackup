//ai_update
if (ai_recovering == true){
	if (96 >= point_distance(x, 0, ai_target.x, 0)){
		if (y > ai_target.y){
			if torchwood_recharge >= 450{
				up_pressed = false;
				up_down = false;
				down_down = true;
				special_pressed = true;
			}
			with (obj_article1){
				if (player_id == other.id) && (64 >= point_distance(x, y, other.x, other.y)) && (state != 2){
					with player_id{
						if (state == PS_IDLE_AIR){
							jump_pressed = false;
							jump_down = false;
							attack_pressed = false;
							attack_down = false;
							shield_pressed = false;
							shield_down = false;
							up_down = true;
							special_pressed = true;
						}
					}
				}
			}
		}
	}
	if (move_cooldown[AT_DAIR] == 0){
		if (has_walljump){
			down_down = true;
			attack_pressed = true;
		}
	}
}


if (state == PS_ATTACK_AIR) && (attack == AT_DAIR){
	if (ai_recovering == false){
		down_down = true;
		shield_pressed = true;
	} else if (hsp == 0){
		if (has_airdodge){
			shield_pressed = true;
		} else if (has_walljump){
			jump_pressed = true;
		}
	}
}