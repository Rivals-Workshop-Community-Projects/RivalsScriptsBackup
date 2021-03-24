//B - Reversals [keep this lol]
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
    if (was_parried){
    was_parried = false;
    }
}



var rune_offset = 70;
//sandbert code
if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 120;
	if(free && window == 4 && window_timer == 1 && !hitpause && !hitstop){
		vsp -= 13;
	}
	indicate = true;
	if(window == 1 && window_timer == 1 && !hitpause && !hitstop){
		chundicator = instance_create(x, y-30, "obj_article2");
		scisx = x;
		scisy = y;
		
		if (has_rune("L")){ //rune indicators
			chundicator = instance_create(x, y-30 + rune_offset, "obj_article2");
			chundicator = instance_create(x, y-30 - rune_offset, "obj_article2");
		}
		
	}
    if (window == 4 && window_timer == 1 && !hitpause && !hitstop){
	    if (!has_rune("L")){ //not rune
	        if (spr_dir == -1){
	            chungo = instance_create(spr_dir*-room_width, y, "obj_article1");
	        }
	        else{
	            chungo = instance_create(0, y, "obj_article1");
	        }
	        with(chungo){
	        	chungx = player_id.scisx
	        	chungy = player_id.scisy
	        }
	    }
	    else{
	        if (spr_dir == -1){
	            chungo = instance_create(spr_dir*-room_width, y, "obj_article1");
	            chungo1 = instance_create(spr_dir*-room_width, y + rune_offset, "obj_article1");
	            chungo2 = instance_create(spr_dir*-room_width, y - rune_offset, "obj_article1");
	        }
	        else{
	            chungo = instance_create(0, y, "obj_article1");
	            chungo1 = instance_create(0, y + rune_offset, "obj_article1");
	            chungo2 = instance_create(0, y - rune_offset, "obj_article1");
	        }
	        with(chungo){
	        	chungx = player_id.scisx
	        	chungy = player_id.scisy
	        }
	        with(chungo1){
	        	chungx = player_id.scisx
	        	chungy = player_id.scisy + rune_offset
	        }
	        with(chungo2){
	        	chungx = player_id.scisx
	        	chungy = player_id.scisy - rune_offset
	        }
	    }
    }
}

if (attack == AT_USPECIAL){
	if(window < 3){
		can_move = false
	}
	if (!free){
		if (window == 1 && window_timer == 1){
			y = y - 25;
		}
	}
}





//eggdog code
if (!has_rune("E")){
	if (attack == AT_TAUNT){
	    if(taunt_down && window == 4 && window_timer == 6){
	        window = 1;
	        window_timer = 0;
	    }
	    if(left_down||left_pressed){
	        hsp = -1
	    }
	    if(right_down||right_pressed){
	        hsp = 1
	    }
	    if(jump_pressed && !free){
	        vsp = -8
	    }
	    
	    if (!free){
	        if (used_hitbox){
	            destroy_hitboxes();
	        }
	        used_hitbox = false;
	    }
	    
	    if (free && vsp > 2 && !used_hitbox){
	        create_hitbox(AT_TAUNT, 1, x, y);
	        used_hitbox = true;
	    }
	}
}
else{
	if (attack == AT_TAUNT){
	    if(taunt_down && window == 4 && window_timer == 6){
	        window = 1;
	        window_timer = 0;
	    }
	    if(left_down||left_pressed){
	        hsp = -7
	    }
	    if(right_down||right_pressed){
	        hsp = 7
	    }
	    if(jump_pressed && !free){
	        vsp = -9
	    }
	    
	    if (!free){
	        if (used_hitbox){
	            destroy_hitboxes();
	        }
	        used_hitbox = false;
	    }
	    
	    if (free && vsp > 1 && !used_hitbox){
	        create_hitbox(AT_TAUNT, 1, x, y);
	        used_hitbox = true;
	    }
	}
}


//dair reverse
if (attack == AT_DAIR){
    if (window == 1){
        if (window_timer == 1){
            if (left_down){
                spr_dir = -1;
            }
            else if (right_down){
                spr_dir = 1;
            }
        }
    }
}

//hud_offset stuff
if (attack == AT_UTILT){
	if (!has_rune("A")){
	    if (window == 2 || (window == 3 && window_timer < 6)){
	        hud_offset = 65;
	    }
	}
	else{
	    if (window == 2 || (window == 3 && window_timer < 6)){
	        hud_offset = 170;
	    }
	}
}

if (attack == AT_USTRONG){
    if (window == 2 || window == 3){
        hud_offset = 40;
    }
}

if (attack == AT_UAIR){
	if (!has_rune("A")){
	    if (window == 2){
	        hud_offset = 55;
	    }
	    if (window == 3){
	        hud_offset = 40;
	    }
	}
	else{
	    if (window == 2){
	        hud_offset = 150;
	    }
	    if (window == 3){
	        hud_offset = 140;
	    }
	}
}

