//ai_update - called every frame for this character as a CPU

if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
	if(temp_level == 1 || temp_level == 2 || temp_level == 9){
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
if(free && hitpause && can_fast_fall && has_hit && attack != AT_FSTRONG && attack != AT_USTRONG
&& (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough")))){
	if(!fast_falling)do_a_fast_fall = true;
}

//ignore uspec and use all jumps first, also ignore uspec if held uspec has been used
if(ai_recovering && djumps < max_djumps || upb){
	move_cooldown[AT_USPECIAL] = 2;
	if(!jump_pressed && state != PS_DOUBLE_JUMP && y >= room_height-150){
		jump_pressed = true;
	}
}

//jab
if(phone_attacking && attack == AT_JAB && has_hit && !was_parried && window < 7){
	attack_pressed = true;
}

//use hold up b when recovering
if(ai_recovering && attack == AT_USPECIAL && (window < 4 || vsp <= 0)){
	special_down = true;
}

//better fspec
if(phone_attacking && attack == AT_FSPECIAL){
	if(fspecialcharge < 90 && random_func(0,10,true) != 0){
		special_down = true;
	}
	with(obj_article1){
		if("BlueBlobBall" in self && BlueBlobBall && player_id == other && !Pocketed){
			with(other)special_down = false;
		}
	}
}

if (get_training_cpu_action() == CPU_FIGHT){
	//to make the AI jump a bit more
	with(ai_target){
		if(point_distance(x, y, other.x, other.y) < 125 && random_func(0,3,true) == 0){
			with(other){
                if(!free && can_attack && can_jump){
                    jump_pressed = true;
                }
            }
		}
	}
}