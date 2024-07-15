//ai_update - called every frame for this character as a CPU

if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
	if(temp_level == 9){
		ai_attack_time = 0;
	}
	silly = 0;
}else{
	if(silly == 0){
		silly = 1;
	}
	if(!free){
		ready_to_attack = false;
		if(silly == 1){
			silly = 2+random_func(0,2,true);
		}else if(silly == 2){
			down_down = true;
		}else if(silly == 3){
			if(state == PS_IDLE){
				set_state(PS_WALK_TURN);
				if(spr_dir == 1){
					left_pressed = true;
				}else if(spr_dir == -1){
					right_pressed = true;
				}
			}
		}
	}
}

if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}

//hitfalling
if(free && hitpause && can_fast_fall && has_hit
&& (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough")))){
	if(!fast_falling)do_a_fast_fall = true;
}

if (get_training_cpu_action() == CPU_FIGHT && ai_target != self){
	//better nspec usage
	if(phone_attacking && attack == AT_NSPECIAL && instance_exists(ai_target)){
		with(ai_target){
			if(point_distance(x, y, other.x, other.y) > 100 && random_func(0,20,true) != 0){
				other.special_down = true;
				if(point_distance(x, y, other.x, other.y) < 400 && state == PS_PARRY){
					other.special_down = false;
				}
			}else{
				other.special_down = false;
			}
			if(y < other.y || point_distance(x, y, other.x, other.y) > 300){
				other.up_down = true;
			}
		}
	}
	
	//charging strongs
	if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && instance_exists(ai_target)){
		with(ai_target){
			if((other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x || other.attack == AT_DSTRONG)
			&& (other.strong_charge == 1 && random_func(0,2,true) != 0 || other.strong_charge != 1 && random_func(0,30,true) != 0)){
				other.strong_down = true;
				if(point_distance(x, y, other.x, other.y) < 150 && state == PS_PARRY){
					other.strong_down = false;
				}
			}else{
				other.strong_down = false;
			}
		}
	}
	
	//to make the AI jump a bit more
	with(ai_target){
		if(point_distance(x, y, other.x, other.y) < 125 && random_func(0,4,true) == 0){
			with(other){
                if(!free && can_attack && can_jump){
                    jump_pressed = true;
                }
            }
		}
	}
}