//fspecial
if (attack == AT_FSPECIAL){
    
    can_fast_fall = false;
    
    if (window == 1){
        reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);
        did_bounce = false;
        attack_end();
    }
    if (window == 2){
    	
    	can_shield = true;
    	
        if (window_timer == 2){
            if (special_down){
                
                window_timer = 1;
                
                if (angle_type == 0){
                    angle_cur = angle_cur - angle_change;
                }
                else{
                    angle_cur = angle_cur + angle_change;
                }
                
                if (angle_cur == angle_max){
                    angle_type = 0; //down
                }
                if (angle_cur == angle_min){
                    angle_type = 1; //up
                }
                
            }
        }
    }
    
    if (window < 4){
        vsp = clamp(vsp, -99, 3);
        hsp = clamp(hsp, -3, 3);
    }
    
    if (window == 4){
        if (window_timer == 1){
            if (!hitstop && !hitpause){
            	if (get_player_color(player) == 1){
            		sound_play(sound_get("zoom"));
            	}
            	else{
            		sound_play(asset_get("sfx_spin"));
            	}
                hsp = cos(degtorad(angle_cur))*spr_dir*speed_mult;
				vsp = sin(degtorad(angle_cur))*-speed_mult;
            }
        }
    }
    
    if (window >= 4){
        can_wall_jump = true;
    }
    
    if ((!free && (window == 5 || (window == 4 && window_timer > 3)))){
        if (!did_bounce){
            destroy_hitboxes();
            
            if (get_player_color(player) == 1){
            	sound_stop(sound_get("zoom"));
            }
            
            sound_play(sound_get("squeaky"));
            did_bounce = true;
            window = 5;
            window_timer = 1;
            vsp = sin(degtorad(angle_cur))*-9;
            hsp = hsp/2;
        }
    }
    
    if (!free && (window == 5 && window_timer > 3) && did_bounce){
    	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
        state = PS_IDLE;
    }
    
    if (window == 5){
        move_cooldown[AT_FSPECIAL] = 15;
    }
    
    if (has_rune("K")){
    	if (window > 3){
    		move_cooldown[AT_FSPECIAL] = 45;
	    	can_jump = true;
	    	can_attack = true;
    	}
    }
}

//dspecial
if (attack == AT_DSPECIAL){
	
	can_wall_jump = true;
	
	if (window == 2 && window_timer == 1){
		
		if (!has_rune("D")){
			move_cooldown[AT_DSPECIAL] = 80;
		}
		else{
			move_cooldown[AT_DSPECIAL] = 25;
		}

		
		if (free || vsp < 2){
			vsp = -5;
		}
	}
}

//uspecial walljumping
if (attack == AT_USPECIAL && window == 3){
	can_wall_jump = true;
}







//runes
if (has_rune("H")){
    if (attack == AT_USPECIAL){
    	if (window == 3){
    		if (window_timer == 1){
    			if (!hitpause && !hitstop){
    				var egg = create_hitbox(AT_DSPECIAL, 1, x, y + 7);
    				var egg1 = create_hitbox(AT_DSPECIAL, 1, x, y + 7);
    				var egg2 = create_hitbox(AT_DSPECIAL, 1, x, y + 7);
    				var egg3 = create_hitbox(AT_DSPECIAL, 1, x, y + 7);
    				egg.vsp = -10;
    				egg1.vsp = -8;
    				egg2.vsp = -8;
    				egg3.vsp = -10;
    				egg.hsp = 4;
    				egg1.hsp = 3;
    				egg2.hsp = -3;
    				egg3.hsp = -4;
    				egg.spr_dir = 1;
    				egg1.spr_dir = 1;
    				egg2.spr_dir = -1;
    				egg3.spr_dir = -1;
    			}
    		}
    	}
    }
}

if (has_rune("J")){
	if (attack == AT_NSPECIAL){
		if (window == 4){
			if (window_timer == 1){
				if (!hitpause && !hitstop){
					create_hitbox(AT_NSPECIAL, 2, x, y);
				}
			}
		}
	}
}

if (has_rune("N")){
	if (attack == AT_DSPECIAL){
		if (window == 2){
			if (window_timer == 1){
				if (!hitpause && !hitstop){
					create_hitbox(AT_DSPECIAL, 1, 200, 0);
					create_hitbox(AT_DSPECIAL, 1, 400, 0);
					create_hitbox(AT_DSPECIAL, 1, 800, 0);
					create_hitbox(AT_DSPECIAL, 1, 1000, 0);
				}
			}
		}
	}
}

if (has_rune("O")){
	if (attack == AT_DSPECIAL){
		if (window == 2){
			if (window_timer == 1){
				if (!hitpause && !hitstop){
					var rand = random_func(1,5,true);
					if (rand == 4 && eggdog_count <= max_eggs){
						var chugnus = instance_create(x,y,"oPlayer",player);
	                    chugnus.custom_clone = true;
	                    chugnus.disable_ai = false;
	                    chugnus.owner_player = player;
	                    eggdog_count++;
					}
				}
			}
		}
	}
}

if (attack == 49){
	if (state_timer == 1){
	var_eggX = x;
	var_eggY = y;
	}
	if window == 2 && (((x < 0) || ((room_width - x)< 0)) || state_timer > 300) {
		window = 3;
		window_timer = 0
		x = var_eggX;
		y = var_eggY;
		sound_play(asset_get("sfx_abyss_portal_spawn"))
	}
}