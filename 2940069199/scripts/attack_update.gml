//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB) {
  if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    window = get_attack_value(attack, AG_NUM_WINDOWS) + 1;
    was_parried = false;
  }
  if (window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    window = get_attack_value(attack, AG_NUM_WINDOWS) + 1;
    was_parried = false;
   
  }

}


/*
if(attack == AT_JAB){
	if(window == 2){
		if(window_timer >= get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH) - 2){
			can_attack = true;
			if(attack_pressed){
				move_cooldown[AT_JAB] = 25;
				window = 4;
				window_timer = 0;
			}
		}
	}
	if(window == 3){
		if(window_timer == get_window_value(AT_JAB, 3, AG_WINDOW_LENGTH)){
				set_state(PS_IDLE)
		}
	}
	
	if(window == 5){
		if(window_timer >= get_window_value(AT_JAB, 5, AG_WINDOW_LENGTH) - 3){
			can_attack = true;
			if(attack_pressed){
				move_cooldown[AT_JAB] = 25;
				window = 7;
				window_timer = 0;
			}
		}
	}
	if(window == 6){
		if(window_timer == get_window_value(AT_JAB, 6, AG_WINDOW_LENGTH)){
				set_state(PS_IDLE)
		}
	}
}
*/
if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	if (window == 1)
	{
		tetris_hit = false;
	}
	else if (window == 2){
		if(window_timer == 1){
			if(!hitpause){
				if(comet == noone){
					comet = instance_create(x+32*spr_dir, y-60, "obj_article1");
					/*print(comet);*/
				}else{
					comet.activate = true;
				}
			}
		}
	}
	if (window >= 3 && special_down && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - nspecial_pop_hold) {
		nspecial_pop_timer++
	}
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 50;
	can_move = false;
	can_fast_fall = false;
	if (window == 1)
	{
		if (instance_exists(comet))
		{
			comet.is_hitpause = false;
		}
	}
	if(window == 2){
		if (collision_point(x + 40 * spr_dir, y - 20, asset_get("par_block"),false,true) != noone){ 
			var wall_x = x - 42 *spr_dir;
			while(collision_point(wall_x, y - 40, asset_get("par_block"), false, true) != noone){
				wall_x -= spr_dir;
			}
			x = wall_x + spr_dir * 40;
			if(window_timer >= 0){
				window = 3;
				window_timer = 0
				if(!hitpause){
					sound_play(asset_get("sfx_ori_energyhit_medium"))
					spawn_hit_fx(x + 40 * spr_dir, y, 193)
				}
			}
		}
		if(window_timer == 1){
			if(!hitpause){
				hsp = 10 * spr_dir
				vsp = -4
			}
		}else{
			if(hsp != 0){
			spr_angle = radtodeg(arctan(vsp/-hsp));
			}
			if(vsp < 3)
			vsp = vsp + .4
		}
		if(has_hit){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
			window = 3
			window_timer = 1
		}
		if(instance_exists(comet) && instance_place(x, y, comet) && fspecial_hit_comet == false){
			window = 3
			window_timer = 1
			
			fspecial_hit_comet = true;
			destroy_hitboxes();
			
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
			
			comet.state = 3
			comet.state_timer = 1
			comet.spr_dir = spr_dir
		}
	}
	if(window == 3){
		if(spr_angle != 0){
			spr_angle = lerp(radtodeg(arctan(vsp/-hsp)), 0, 1);
		}
		if(!hitpause){
			vsp = -2
		}
	}
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
	if(window == 1){
		if(window_timer == 1){
            if(free and clinged_player == true){
            	clinged_player = false;
            }
		}
		//if (jump_pressed && !can_tap_jump()) {
		//	print("AHHHHHHHHHH")
		//}
        if(window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)){
            if(!hitpause){
                sound_play(asset_get("sfx_swipe_heavy2"))
                if(uspecial_air = false && free){
                	vsp = -7
                	hsp = 3 * spr_dir
                }
                mic = create_hitbox(AT_USPECIAL, 1, x + 10 * spr_dir, y - 52)
            }
        }
	}
    if(window == 2){
        if(window_timer == 1){
            if(right_down && spr_dir = 1) || (left_down && spr_dir = -1){
		    	mic.hsp = 15 * spr_dir
            }else if(up_down){
		    	mic.hsp = 5 * spr_dir
            }else{
		    	mic.hsp = 10 * spr_dir
            }
			if(free){
				uspecial_air = true;
			}else if(!free){
				uspecial_air = false;
			}
        }
        if(instance_exists(mic) && instance_exists(mic.mic_clinged)){
        	if(mic.mic_clinged = true)
        	{
        		window = 4
	        	window_timer = 0
        	}
       	}
        if(window_timer > 13 && !hitpause && mic.mic_clinged == false){
            mic.vsp = 0
            mic.hsp = 0
		    mic.x = lerp(floor(x), mic.x+5*spr_dir, .5);
		    mic.y = lerp(floor(y), mic.y+0, .5);
		    mic.damage = 0;
		    mic.kb_value = 0;
		    mic.hit_effect = 1;
        }else{
            mic.vsp = -15
        }
    }
    if(window == 3){
        if(instance_exists(mic) && instance_exists(mic.mic_clinged)){
        	if(mic.mic_clinged = true)
        	{
        		window = 4
	        	window_timer = 0
        	}
       	}
    }
    if(window == 4){
        if(window_timer == 1 && !hitpause){
            sound_play(asset_get("sfx_may_whip2"))
        }
        if(has_hit_player){
            invincible = true
        }
		x = lerp(floor(mic.x), x+4*spr_dir, .9);
		y = lerp(floor(mic.y), y+0, .9);
        if(window_timer == get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)){
            window = 5
            window_timer = 0
            
        }
    }
    if(window == 5){
        move_cooldown[AT_USPECIAL] = 30;
        invincible = false
        if(window_timer == 0){
            if(has_hit_player){
                invincible = true
            }
            if(!hitpause){
                if(has_hit_player){
                vsp = -7
                }else{
                    vsp = -10
                }
            }
        }
        if(window_timer == 1){
        	if(clinged_player == true and !hitpause){
      
            	create_hitbox(AT_USPECIAL, 2, x + 10 * spr_dir, y - 52)
            	var _hitbox=create_hitbox(AT_USPECIAL, 3, x + 10 * spr_dir, y - 52)
        	}
        	/*print(comet);*/
        
			if(instance_exists(comet)) {
			 with comet {
        	if instance_place(x, y, other) {
            state = 4;
            state_timer = 0;
            hsp = -10 * other.spr_dir;
            vsp = 15;
            spr_dir = -other.spr_dir;
        }
    }
}
    		
        }
        if(instance_exists(mic)){
            mic.destroyed = true 
    		mic = noone
        }
    }
    
}



