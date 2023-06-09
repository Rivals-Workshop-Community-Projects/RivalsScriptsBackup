//ai_update - called every frame for this character as a CPU

//Credit to DonGT here for all special behavior (outside of the silly stuff), lol I can self promote
target_x_distance = (ai_target.x - x) * spr_dir;
target_y_distance = (y - ai_target.y);

if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
	if(temp_level == 9){
		ai_attack_time = 0;
	}
	silly = 0;
	with(oPlayer) if(self != other){
		if(point_distance(x, y, other.x, other.y) <= 125){
			other.taunt_down = false;
		}
	}
}else{
	if(silly == 0){
		silly = 1;
	}
	if(!free){
		ready_to_attack = false;
		if(silly == 1){
			silly = 2+random_func(0,2,true);
		}else if(silly == 2){
			down_down = true;set_attack_ai(AT_TAUNT);taunt_down = true;
		}else if(silly == 3){
			set_attack_ai(AT_TAUNT);taunt_down = true;
		}
	}
}
if(jump_cooldown > 0)jump_cooldown--;
if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}
if(get_training_cpu_action() == CPU_FIGHT){
	if(instance_exists(property) && !property_override){
		if(instance_exists(property)){
			if(initial_invince > 0 && can_attack)set_attack_ai(AT_DSPECIAL);
			if(property.destroying){rushdown_override = true;property_override = true;}
		}
	    if(get_player_damage(player) >= 100 && current_money >= 20000 && instance_exists(property)){
	    	money_override = true;
	    	rushdown_override = true;
	        if(abs(target_x_distance) > 100){
	            if((property.x - x) < 0){
	                left_hard_pressed = true;
	                left_down = true;
	            }else{
	                right_hard_pressed = true;
	                right_down = true;
	            }
	        }
	        if(point_distance(x, y, property.x, property.y) <= 100 && !ai_recovering){
	        	if(y < property.y)down_hard_pressed = true;
	        	if(point_distance(x, y, property.x-99*property.spr_dir, property.y+40) <= 100){
	        		if(attack != AT_FSPECIAL && !free)set_attack_ai(AT_TAUNT);
	        		if(current_money >= 50000)attack_down = true;
	        		rushdown_override = false;property_override = false;
	        	}
	        }
	    }else{
	    	money_override = false;
		    if(!ai_recovering && ai_target.state != PS_RESPAWN && state != PS_PRATFALL && !rushdown_override){
		        if(abs(target_x_distance) > 100){
		            if((ai_target.x - x) < 0){
		                left_hard_pressed = true;
		                left_down = true;
		            }else{
		                right_hard_pressed = true;
		                right_down = true;
		            }
		        }
		    }
	    }
	}else{
		if(!property_override){
		    if(!ai_recovering && ai_target.state != PS_RESPAWN && state != PS_PRATFALL && can_attack){
		        if(abs(target_x_distance) < 100){
		            if((ai_target.x - x) < 0){
		                right_hard_pressed = true;
		                right_down = true;
		            }else{
		                left_hard_pressed = true;
		                left_down = true;
		            }
		            if(attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))special_down = false;
		        }else{
		        	set_attack_ai(AT_DSPECIAL);special_down = true;
		        }
		    }
		}
	}
	with(asset_get("pHitBox")){
		if(attack == AT_JAB && "current_money" in player_id){
			if(hbox_num >= 10 && hbox_num < 12){
		        with(oPlayer) if("current_money" in self && "ai_target" in self){
				    if(!money_override && !ai_recovering && ai_target.state != PS_RESPAWN && state != PS_PRATFALL){
				        if(abs(target_x_distance) > 150){
				        	rushdown_override = true;
				            if((other.x - x) < 0){
				                left_hard_pressed = true;
				                left_down = true;
				            }else{
				                right_hard_pressed = true;
				                right_down = true;
				            }
				            if(point_distance(x,y,other.x,other.y) <= 300){
					        	if(y < other.y)down_hard_pressed = true;
					        	if(y > other.y+10 && jump_cooldown <= 0 && point_distance(x,y,other.x,other.y) <= 200){jump_pressed = true;jump_cooldown = 12;}			            	
				            }
				        }else{
				        	rushdown_override = false;
				        }
				    }if(other.hitbox_timer == other.length-1 || other.destroyed){rushdown_override = false;property_override = false;}     	
		        }
			}
		}
		/*if((other.player != player || other.player == player && attack == AT_BAIR && hbox_num >= 3 && vsp > 0) && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
			if(point_distance(x,y,other.x,other.y) <= 200 && !position_meeting(x,y+5,other)){
				with(other){
					if(!free && can_attack)set_attack_ai(AT_DSTRONG);
		            if((other.x - x) < 0){
		                left_down = true;
		            }else{
		                right_down = true;
		            }
				}
			}
		}This was buggy*/
	}
	if(!ai_recovering){
		if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if(attack == AT_UAIR){
				if(current_money >= 5000*discount && y < 300){
					attack_down = true;
				}
			}
			if(attack == AT_NAIR){
				if(current_money >= 400*discount){
					nair_chance = 2+random_func(0,2,true);
					if(nair_chance == 3)attack_down = true;
				}
			}		
		}
	    if((state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && (point_distance(x, y, ai_target.x, ai_target.y) <= 100)) {
	        set_attack_ai(AT_UAIR);
	    }
	    if((state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && (point_distance(x, y, ai_target.x, ai_target.y) <= 200)) {
	        nair_chance = 2+random_func(0,10,true);
	        if(nair_chance == 3)set_attack_ai(AT_NAIR);
	    }
	}
}
#define set_attack_ai(atk)
if(can_attack && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != atk || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR))set_attack(atk);