//ai_update - called every frame for this character as a CPU

if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
	if(temp_level == 1 || temp_level == 9){
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
if(op){
	temp_level = 9;
}
if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}
if(ai_recovering && attack == AT_USPECIAL){
	special_down = true;
}else if(!ai_recovering && attack == AT_USPECIAL){
	attack_pressed = true;
}


if(temp_level == 1 || BossMode){
	max_djumps = 999;
	move_cooldown[attack] = 0;
	if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
		if(abs(x + hsp - ai_target.x + ai_target.hsp) < 120 and abs(y + vsp - ai_target.y + ai_target.vsp) < 120){
		    attack_pressed = true;
		    
		    if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_NSPECIAL){
			    if(state_timer <= 10 && rapidattack <= 0){
			    	x += floor((ai_target.x - x)/8);
			        if free y += floor((ai_target.y - y)/8);
			    }
		    }
		} 
		
		if(state == PS_DOUBLE_JUMP && ai_target.state_cat == SC_HITSTUN && rapidattack <= 0){
			hsp = floor((ai_target.x + ai_target.hsp - x)/10)
			vsp = floor((ai_target.y + ai_target.vsp - y)/10)
		}
		
		if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL && window <= 3){
			y = ai_target.y;hsp = 0;vsp = 0;
			if(ai_target.x > x){
				spr_dir = 1;
			}else{
				spr_dir = -1;
			}
		}
		/*if(state == PS_ATTACK_GROUND && attack == AT_JAB){
			if(window == 9){
				window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)-1;
			}else if(window == 11){
				window += 1;window_timer = 0;
			}
		}*/
		
		if(has_hit_player && ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) /*&& (attack != AT_FSPECIAL || attack == AT_FSPECIAL && (window == 8 || window == 8))*/ || rapidattack > 0)){
		    can_attack = true;
		    attack_end();
		    if(!hit_player_obj.hitpause || rapidattack > 0){
		    	spawn_hit_fx(x,y-30,fx_fireworks_yellow);hsp = 0;vsp = 0;
				
		    	var rng_attack = random_func(0,6,true);
		    	if(rng_attack == 0){
			    	x = ai_target.x-60*spr_dir;y = ai_target.y-40;
			    	set_attack(AT_NAIR);
		    	}else if(rng_attack == 1){
			    	x = ai_target.x-90*spr_dir;y = ai_target.y-40;
			    	set_attack(AT_FAIR);
		    	}else if(rng_attack == 2){
			    	x = ai_target.x+80*spr_dir;y = ai_target.y-40;
			    	set_attack(AT_BAIR);
		    	}else if(rng_attack == 3){
			    	x = ai_target.x;y = ai_target.y+100;
			    	set_attack(AT_UAIR);
		    	}else if(rng_attack == 4){
			    	x = ai_target.x;y = ai_target.y-140;
			    	set_attack(AT_DAIR);
		    	}
		    	if(attack != AT_NSPECIAL){
		    		if(attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG){
			    		window = 1;
			    	}else{
			    		window = 2;
			    	}
		    	}window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		    	spawn_hit_fx(x,y-30,fx_fireworks_yellow);
				sound_play( sound_get("pocket_throw") );
				if(rapidattack > 0){
					rapidattack--;hitpause = 0;hitstop = 0;
					if(rapidattack > 0){
						ai_target.hitpause = 1;ai_target.hitstop = 10;
					}
				}else{
					var rng_rapidattack = random_func(0,10,true);
					if(rng_rapidattack == 0 && rapidattack <= 0){
						rapidattack = 10;
					}
				}
			}
		       
		    if(!hit_player_obj.hitpause && !free){
				attack_end();
				state = PS_IDLE;
				hsp = floor((ai_target.x + ai_target.hsp - x)/10);
				vsp = floor((ai_target.y + ai_target.vsp - y)/10);
		    }
		}
	}
}