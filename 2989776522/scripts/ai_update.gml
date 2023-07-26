//ai_update - called every frame for this character as a CPU

if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
	if(temp_level == 9){
		ai_attack_time = 0;
	}
	silly = 0;taunt_down = false;
}else{
	if(silly == 0){
		silly = 1;
	}
	if(!free){
		ready_to_attack = false;
		if(silly == 1){
			silly = 2+random_func(0,4,true);
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
		}else if(silly == 4 || silly == 5){
			if(can_attack && attack != AT_TAUNT){
            	set_attack(AT_TAUNT);
            }taunt_down = true;
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

//ignore uspec and use all jumps first
if(inside_mech && ai_recovering && djumps < 3){
	move_cooldown[AT_USPECIAL] = 2;
	if(!jump_pressed && state != PS_DOUBLE_JUMP && y >= room_height-150){
		jump_pressed = true;
	}
}
//regain mech asap if recovering
if(!inside_mech && ai_recovering && can_summon_mech){
	special_pressed = true;move_cooldown[AT_DSPECIAL] = 2;
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
	
	//better fspec usage
	if(phone_attacking && attack == AT_FSPECIAL && instance_exists(ai_target)){
		with(ai_target){
			if(point_distance(x, y, other.x, other.y) > 100 && random_func(0,10,true) != 0 && !other.fspec_hit){
				other.special_down = true;
			}else{
				other.special_down = false;
			}
			if(y < other.y-45){
				other.up_down = true;
			}else if(y > other.y+45){
				other.down_down = true;
			}
		}
	}
	
	//ignore egg pawns if he cant summon them anyway
	if((instance_exists(the_eggpawn) || eggpawn_cooldown > 0) && (instance_exists(the_eggpawn2) || eggpawn_cooldown2 > 0)){
		move_cooldown[AT_DSPECIAL] = 2;
	}
	
	//float if aerials connect, or if low off-stage and doing an aerial
	if(state == PS_ATTACK_AIR && (has_hit || y >= room_height-100)){
		jump_down = true;
	}
	
	//charging strongs
	if(phone_attacking && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && instance_exists(ai_target)){
		with(ai_target){
			if((other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x || other.attack == AT_USTRONG || other.attack == AT_DSTRONG)
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
		if(point_distance(x, y, other.x, other.y) < 125 && random_func(0,3,true) == 0){
			with(other){
                if(!free && can_attack && can_jump){
                    jump_pressed = true;
                }
            }
		}
	}
	
	var rng_attack = random_func(0,4,true);
	if(/*rng_attack <= 2 && */inside_mech){
		with(pHitBox){
		    if(type == 2 && other.player != player && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		        if(point_distance(x,y,other.x,other.y) < 150 || point_distance(x,y,other.x,other.y) < 500 && (hsp > 0 && x < other.x || hsp < 0 && x > other.x) && y > other.y-40 && y < other.y+40){
		            with(other){
		                if(ai_attack_time == 0 && can_attack && attack != AT_FTILT){
		                    set_attack(AT_FTILT);
		                }
		            }
		        }
		    }
		}
	}
}