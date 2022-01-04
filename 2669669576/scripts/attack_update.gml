//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch(attack){
    case AT_DATTACK:
		if(window == 1 and window_timer == 1 and get_player_color(player) > 15){
			sound_play(sound_get("grunt6"));
		}
        if(free){
           set_attack_value(AT_DATTACK, AG_CATEGORY, 1); 
        }
        if(has_hit and window == 3){
            can_attack = true;
        }
        break;
    case AT_NAIR:
    	can_wall_jump = true;
    		if(window == 1 and window_timer == 3 and get_player_color(player) > 15){
				sound_play(sound_get("grunt7"));
				attack_audio = sound_get("grunt7");
			}
			if(window == 4 and window_timer == 3 and get_player_color(player) > 15){
				sound_play(sound_get("grunt2"));
				attack_audio = sound_get("grunt2");
			}
			if(window == 7 and window_timer == 3 and get_player_color(player) > 15){
				sound_play(sound_get("grunt6"));
				attack_audio = sound_get("grunt6");
			}
            if(window == 6 and has_hit){
            	if(attack_pressed and up_down or up_stick_down){
            		window_timer = 0;
            		window = 1;
            		attack_end();
            		set_attack(AT_UAIR);
            	} else if (attack_pressed and down_down or down_stick_down) {
            		window_timer = 0;
            		window = 1;
            		attack_end();
            		set_attack(AT_DAIR);
            	} else if (attack_pressed and (left_down and spr_dir == 1 or right_down and spr_dir == -1) or (left_stick_down and spr_dir == 1 or right_stick_down and spr_dir == -1)){
            		window_timer = 0;
            		window = 1;
            		attack_end();
            		set_attack(AT_BAIR);
            	} else if (attack_pressed and (left_down and spr_dir == -1 or right_down and spr_dir == 1) or (left_stick_down and spr_dir == -1 or right_stick_down and spr_dir == 1)){
            		window_timer = 0;
            		window = 1;
            		attack_end();
            		set_attack(AT_FAIR);
            	} else if(attack_pressed) {
                	window++;
                	window_timer = 0;
            	}
            }
            if(window == 7 and window_timer == 8){
                vsp-=4;
            }
        break;
    case AT_UAIR:
    	can_wall_jump = true;
    	if(window == 1 and window_timer == 3 and get_player_color(player) > 15){
			sound_play(sound_get("grunt1"));
			attack_audio = sound_get("grunt1");
		}
        if((attack_down or up_stick_down) and window == 3 and (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) and has_hit or window_timer = floor(get_window_value(attack, window, AG_WINDOW_LENGTH)*1.5))){
            has_hit = false;
            attack_end();
            window_timer = 0;
            window = 1;
        }
        break;
    case AT_NSPECIAL:
    	trigger_wavebounce();
    	if(window == 1) {
			
			nspecial_hitbox = noone;
			if(window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)){
				sound_play(asset_get("sfx_frog_fspecial_charge_loop"), true, noone, 1, 1);
				proj_size = nspecial_cur_size;
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
				sound_play(sound_get("shadow_charge"), 0, noone, .7+proj_size/10, .9+proj_size/10);
				if(nspecial_cur_window!= 0){
					window = nspecial_cur_window;
					window_timer = 0;
				}
				if(proj_size > 3){
					if(shield_pressed){
						sound_play(asset_get("sfx_frog_fspecial_cancel"));
						sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
						clear_button_buffer(PC_SHIELD_PRESSED);
						nspecial_cur_size = proj_size;
						window = 7;
						attack_end();
					} else {
						sound_stop(sound_get("shadow_charge"));
						sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
						sound_play(asset_get("sfx_swipe_medium1"));
						sound_play(sound_get("shadow_throw"));
						window_timer = 0;
						window = 6;
						nspecial_cur_size = 1;
						nspecial_hitbox = create_hitbox(AT_NSPECIAL, proj_size, x-spr_dir*24, y-30);
						nspecial_hitbox.shadowball_size = proj_size;
						nspecial_hitbox.hsp = 0;
						nspecial_cur_window = 0;
						nspecial_cur_frame = 0;
					}
				}
			}
		}
		if(window == 2 or window == 3 or window == 4 or window == 5){
			nspecial_cur_window = window;
			nspecial_cur_frame = window_timer;
			if(shield_pressed){
				sound_play(asset_get("sfx_frog_fspecial_cancel"));
				sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
				clear_button_buffer(PC_SHIELD_PRESSED);
				nspecial_cur_size = proj_size;
				window = 7;
				attack_end();
			}
			
			
			if(window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)){
				
				if(proj_size > 3 or window == 4){
					sound_play(asset_get("sfx_frog_fspecial_charge_full"));
					sound_play(sound_get("shadow_charge"), 0, noone, .7+proj_size/10, .9+proj_size/10);
					sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
					window_timer = 0;
					window = 7;
					nspecial_cur_size = 4;
				} else {
					sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
					sound_play(sound_get("shadow_charge"), 0, noone, .7+proj_size/10, .9+proj_size/10);
					proj_size++;
					nspecial_cur_size = proj_size;
				}
			}
			if(!(special_down) and proj_size > 0){
				
				window_timer = 0;
				window = 6;
				sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
				sound_stop(sound_get("shadow_charge"));
				sound_play(asset_get("sfx_swipe_medium1"));
				sound_play(sound_get("shadow_throw"));
				nspecial_cur_window = 0;
				nspecial_cur_frame = 0;
				nspecial_cur_size = 1;
				nspecial_hitbox = create_hitbox(AT_NSPECIAL, proj_size, x-spr_dir*24, y-30);
				nspecial_hitbox.shadowball_size = proj_size;
				nspecial_hitbox.hsp = 0;
			}
		} else if (window == 6 and instance_exists(nspecial_hitbox)){
			if(window_timer < 6){
				move_cooldown[AT_NSPECIAL] = 45;
				nspecial_hitbox.x = x-spr_dir*24+hsp;
				nspecial_hitbox.y = y-30+vsp;
			}
			if(window_timer == 6){
				//print_debug(proj_size);
				nspecial_hitbox.x = x+spr_dir*34+hsp;
				nspecial_hitbox.y = y-30+vsp;
				nspecial_hitbox.hsp = spr_dir*5.5*(1+proj_size/10*2);
				if(proj_size == 2){
					nspecial_hitbox.hsp = spr_dir*9;
				}
			}
		}
		

		break;
	case AT_DSPECIAL:
		can_fast_fall = false;
		if(window == 1){
			dspecial_falling_loop = 0;
			if(window_timer == 1){
				dspecial_start = free;
			} else {
				if(dspecial_start){
					vsp = -6+window_timer/6;
				} else {
					vsp = -8 + window_timer/6;
				}
			}
		}
		if(window == 2 and !hitpause){
			if(!free){
				window = 5;
				window_timer = 0;
			}
		}
		if(window == 2 or window == 3){
			vsp = lerp(vsp, 20, .06)
		}
		
		if((window == 3 or window == 2 and window_timer > 6)and !hitpause){
			if(shield_down){
				window= 4;
				window_timer = 0;
			}
		}
		if(window == 4){
			set_attack_value(attack, AG_CATEGORY, 1);
		}
		if !hitpause and (window == 2 or window == 3){
			if(window_timer%9 == 0){
				sound_play(asset_get("sfx_swipe_medium1"));
			}
		}
		
		if(window == 3 and !hitpause and window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)){
			can_wall_jump = true;

			dspecial_falling_loop++;
			if(dspecial_falling_loop > 2){
				window++;
				window_timer = 0;
			}
		
		}
		if(window == 5 and !hitpause){
			if(window_timer = 1){
				has_hit = false;
				spawn_hit_fx(floor(x), floor(y), dive);
				sound_play(asset_get("sfx_abyss_hazard_hit"));
				dspecial_falling_loop = 0;
			}
			if(left_down){
				hsp = -4;
				spr_dir = -1;
			} else if (right_down){
				hsp = 4;
				spr_dir = 1;
			}
			if(dspecial_falling_loop > 1 and !special_down){
				window_timer = 0;
				window++;
			}
			if(special_down and window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)){
				if(dspecial_falling_loop < 4){
					window_timer = 3;
					dspecial_falling_loop++;
				}
			}
		}
		if(window == 6){
			if(window_timer == 11){
				spawn_hit_fx(floor(x), floor(y+6), dive);
				sound_play(asset_get("sfx_abyss_hazard_hit"));
				sound_play(asset_get("sfx_swipe_heavy1"));
			}if(window_timer == 1){
				sound_play(asset_get("sfx_abyss_explosion_start"));
			}
		}
		if(window == 8 and window_timer == 9){
			sound_play(sound_get("venoshock"));
		}
		if(window == 8 and window_timer > 9){
			hsp*=.65;
		}
		
		if(window == 8 and !has_hit and window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)){
			attack_end();
			hsp = hsp/2;
			set_state(PS_PRATFALL);
		}
		break;
		case AT_FTILT:
			if(was_parried){
				window = 7;
				attack_end();
			}
			if(window = 1){
				if(window_timer == 3){
					sound_play(asset_get("sfx_swipe_medium1"));
					if(get_player_color(player) > 15){
						sound_play(sound_get("grunt3"));
					}
				}
				if(window_timer == 6){
					hsp = spr_dir*3;
				}
				ftilt_loop_timer = 0;


			}
			if(window == 2){
				if(window_timer%3== 0 and !hitpause){
					sound_play(asset_get("sfx_frog_fspecial_fire"), false, noone, .7, .9)
				}
				if(window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)){
					ftilt_loop_timer++;
					window_timer = 0;
				}
				if!(attack_down or right_stick_down or left_stick_down) and (ftilt_loop_timer > 0 or window_timer > 11){
					destroy_hitboxes();
					window_timer = 0;
					window++;
				}
			}
			if(window == 3){
				if(window_timer == 3 ){
					sound_play(asset_get("sfx_swipe_medium1"));
					if(get_player_color(player) > 15){
						sound_play(sound_get("grunt1"));
					}
				}
				if(window_timer = 6){
					sound_play(asset_get("sfx_frog_fspecial_fire"), false, noone, 1, .9)
				}
				if(window_timer < 6 and has_hit){
					if(up_down and attack_down) or up_stick_down{
						attack_end();
						set_attack(AT_UTILT);
					} else if (down_down) or down_stick_down{
						set_attack(AT_DTILT);
					}
				}
			}
			
		break;
		case AT_BAIR:
		can_wall_jump = true;
		if(window == 1 and window_timer == 3 and get_player_color(player) > 15){
			sound_play(sound_get("grunt7"));
			attack_audio = sound_get("grunt7");
		}
		if((attack_down or (spr_dir == 1 and left_stick_down) or (spr_dir == -1 and right_stick_down)) and window == 3 and (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) and has_hit or window_timer = floor(get_window_value(attack, window, AG_WINDOW_LENGTH)*1.5))){
            attack_end();
            has_hit = false;
            window_timer = 0;
            window = 1;
        }
        break;
        case AT_USTRONG:
        	if(was_parried){
				window = 5;
				attack_end();
			}
        
        	can_fast_fall = false;
        	if(window == 2 and window_timer = 3){
        		vsp = -((strong_charge/60)*14+10)
        	}
        break;
        
        case AT_USPECIAL:
	        can_move = false;
			can_fast_fall = false;
			
			if (window == 1 and window_timer == 1 and u_player_reset) {
					u_player = noone;
			}
			if(window == 2 or window == 4){
				draw_indicator = false;
				if(!joy_pad_idle){
					var joy = joy_dir;
					vsp = lerp(vsp, lengthdir_y(7,joy), 0.25)
					hsp = lerp(hsp, lengthdir_x(7,joy), 0.25)
				}
			}
			
			if (window == 3) {
				draw_indicator = false;
				if(!joy_pad_idle){
					var joy = joy_dir;
					vsp = lerp(vsp, lengthdir_y(14,joy), 0.23)
					hsp = lerp(hsp, lengthdir_x(14,joy), 0.23)
				}
			} else if(window == 5){
				if(has_hit){
					if(window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)){
						attack_end();
						set_state(PS_IDLE_AIR);
					}
					can_attack = true;
				} 
			}
			if(window > 4){
				can_wall_jump = true;
			}
			if(window == 3) and !free {
				hsp = clamp(hsp, -8, 8); 
				vsp = clamp(vsp, -9, 9);
				sound_stop(sound_get("teleport_start"));
				set_state( PS_LANDING_LAG );
				landing_lag_time = 16;
			}
			if(window == 4){
				vsp = clamp(vsp, -3, 4);
				hsp = clamp(hsp, -4, 4);
			}
			if(window == 5 and window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)){
				if(!free){
					set_state( PS_LANDING_LAG );
					landing_lag_time = 8;
				}
			}
			
        break;
    	case AT_DTILT:
    		if(window == 1 and window_timer == 3 and get_player_color(player) > 15){
				sound_play(sound_get("grunt1"));
			}
    	break;
    	case AT_UTILT:
    		if(window == 1 and window_timer == 3 and get_player_color(player) > 15){
				sound_play(sound_get("grunt5"));
			}
    	break;
    	case AT_JAB:
    		if(window == 1 and window_timer == 1 and get_player_color(player) > 15){
				sound_play(sound_get("grunt7"));
			}
			if(window == 4 and window_timer == 2 and get_player_color(player) > 15){
				sound_play(sound_get("grunt4"));
			}
			
    	break;
    	case AT_FAIR:
    		can_wall_jump = true;
    	    if(window == 1 and window_timer == 3 and get_player_color(player) > 15){
				sound_play(sound_get("grunt9"), false, noone, 0.85, 1);
				attack_audio = sound_get("grunt9");
			}
    	break;
    	case AT_FSPECIAL_AIR:
    	case AT_FSPECIAL:
    		if(window == 2 and window_timer == 1){
    			if(!free){
    				move_cooldown[AT_FSPECIAL] = 60;
    				move_cooldown[AT_FSPECIAL_AIR] = 60;
    				fspecial_hard_cd = true;
    			} else {
    				fspecial_hard_cd = false;
    				move_cooldown[AT_FSPECIAL_AIR] = 9000;
    				move_cooldown[AT_FSPECIAL] = 9000;
    			}
    			if(instance_exists(fspecial_wall)){
    				fspecial_wall.state = 4;
    				fspecial_wall.life = 0;
    				fspecial_wall.sprite_index = sprite_get("wall_despawn");
    			}
    			fspecial_wall = instance_create(x+spr_dir*80, y-128, "obj_article1");
    			fspecial_wall.spr_dir = spr_dir;
    		}
    	break;
    	case AT_FSTRONG:
			if(window == 1 and window_timer == 1){
				fstrong_punch_distance = 0;
				fstrong_accel = .2
			} else if(window == 1 and window_timer == 7){
				sound_play(sound_get("shadowcharge"));
				fstrong_hitbox = create_hitbox(AT_FSTRONG, 1, floor(x+spr_dir*(fstrong_punch_distance)), y-40);
			} else if(window == 1 and window_timer == 8){
				fstrong_hitbox.hitbox_timer = 0;
				fstrong_punch_distance+=4*fstrong_accel;
				fstrong_accel += .085;
				fstrong_hitbox.x = x+spr_dir*fstrong_punch_distance;
			}
		break;
		case AT_DSTRONG:
			if(window == 1 and window_timer == 4){
				sound_play(sound_get("sludgebomb"));
			} else if (window == 2 ){
				if(window_timer = 1)
					sound_play(sound_get("sludgefire"));
				if(window_timer = 3)
					sound_play(sound_get("fstrong"));
			}
			break;
		case AT_USPECIAL_2:
			if(window == 1){
				shadowball_hit_timer = 60;
			}
			if(window == 5){
				shadowball_hit_timer = 0;
				shadowball_hit = false;
			}
			trigger_b_reverse();
			can_move = false;
			can_fast_fall = false;
			if (window == 1 and window_timer == 1 and u_player_reset) {
				u_player = noone;
			}
			if (window < 5 and window > 1) {
				if (window_timer > 8 or attack == AT_USPECIAL_2) {
					//print_debug(shadowball_hit);
					if(!joy_pad_idle and shadowball_hit_timer <= 0){
						var joy = joy_dir;
						vsp = lerp(vsp, lengthdir_y(14,joy), 0.25)
						hsp = lerp(hsp, lengthdir_x(14,joy), 0.25)
					} else if(shadowball_hit and shadowball_hit_timer > 0){
						var left_blast = 60+get_stage_data(SD_X_POS)-get_stage_data(SD_SIDE_BLASTZONE);
						var right_blast = -60+get_stage_data(SD_X_POS)+get_stage_data(SD_SIDE_BLASTZONE)+get_stage_data(SD_WIDTH);
						x = clamp(lerp(x, shadowball_hit_player.x, 0.3), left_blast, right_blast)
						y = lerp(y, shadowball_hit_player.y, 0.3)
					}
				} 
			}else if (window == 3) {
				//shadowball_hit = false;
				vsp = 0;
				hsp = 0;
				if window_timer == 5
				{
					if !u_player_reset u_cooldown = u_max_cool;	
					u_player_reset = true;
				}
				
			} else if(window == 5){
				if(has_hit){
					if(window_timer == get_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH)){
						attack_end();
						set_state(PS_IDLE_AIR);
					}
					//can_attack = true;
				} 
			}
		break;
		case AT_DAIR:
			if(window == 1 and window_timer == 3 and get_player_color(player) > 15){
				sound_play(sound_get("grunt7"));
				attack_audio = sound_get("grunt7");
			}
			if(window == 2 and window_timer == 6 and get_player_color(player) > 15){
				sound_play(sound_get("grunt7"));
				attack_audio = sound_get("grunt7");
			}
			
		break;
        
}

if(attack == AT_NAIR or attack == AT_FAIR or attack == AT_BAIR or attack == AT_DAIR or attack == AT_UAIR){
    if(vsp < -7){
        vsp = -7;
    }
}

#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}