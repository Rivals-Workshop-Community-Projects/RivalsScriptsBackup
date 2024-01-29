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

//hitfalling
if(free && hitpause && can_fast_fall && has_hit
&& (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough")))){
	if(!fast_falling)do_a_fast_fall = true;
}

//jab
if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_JAB && has_hit && !was_parried && window < 7){
	attack_pressed = true;
}

if (get_training_cpu_action() == CPU_FIGHT && ai_target != self){
	with(oPlayer) if self != other{
		if(point_distance(x,y,other.x,other.y) < 100){
			with(other){
				if(ai_attack_time == 0 && move_cooldown[AT_EXTRA_1] <= 0 && random_func(0,5,true) == 2 && !ai_recovering && can_attack && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
					set_attack(AT_EXTRA_1);
					reset_attack_value(AT_GRAB, AG_NUM_WINDOWS);
					move_cooldown[AT_EXTRA_1] = 80;
				}
			}
		}
	}
	with(oPlayer) if self != other{
		if(point_distance(x,y,other.x,other.y) < 400
		&& (state == PS_PRATFALL || djumps == max_djumps || !has_airdodge || move_cooldown[AT_USPECIAL] > 0 || !bear_uspecial)){
			with(other){
				if(ai_attack_time == 0 && move_cooldown[AT_EXTRA_1] <= 0 && !ai_recovering && can_attack && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
					if(!free)jump_pressed = true;
					set_attack(AT_DSPECIAL);
				}
			}
		}
	}	
	if(attack == AT_EXTRA_1){
		if(window == 4){
			var rng_attack = random_func(0,3,true);
			if(rng_attack == 0){
				up_pressed = true;
			}else if(rng_attack == 1){
				down_pressed = true;
			}else if(rng_attack == 2){
				right_pressed = true;
			}else if(rng_attack == 3){
				left_pressed = true;
			}
		}
	}
	var rng_attack = random_func(0,2,true);
	if(rng_attack == 0){
		with(pHitBox){
		    if(type == 2 && self != other && !instance_exists(other.Pocketed_Projectile) && (((damage > 0 && hit_priority > 0 &&
				("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self) || "MattStar" in self && MattStar) && "Pocketable" not in self || "Pocketable" in self && Pocketable) &&
				("PocketableByOwner" in self && PocketableByOwner != other.player || "PocketableByOwner" not in self) &&
				("Pocketed" in self && !Pocketed || "Pocketed" not in self) && (sprite_index != asset_get("empty_sprite") || "Pocketable" in self && Pocketable) || other.runeI)){
		        if(point_distance(x,y,other.x,other.y) < 125){
		            with(other){
		                if(ai_attack_time == 0 && can_attack && attack != AT_NSPECIAL){
		                    set_attack(AT_NSPECIAL);
		                }
		            }
		        }
		    }
		}
	}else{
		with(pHitBox){
		    if(type == 2 && self != other){
		    	if(string_length(string(player_id.url)) > 0 && orig_player != 5){
		    		var playerurl = real(player_id.url);
		    		if("MattCanGrab" in self && MattCanGrab || other.url != playerurl && (other.canon || other.op || playerurl < 20)){
	                	var dist = point_distance(other.x+70*other.spr_dir, other.y-25, x, y); //distance
                	    if(dist <= 75 && !other.grabbedobject && ("KoB_grabbed" in self && !KoB_grabbed || "KoB_grabbed" not in self)){
					        with(other){
								if(ai_attack_time == 0 && move_cooldown[AT_EXTRA_1] <= 0 && random_func(0,5,true) == 2 && !ai_recovering && can_attack && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
									set_attack(AT_EXTRA_1);
									reset_attack_value(AT_GRAB, AG_NUM_WINDOWS);
									move_cooldown[AT_EXTRA_1] = 80;
								}
					        }                	    
                	    }
		    		}
		    	}
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