//ai_update

//recovery
if (ai_recovering == true) && (y < room_height + 160){
	if (ai_target.y < y-64){
		if torchwood_recharge >= 300{
			down_down = true;
			special_pressed = true;
		}
	}
	if (move_cooldown[AT_DAIR] == 0) && (has_walljump){
		down_down = true;
		attack_pressed = true;
	}
}
if (state == PS_ATTACK_AIR) && (attack == AT_DAIR){
	if (ai_recovering == true) && (collision_line(x-50, y, x+50, y, asset_get("par_block"), false, false)){
		if (has_walljump){
			jump_pressed = true;
		}
	}
}

with (obj_article1){
	if (player_id == other.id) && (state != 2) 
	&& (other.x-48 < x && x < other.x+48)
	&& (other.y-192 < y && y < other.y+48){
		with other{	
			if (other.x-80 < ai_target.x && ai_target.x < other.x+80 
			&& ai_target.y < other.y-64 && (get_training_cpu_action() == CPU_FIGHT))
			|| (ai_recovering == true){
				up_down = true;
				special_pressed = true;
			}
		}
	}
}

if (get_training_cpu_action() == CPU_FIGHT){

if (ai_recovering == false){
	if (point_distance(x,y, ai_target.x,ai_target.y)>288){
		if torchwood_recharge >= 300{
			down_down = true;
			special_pressed = true;
		}	
	}
}

}