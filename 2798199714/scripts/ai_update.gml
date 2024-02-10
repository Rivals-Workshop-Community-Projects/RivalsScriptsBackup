//ai_update - called every frame for this character as a CPU

if((temp_level == 1 || temp_level == 2 || temp_level == 3 || temp_level == 9) && FinalSmash <= 0 && bossattack != 1 && bossattack != 3){
	ai_attack_time = 0;
}

//recovery
if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}
if(ai_recovering && attack == AT_USPECIAL){
	with(oPlayer){
		if (self != other){
			if(point_distance(x, y, other.x, other.y) > 100){
				other.special_down = true;
			}else{
				other.special_down = false;
			}
		}
	}
}

//hitfalling
if(free && hitpause && can_fast_fall && has_hit && attack != AT_UAIR
&& (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough")))){
	if(!fast_falling)do_a_fast_fall = true;
}

//rapid jab
if(phone_attacking && attack == AT_JAB && has_hit && !was_parried && window < 4){
	attack_pressed = true;
}

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

//better fspec usage
if(phone_attacking && attack == AT_FSPECIAL && instance_exists(ai_target)){
	with(ai_target){
		if(point_distance(x, y, other.x, other.y) < 200 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		&& (other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x) && other.fspec_charge <= 0 && random_func(0,20,true) != 0){
			other.special_down = true;
			if(point_distance(x, y, other.x, other.y) < 400 && state == PS_PARRY){
				other.special_down = false;
			}
		}else{
			other.special_down = false;
		}
	}
}

//rising uair
if(state == PS_ATTACK_AIR && attack == AT_UAIR && (has_hit || instance_exists(ai_target) && ai_target.y < y)){
	attack_down = true;
}

//dstrong cancel when offstage
if(phone_attacking && attack == AT_DSTRONG && hitpause && !dstrong_free && has_hit
&& (!position_meeting(x,y+500,asset_get("par_block")) && !position_meeting(x,y+500,asset_get("par_jumpthrough")))){
	jump_pressed = true;
}

if (get_training_cpu_action() == CPU_FIGHT && ai_target != self){
	var rng_attack = random_func(0,4,true);
	if(rng_attack <= 2){
		with(pHitBox){
		    if(/*type == 2 &&*/ damage > 0 && kb_value > 0 && hit_priority > 0 && player != other.player){
		        if(point_distance(x,y,other.x,other.y) < 150 || point_distance(x,y,other.x,other.y) < 500 && (hsp > 0 && x < other.x || hsp < 0 && x > other.x) && y > other.y-40 && y < other.y+40){
		            with(other){
		                if(ai_attack_time == 0 && can_attack && attack != AT_FSPECIAL){
		                    set_attack(AT_FSPECIAL);
		                }else if(phone_attacking && attack == AT_FSPECIAL){
		                	special_down = true;
		                }
		            }
		        }
		    }
		}
	}
	
	//charging strongs if opponent is in certain positions, not behind GK, and if they parry
	if(phone_attacking && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && instance_exists(ai_target)){
		with(ai_target){
			if((point_distance(x, y, other.x, other.y) > 150 && random_func(0,20,true) != 0 || state == PS_PARRY && state_timer <= 10)
			&& (other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x || other.attack == AT_USTRONG)
			&& (other.attack == AT_FSTRONG && point_distance(x, y, other.x, other.y) > 200 && (y > other.y-100 && y < other.y+100)
			|| other.attack == AT_USTRONG && y < other.y-200
			|| other.attack == AT_DSTRONG && y > other.y+200)){
				other.strong_down = true;
				if(point_distance(x, y, other.x, other.y) < 300 && state == PS_PARRY && other.strong_charge >= 30){
					other.strong_down = false;
				}
			}else{
				other.strong_down = false;
			}
		}
	}
	
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