if (attack == AT_DSPECIAL){
	if(window == 1){
		if (tetrimino == 6 && window_timer > 3)
	{
		window = 3;
		window_timer = 0;
	}
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	can_fast_fall = false;
	can_shield = false
    if (window == 2){
    	if(window_timer == 1){
    		sound_play(sound_get("se_game_hold"))

    	}else{
    		
    		
    	}
    	if(window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)){
    		tetrimino++
    		if (tetrimino == 7)
    		{
    			window = 4;
    			window_timer = 0;
    			white_flash_timer_set(9);
    			tetrimino = 6;
    		}
    	}
    	if(special_pressed){
    		window = 3;
    		window_timer = 0
    	}
    }
    if(window == 3){
		if (!dspecthrow) {
			vsp = lerp(vsp, 0, .35);
			hsp = lerp(hsp, 0, .2);
		}
    	if(window_timer == 1){
    		if(!hitpause){
    			if(left_down){
    				spr_dir = -1
    			}
    			if(right_down){
    				spr_dir = 1
    			}
    		}
    	}
    	if(window_timer = 1 and !hitpause){
    		
    		var _x_mod = hsp;
    		var _y_mod = vsp;
    		var _temphsp = hsp;
    		var _tempvsp = vsp;
    		for(var i = 1; i < 12; i++){
    			if(free){
    				_tempvsp += gravity_speed * .5;
    			}
    			_tempvsp = lerp(_tempvsp, 0, .35);
    			_temphsp = lerp(_temphsp, 0, .2);

    			_x_mod+=_temphsp;
    			_y_mod+=_tempvsp;
    			
    		}
    		_x_mod = round(_x_mod);
    		_y_mod = round(_y_mod);
    		var _tetrino = create_hitbox(AT_DSPECIAL, tetrimino + 1, x +_x_mod + 40 * spr_dir,y - 40 + _y_mod)
    		_tetrino.gamer =  true;
    		_tetrino.transcendent = true;
    	//	_tetrino.destroy_fx = hfx_tetrino_path;
    		_tetrino.hit_priority = 0;
    		_tetrino.destroy_fx = 1;
    	}
    	if(window_timer == 12){
    		move_cooldown[AT_DSPECIAL] = 35;
    		cur_tetramino = create_hitbox(AT_DSPECIAL, tetrimino + 1, x + 40 * spr_dir,y - 40)
    		tetrimino = 0
			dspecthrow = true;
    	}
    }
    if(window == 4){
		print("no stall?")
    	can_jump = true;
    }
    if(shield_pressed and !hitpause and window < 3){
    		clear_button_buffer(PC_SHIELD_PRESSED);
    		window = 4;
    		window_timer = 0;
    		white_flash_timer_set(9);
    }
}


