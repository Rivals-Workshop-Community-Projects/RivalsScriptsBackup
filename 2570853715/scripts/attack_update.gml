//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack){
case AT_NSPECIAL:
	if(was_parried){
		nspecial_charge_level = 0;
	}
	
	if(knife_hit){
		can_jump = true;
	}
	if(jump_down and can_jump and window > 2){
		nspecial_charge_level = 0;
	}
	if ((left_down and state_timer <= 5 and spr_dir == 1) || (right_down and state_timer <= 5 and spr_dir == -1) and     
    	(b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
	
	
	if(window == 1 and window_timer == 1 and nspecial_charge_level >= nspecial_charge_max){
		knife_hit = false;
		window = 3;
	}
    if(window == 2){
    	can_shield = true;
    	can_jump = true;
    	if(special_pressed){
    		window = 8;
    		move_cooldown[AT_NSPECIAL] = 8;
    		move_cooldown[AT_FSPECIAL] = 8;
    	}
        if(window_timer == 8){
        	nspecial_charge_level++;
        	white_flash_timer_set(8);
        	if(nspecial_charge_level >= nspecial_charge_max){
        		nspecial_charge_level = nspecial_charge_max;
        		spawn_hit_fx(x-spr_dir*30, y-30, 19);
        		sound_play(sound_get("nspecial_charged"));
        		window = 7;
        	} else {
        		sound_play(sound_get("nspecial_charging"));
        	}
        }
    } else if (window == 3){
    	if(down_down){
    		spr_angle = spr_dir == 1? -30 : 30;
    	} else if (up_down) {
    		spr_angle = spr_dir == 1? 30 : -30;
    	}
    } else if (window == 4){
    	can_fast_fall = false;
    	if(window_timer%4 == 0){
    		sound_play(sound_get("knife_throw"));
    	}
    	if(window_timer%8 == 0){
    		var knife = create_hitbox(AT_NSPECIAL, 1, x + spr_dir*30, y - 40 - spr_dir*(spr_angle/2));
    		knife.hsp = spr_dir*14*dcos(spr_angle*spr_dir);
        	knife.vsp = -14*dsin(spr_angle*spr_dir)
        	knife.proj_angle = spr_angle;
        	knife.image_index = random_func(0, 5, true);
    	}
    	if(window_timer == 32){
    		nspecial_charge_level-=3;
    		if(nspecial_charge_level <= 0){
    			nspecial_charge_level = 0;
    			window++;
    			window_timer = 0;
    		}
    	}
    } else if(window == 5){
    	spr_angle = 0;
    }
	break;

case AT_FSPECIAL:
	can_fast_fall = false;
	can_wall_jump = true;
	if(window == 1 and window_timer == 6){
		//spawn_hit_fx(x+spr_dir*8, y-26, 302);
		for(var i = 0; i < demon_trail_size; i++){
			demon_trail[i] = 
    		{x:x, y:y, sprite_index:sprite_index, image_index:0, color:c_white, spr_dir:spr_dir, life:0};
		}
	} else if (window == 2){
		if(has_hit_player){
			window++;
			window_timer = 0;
		}
		for(var i = 0; i < demon_trail_size; i++){
			demon_trail[i].life--;
		}
		var cur_time = get_gameplay_time();
		var current_trail = demon_trail[floor(cur_time/2)%3];
		if(current_trail.life <= 0){
			current_trail.x = x;
			current_trail.y = y;
			current_trail.sprite_index = sprite_index;
			current_trail.image_index = image_index;
			current_trail.color = c_blue;
			current_trail.spr_dir = spr_dir;
			
			//if we walk we make the trail last longer so it looks cooler
				current_trail.life = 5;
		}
	} else if (window == 6){
		hud_offset = 8;
		if(window_timer == 15)
			window = 8;
	} else if (window == 5){
		hud_offset = 8;

	} else if (window == 4){
		hud_offset = -900;
		if(window_timer == 11 and !hitpause)
			x += spr_dir*40;
	}
	break;

case AT_DSTRONG:
    if(window == 1 or window == 2){
        if(state_timer*6 < 60){
        	hud_offset = state_timer*6;
        } else if(state_timer*6 >= 60){
        	hud_offset = 60;
        }
    } else {
        hud_offset = 60;
    }
	break;

case AT_DSPECIAL_2:
	can_fast_fall = false;
	//fast_fall = false;
	if(window_timer == 10){
		move_cooldown[AT_DSPECIAL_2] = 40;
		with(pHitBox){
			if(attack == AT_DSPECIAL and player == other.player){
				reversed = !reversed;
			}
		}
	}
	break;

case AT_FSTRONG:
    if(window == 2 and window_timer == 9){
    	if(left_down){
    		if(place_meeting(x-60, y+2, asset_get("par_block")) or place_meeting(x-60, y+2, asset_get("par_block_jumpthrough")) )
    			x-= 60;
    	} else if (right_down){
    		if(place_meeting(x+60, y+2, asset_get("par_block")) or place_meeting(x+60, y+2, asset_get("par_block_jumpthrough")) )
    			x+= 60;
    	}
    }
	break;

case AT_USTRONG:
    if(window == 2 and window_timer == 5){
    	if(left_down){
    	
    			x-= 80;
    	} else if (right_down){

    			x+= 80;
    	}
    }else if (window == 4 and window_timer = 1){
    	//sound_play(asset_get("sfx_swipe_heavy2"));
    	sound_play(sound_get("chainsaw"));
    } else if(window == 4 and window_timer == 4 and !hitpause){
    	move_cooldown[AT_USTRONG] = 70;
    	
    	var chainsaw = create_hitbox(AT_USTRONG, 1, x-spr_dir*60, y-30);
    	chainsaw.vsp -= strong_charge/10;
    }
	break;
case AT_DATTACK:
	if(window == 1){
		dattack_jump_buffer = false
		hud_offset+=6;
	}
	if(window == 1 and window_timer == 10){
		sound_play(asset_get("sfx_blow_heavy1"));
		take_damage(player, player, 1);
	}
	if(has_hit and window < 3){
		if(jump_down or jump_pressed){
			dattack_jump_buffer = true;
		}
	}
	if(has_hit and (window == 3 or window == 2 and window_timer > 6)){
		if(jump_pressed or dattack_jump_buffer){
			state_timer = 0;
			set_state(PS_JUMPSQUAT);
		}
		can_jump = true;
	}
	break;

case AT_UTILT:
	if(window == 1 and window_timer == 2){
		sound_play(sound_get("utilt_loop"), true);
	}
	if(window == 4 and window_timer == 3){
		sound_stop(sound_get("utilt_loop"));
	}
	if(has_hit and window == 4 and window_timer > 3){
		can_attack = true;
		can_special = true;
		can_jump = true;
	}
	if(window == 4 and !free and !was_parried){
		set_state(PS_LAND);
	}
	break;

case AT_DSPECIAL:
    if (window == 2){
		if(window_timer == 8){
		move_cooldown[AT_DSPECIAL] = 40;
        var knife = create_hitbox(AT_DSPECIAL, 1, x, y-32);
        knife.vsp = 4;
        knife.hsp = spr_dir*4;
        knife.proj_angle = spr_dir == 1? -45 : 45;
		} else if(window_timer == 12){
        var knife  = create_hitbox(AT_DSPECIAL, 1, x+spr_dir*4, y-32+4);
        knife.vsp = 3.8;
        knife.hsp = spr_dir*4.2;
        knife.proj_angle = spr_dir == 1? -45 : 45;
		} else if(window_timer == 4){
        var knife  = create_hitbox(AT_DSPECIAL, 1, x-spr_dir*4, y-4-32);
        knife.vsp = 4.2;
        knife.hsp = spr_dir*3.8;
        knife.proj_angle = spr_dir == 1? -45 : 45;
		}
    }
    
    
    can_fast_fall = false;
    can_move = false;
	break;

case AT_FTILT:
    if(window == 2 and window_timer == 1){
        take_damage(player, player, 1);
    }
	break;


case AT_TAUNT_2:
	if(state_timer == 1){
		sound_play(sound_get("utilt_loop"), true);
	}
	if(window_timer == 23 and taunt_down){
		if(taunt_down){
			window_timer = 2;
		}
	}
	if(window_timer == 24){
		sound_stop(sound_get("utilt_loop"));
	}
break;

case AT_USPECIAL:

	can_fast_fall = false;
	if (window == 1){

		if (window_timer == 1){
			uspec_hsp = hsp;
			uspec_vsp = vsp;
			usp_land = false;
		}
		vsp = 0;
		hsp = 0;
	} else if (window == 2 && window_timer == 9){
		var distance = 80;
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14;
		if (joy_pad_idle){
			hsp = 0;
			vsp = -distance;
		}else{
			hsp = (distance * cos(angle));
			vsp = (distance * sin(angle));
		}
		draw_indicator = false;
		invincible = true;
		invince_time = 1;
	} else if (window == 2 and window_timer == 10 and !free){
		uspec_end_x = x;
		uspec_end_y = y;
		hsp = clamp(hsp, -9.5, 9.5); 
		vsp = clamp(vsp, -9, 9);
		usp_land = true;
		set_state( PS_LANDING_LAG );
		landing_lag_time = 16;
		
	} else if (window == 2 and window_timer > 10){
		draw_indicator = true;
		uspec_end_x = x;
		uspec_end_y = y;
		hsp = 0;
		vsp = 0;
	}
	if (window > 1){
		can_wall_jump = true;
	}
    if(window == 2 and window_timer == 28){
    	hsp = clamp(hsp, -3, 3);
		vsp = clamp(vsp, -3, 3);
    	if(!(special_down or special_pressed)){
    		window = 6;
    		window_timer = 0;
    	}
    }
    if(window > 2 and window < 6){
    	hud_offset = 80;
    }
    if(window == 5 and window_timer == 3){
        spawn_hit_fx(x, y-30, 143);
		spawn_hit_fx(x, y-30, 204);
		sound_play(sound_get("boom"));
    }
	break;

case AT_JAB:
	was_parried = false;
	break;
}



#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}