if(attack == AT_TAUNT){
	if(window == 1 && window_timer == 1 && Dance == 0 && hitpause == 0){
		sound_play(sound_get("Tralalala"))
	}
	if(window_timer == 1){
		Dance = 0
	}else{
		
	}
	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if(Dance >= 11){
			window ++
			window_timer = 1
			Dance = 0
		}else{
			Dance++	
		}
		window_timer = 1

	}	
	if(shield_pressed){
		window = 5
		window_timer = 1
		move_cooldown[AT_TAUNT] = 10;
		sound_stop(sound_get("Tralalala"))
		Dance = 12
		
	}
}

if(attack == AT_TAUNT_2){
	if(window > 1 && window != 5){
		if(left_down || right_down){
			if(invince_time == 0){
				hsp = 2 * spr_dir
			}
			if(left_down){
				spr_dir = -1
			}
			if(right_down){
				spr_dir = 1
			}
			if(attack_down){
				window = 4;
							if(window == 4 && window_timer == 1 && hitpause == 0){
								if !sound_timer {
		sound_play(sound_get("choochoo"));
		sound_timer = 250;
								}
	}
			}else{
				window = 3;
			}
		}else{
			window = 2;
		}
		if(taunt_pressed || shield_pressed){
			window = 5
			window_timer = 0
		}
		if(window == 5){
			sound_timer = 0;
			sound_stop(sound_get("choochoo"));
		}
	}
}

//#region SFX Controller
var window_timer_last_frame = (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1);
switch(attack){
	case AT_USTRONG:
		insert_sfx(2,1,"sfx_rag_axe_swing",1,1.5,true)
		hud_offset = 55
	break;
	case AT_NSPECIAL:
		if(comet != noone){
		insert_sfx(1,9,"sfx_pom_yell2",0.7,0.9,true)
		}else{
		insert_sfx(1,9,"sfx_pom_yell1",0.7,0.9,true)
			
		}
	break;
	case AT_UTILT:
		insert_sfx(1,4,"sfx_ori_stomp_spin",1,1.1,true)
		hud_offset = 25;
	break;
	case AT_DAIR:
		insert_sfx(1,9,"sfx_rag_axe_swing",0.8,1.4,true)
	break;
	case AT_FAIR:
		insert_sfx(1,9,"sfx_rag_axe_swing",0.8,1.6,true)
	break;
	case AT_FTILT:
		insert_sfx(1,7,"sfx_rag_axe_swing",0.7,2,true)
	break;
	case AT_FSTRONG:
		insert_sfx(2,5,"sfx_pom_taunt_mic_floor",0.7,1,true)
		insert_sfx(2,5,"sfx_pom_yell1",0.7,0.9,true)
	break;
	case AT_JAB:
		insert_sfx(7,4,"sfx_rag_axe_swing",0.6,2.2,true)
	break;
	case AT_UAIR:
		insert_sfx(1,8,"sfx_pom_tail_up",0.7,1.2,true)
		hud_offset = 70
	break;
	case AT_DSTRONG:
		insert_sfx(2,4,"sfx_rag_axe_swing",0.7,1.1,true)
		insert_sfx(3,4,"sfx_rag_axe_swing",0.7,1.3,true)
	break;
	case AT_DATTACK:
		hud_offset = 25;
	break;
	case AT_BAIR:
		hud_offset = 35;
	break;
	case AT_TAUNT_2:
		insert_sfx(1,10,"sfx_absa_concentrate",1,1,true)
		insert_sfx(1,35,"mfx_player_found",1,1,true)
		//insert_sfx(3,3,"choochoo",1,1,false)
		insert_sfx(5,5,"sfx_swipe_weak1",1,1,true)
		insert_sfx(5,20,"sfx_syl_dstrong",1,1.1,true)
	break;
	
	default:
	break;
}

//#endregion

#define insert_sfx(temp_window,temp_window_timer,temp_sound_string,temp_volume,temp_pitch,use_asset_version)
{
	var temp_sfx_obj;
	if(window == temp_window && window_timer == temp_window_timer && !hitpause){
		switch(use_asset_version){
			case 0: // False
				temp_sfx_obj = sound_play(sound_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			case 1: // True
				temp_sfx_obj = sound_play(asset_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			default: // Error
				temp_sfx_obj = noone; 
			break;
		}
	}
	return temp_sfx_obj;
}

#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}