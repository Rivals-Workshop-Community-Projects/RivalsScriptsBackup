//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		if window == 1 and window_timer == 1{
			sound_play(asset_get("sfx_swipe_weak1"));
		}
		if window == 4 and window_timer == 3{
			sound_play(asset_get("sfx_swipe_weak2"));
		}
		if window == 5 and window_timer == 4{
			sound_play(asset_get("sfx_swipe_weak1"));
		}
		if window == 5 and window_timer == 10{
			sound_play(asset_get("sfx_swipe_weak2"));
		}
		if window == 5 and window_timer == 16{
			sound_play(asset_get("sfx_swipe_weak1"));
		}
		if window == 8 and window_timer == 5{
		sound_play(asset_get("sfx_bird_downspecial"),false,noone,.6);
		}
	case AT_DATTACK:
		if window == 1 and window_timer == 7{
		sound_play(asset_get("sfx_blow_weak1"),false,noone,.8);
		sound_play(sound_get("squeak"),false,noone,.35);
	}
	break;
	case AT_FTILT:
		if window == 1 and window_timer == 2{
		sound_play(sound_get("sfx_spear_swing_5"));
	}
	break;
	case AT_UTILT:
		if window == 1 and window_timer == 7{
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		if window == 1 and window_timer == 10{
			sound_play(asset_get("sfx_charge_blade_ready"));
		}
		if window == 4 and window_timer == 3{
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,.6);
			sound_play(asset_get("sfx_kragg_rock_shatter"));
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		if window == 2 and window_timer == 2{
			sound_play(sound_get("sfx_spear_swing_3"));
		}
		break;
	case AT_DSTRONG:
		if window == 3 and window_timer == 6{
			sound_play(asset_get("sfx_swipe_heavy2"));
			sound_play(asset_get("sfx_swish_medium"),false,noone,.8);
		}
		break;
		case AT_NAIR:
		if window == 1 and window_timer == 6{
			sound_play(asset_get("sfx_spin"));
		}
		break;
		case AT_FAIR:
		if window == 1 and window_timer == 8{
			sound_play(asset_get("sfx_swipe_weak2"));
		}
		if window == 2 and window_timer == 4{
			sound_play(asset_get("sfx_swipe_weak1"));
		}
		if window == 2 and window_timer == 10{
			sound_play(asset_get("sfx_swipe_medium2"));
		}
		break;
		case AT_UAIR:
		if window == 2 {
			if window_timer == 4{
			sound_play(asset_get("sfx_bird_upspecial"),false,noone,.6);
			}
			if window_timer == 5 && 11 > vsp {
				vsp = clamp(vsp, -100, -2);
			}
		}
		if window == 3 || window == 4 && 5 > window_timer {
			if attack_down || strong_down || up_strong_down {
				can_fast_fall = false;
				vsp = clamp(vsp, -100, 1.5);
			} else {
			can_fast_fall = true;
			}
		}
		break;
		case AT_DAIR:
		if window == 1 and window_timer == 9{
			sound_play(sound_get("sfx_spear_swing_5"));
		}
		break;
	
	
	
	case AT_NSPECIAL:
	hsp *= .95;
	vsp *= .95;
	if (window == 4 && window_timer == 4) {
		sound_play(sound_get("sfx_spear_swing_1"), noone, 0, 2, 1)
	}
	if (state_timer == 60 && window < 5){
		sound_play(sound_get("sfx_charge_2"));
		spawn_hit_fx(x, y, nspecial_charge);
	}
	if (!free){
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 32);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 28);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
	}
	else{
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 1);	
	}
	switch(window){
		case 2:
		if (free){
			window_timer = 1;
			window = 5;
		}
			if (special_down && !free){
				if (spr_dir == 1 && right_down || spr_dir == -1 && left_down){
					window_timer = 1;
					window = 3;
				}
				if (spr_dir == 1 && left_down || spr_dir == -1 && right_down){
					window_timer = 1;
					window = 4;
				}
			}
			else {
				if (state_timer < 60){
					window_timer = 0;
					window = 5;	
				}
				else {
					window_timer = 0;
					window = 6;	
				}
				
			}
		break;
		case 3:
			if (joy_pad_idle){
				window_timer = 1;
				window = 2;
			}
			if (spr_dir == 1 && left_down || spr_dir == -1 && right_down){
				window_timer = 1;
				window = 4;
			}
			if (!special_down){
				if (state_timer < 60){
					window_timer = 0;
					window = 5;	
				}
				else {
					window_timer = 0;
					window = 6;	
				}
			}
		break;
		case 4:
			if (window_timer == 5){
				spr_dir *= -1;
			}
		break;
		case 5:
			move_cooldown[AT_NSPECIAL] = 20
		    if (window_timer == 6) {
		    	if (instance_exists(spear1) && instance_exists(spear2) && instance_exists(spear3)){
		    		if (spear1.state == 1){
		    			spear1.sprite_index = sprite_get("spear_pin_death_ground"); 
		    		}
		    		if (spear1.state == 3){
		    			spear1.sprite_index = sprite_get("spear_pin_death_wall"); 
		    		}
		    		spear1.state = 5;
		    		spear1.image_index = 0;
		    		spear1 = spear2;
		    		spear1.spear_number = 1;
		    		spear2 = spear3;
		    		spear2.spear_number = 2;
		    		spear3 = instance_create(floor(x + 35*spr_dir), floor(y-45), "obj_article1"); 
		    		spear3.spear_number = 1;
		    		spear3.hsp = 6*spr_dir;
		    		spear3.vsp = -6;
		    		spear3.image_angle = 10*spr_dir;
		    	}
		    	if (instance_exists(spear1) && instance_exists(spear2) && !instance_exists(spear3)){
		    		spear3 = instance_create(floor(x + 35*spr_dir), floor(y-45), "obj_article1"); 
		    		spear3.spear_number = 3;
		    		spear3.hsp = 6*spr_dir;
		    		spear3.vsp = -6;
		    		spear3.image_angle = 10*spr_dir;
		    	}
		    	if (instance_exists(spear1) && !instance_exists(spear2) && !instance_exists(spear3))
		    	|| (instance_exists(spear1) && !instance_exists(spear2) && instance_exists(spear3)){
		    		spear2 = instance_create(floor(x + 35*spr_dir), floor(y-45), "obj_article1"); 
		    		spear2.spear_number = 2;
		    		spear2.hsp = 6*spr_dir;
		    		spear2.vsp = -6;
		    		spear2.image_angle = 10*spr_dir;
		    	}
		    	if (!instance_exists(spear1) && instance_exists(spear2) && instance_exists(spear3))
		    	|| (!instance_exists(spear1) && instance_exists(spear2) && !instance_exists(spear3))
		    	|| (!instance_exists(spear1) && !instance_exists(spear2) && instance_exists(spear3))
		    	|| (!instance_exists(spear1) && !instance_exists(spear2) && !instance_exists(spear3)){
		    		spear1 = instance_create(floor(x + 35*spr_dir), floor(y-45), "obj_article1"); 
		    		spear1.spear_number = 1;
		    		spear1.hsp = 6*spr_dir;
		    		spear1.vsp = -6;
		    		spear1.image_angle = 10*spr_dir;
		    	}
		    }
		break;
		case 6:
			move_cooldown[AT_NSPECIAL] = 50
		    if (window_timer == 6) {
		    	if (instance_exists(spear1)){
			    	if (spear1.state == 1){
			    		spear1.sprite_index = sprite_get("spear_pin_death_ground"); 
			    	}
			    	if (spear1.state == 3){
			    		spear1.sprite_index = sprite_get("spear_pin_death_wall"); 
			    }
			    	spear1.state = 5;
			    	spear1.image_index = 0;
		    	}
		    	if (instance_exists(spear2)){
			    	if (spear2.state == 1){
			    		spear2.sprite_index = sprite_get("spear_pin_death_ground"); 
			    		}
			    	if (spear2.state == 3){
			    		spear2.sprite_index = sprite_get("spear_pin_death_wall"); 
			    }
			    	spear2.state = 5;
			    	spear2.image_index = 0;
		    	}
		    	if (instance_exists(spear3)){
			    	if (spear3.state == 1){
			    		spear3.sprite_index = sprite_get("spear_pin_death_ground"); 
			    	}
			    	if (spear3.state == 3){
			    		spear3.sprite_index = sprite_get("spear_pin_death_wall"); 
			    }
			    	spear3.state = 5;
			    	spear3.image_index = 0;
		    	}
		    	
		    	spear1 = instance_create(floor(x + 35*spr_dir), floor(y-45), "obj_article1"); 
		    	spear1.spear_number = 1;
		    	spear1.hsp = 8.5*spr_dir;
		    	spear1.vsp = -8.5;
		    	spear1.image_angle = 20*spr_dir;
		    	
		    	spear2 = instance_create(floor(x + 35*spr_dir), floor(y-45), "obj_article1"); 
		    	spear2.spear_number = 2;
		    	spear2.hsp = 7*spr_dir;
		    	spear2.vsp = -7;
		    	spear2.image_angle = 10*spr_dir;
		    	
		    	spear3 = instance_create(floor(x + 35*spr_dir), floor(y-45), "obj_article1"); 
		    	spear3.spear_number = 2;
		    	spear3.hsp = 4.5*spr_dir;
		    	spear3.vsp = -4.5;
		    	spear3.image_angle = -20*spr_dir;
		    }
		break;
	}
	break;
	
	
	
	case AT_FSPECIAL:
			if (window >= 5 && window <= 9 && parasol_hit){
				hit_player_obj.x = x;
		        hit_player_obj.y = y - 35;
			}
		switch(window){
			case 1:
				parasol_spear = false;
				set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 5);
			break;
			case 2:
				if (parasol_spear == true){
					window = 4;
	        		window_timer = 1;
	        		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 6);
				}
			break;
			case 5:
				if (window_timer > 0 && window_timer <= 4) 
				|| (window_timer > 8 && window_timer <= 12)
				|| (window_timer > 16 && window_timer <= 20){
					if (parasol_hit){
						hit_player_obj.y -= 4;
					}
				}
				if (window_timer > 4 && window_timer <= 8)
				|| (window_timer > 12 && window_timer <= 16)
				|| (window_timer > 20 && window_timer <= 24){
					if (parasol_hit){
						hit_player_obj.y += 4;
					}
				}
				if (window_timer%8 = 0){
					hit_player_obj.spr_dir *= -1;
				}
			break;
			case 6: // endlag
				if ((spr_dir == 1 && right_down) || (spr_dir == -1 && left_down)){
					set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 7);
				}
				if (!right_down && !left_down){
					set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 8);
				}
				if ((spr_dir == -1 && right_down) || (spr_dir == 1 && left_down)){
					set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 9);
				}
				break;
			case 7:
				if (window_timer < 4 && parasol_hit){
					hit_player_obj.y += 1;
					hit_player_obj.x += 5*spr_dir;
				}
			break;
			case 9:
				if (window_timer < 4 && parasol_hit){
					hit_player_obj.y += 1;
					hit_player_obj.x -= 5*spr_dir;
				}
			}
			
			break;
		break;
		
	break; 
		
		
		 case AT_FSPECIAL_AIR:
        can_fast_fall = false;
        can_wall_jump = true;
        //djump restore
        djumps = 0;
        //landing
        if(window >= 2 && window < 4 && !hitpause && !free){
            sound_play(sound_get("sfx_land"));
            destroy_hitboxes();
			create_hitbox( AT_FSPECIAL_AIR, 8, x, y )
            window_timer = 0;
            window = 4;
            hsp = 4 * spr_dir;
            /*if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
                hsp = 0;
            }//*/
        }else if(window == 4 && free){
            //edge cancel
            attack_end();
            window = 10;
        }
        break;
	
	
	
	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		
		if (window > 1 && !free){
			state = PS_PRATFALL;
		}
		
		switch(window){
			case 3:
				if (down_pressed || shield_pressed){
					window = 6;
					window_timer = 1;
				}
				if window_timer == 1{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
				if window_timer == 7{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
				if window_timer == 13{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
				if window_timer == 19{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
				if window_timer == 25{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
				if window_timer == 31{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
				if window_timer == 37{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
				if window_timer == 43{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
			break;
			case 4:
				if (down_pressed || shield_pressed){
					window = 6;
					window_timer = 1;
				}
				if window_timer == 1{
					sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
				}
			break;
			case 5: // endlag
			if window_timer == 1{
				sound_play(sound_get("sfx_spear_swing_1"),false,noone,.6);
			}
				if (down_pressed || shield_pressed){
					window = 6;
					window_timer = 1;
				}
				break;
			}
		break;
	
	
	
	case AT_DSPECIAL:
		switch(window){
			case 2://Charge
				if(state_timer % 5 == 0){
					bwd_pendelum_current++;
				}
				bwd_pendelum_current = (bwd_pendelum_current+16) % 16;
				bwd_mega_is_perfect = bwd_pendelum_current == 7 || bwd_pendelum_current == 15;
				if((special_pressed || attack_pressed) && state_timer >= 10){
					window = 3;
					window_timer = 0;
					bwd_pendelum_current = 0;
				}
				if(shield_pressed){
					window = 5;
					window_timer = 0;
					can_shield = false;
					bwd_pendelum_current = 0;
					clear_button_buffer(PC_SHIELD_PRESSED);
				}
			break;
			case 3://Slam
				if(bwd_mega_is_perfect && !hitpause){
					if(window_timer == 8){
						if(position_meeting(x+30*spr_dir,y,asset_get("par_block")) || position_meeting(x+30*spr_dir,y,asset_get("par_jumpthrough"))){
							create_hitbox(AT_DSPECIAL,2,x+70*spr_dir,0);
						}
						if(position_meeting(x-30*spr_dir,y,asset_get("par_block")) || position_meeting(x-30*spr_dir,y,asset_get("par_jumpthrough"))){
							create_hitbox(AT_DSPECIAL,3,x-60*spr_dir,0);
						}
					}
					if(window_timer == 4){
						if(position_meeting(x+30*spr_dir,y,asset_get("par_block")) || position_meeting(x+30*spr_dir,y,asset_get("par_jumpthrough"))){
							spawn_hit_fx(x+70*spr_dir,y,fx_pillarR);
						}
						if(position_meeting(x-30*spr_dir,y,asset_get("par_block")) || position_meeting(x-30*spr_dir,y,asset_get("par_jumpthrough"))){
							spawn_hit_fx(x-60*spr_dir,y,fx_pillarL);
						}
						sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,.6);
					}
					if(window_timer == 6){
						sound_play(asset_get("sfx_kragg_spike"));
						
						if ((instance_exists(spear1)) && (spear1.state == 1 || spear1.state == 3)){
							spear1.state = 4;
						}
						if ((instance_exists(spear2)) && (spear2.state == 1 || spear2.state == 3)){
							spear2.state = 4;
						}
						if ((instance_exists(spear3)) && (spear3.state == 1 || spear3.state == 3)){
							spear3.state = 4;
						}
						
					}
				}
				if(window_timer == 4 && !hitpause){
					shake_camera(10,5);
					sound_play(asset_get("sfx_blow_heavy2"));
		            ground_cracks();
		            
		            if (instance_exists(spear1) && (spear1.state == 1 || spear1.state == 3)){
						spear1.state = 4;
					}
					if (instance_exists(spear2) && (spear2.state == 1 || spear2.state == 3)){
						spear2.state = 4;
					}
					if (instance_exists(spear3) && (spear3.state == 1 || spear3.state == 3)){
						spear3.state = 4;
					}
		            
				}
				
			break;
		}
	break;
	case AT_DSPECIAL_AIR:
		if(!free && window <= 2){
			attack = AT_DSPECIAL;
		}
		if !free && window == 9 {
				set_attack( AT_DSPECIAL )
				window = 4
				window_timer = 0;
			}
		switch(window){
			case 2://Charge
				if(state_timer % 5 == 0){
					bwd_pendelum_current++;
				}
				bwd_pendelum_current = (bwd_pendelum_current+16) % 16;
				bwd_mega_is_perfect = bwd_pendelum_current == 7 || bwd_pendelum_current == 15;
				if((special_pressed || attack_pressed) && state_timer >= 10){
					if(bwd_mega_is_perfect)
						window = 3;
					else
						window = 8;
					window_timer = 0;
					bwd_pendelum_current = 0;
				}
				if(shield_pressed){
					window = 7;
					window_timer = 0;
					can_shield = false;
					bwd_pendelum_current = 0;
					clear_button_buffer(PC_SHIELD_PRESSED);
				}
				vsp = min(vsp,2);can_move = false;hsp = 0;
			break;
			case 5://Slam
				if(bwd_mega_is_perfect && !hitpause){
					if(window_timer == 1){
						if(position_meeting(x+30*spr_dir,y,asset_get("par_block")) || position_meeting(x+30*spr_dir,y,asset_get("par_jumpthrough"))){
							spawn_hit_fx(x+70*spr_dir,y,fx_pillarR);
						}
						if(position_meeting(x-30*spr_dir,y,asset_get("par_block")) || position_meeting(x-30*spr_dir,y,asset_get("par_jumpthrough"))){
							spawn_hit_fx(x-60*spr_dir,y,fx_pillarL);
						}
						sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,.6);
					}
					if(window_timer == 3){
						sound_play(asset_get("sfx_kragg_spike"));
						if (instance_exists(spear1) && spear1.state == 1){
						spear1.state = 4;
						}
						if (instance_exists(spear2) && spear2.state == 1){
							spear2.state = 4;
						}
						if (instance_exists(spear3) && spear3.state == 1){
							spear3.state = 4;
						}
					}
					if(window_timer == 5){
						if(position_meeting(x+30*spr_dir,y,asset_get("par_block")) || position_meeting(x+30*spr_dir,y,asset_get("par_jumpthrough"))){
							create_hitbox(AT_DSPECIAL,2,x+70*spr_dir,0);
						}
						if(position_meeting(x-30*spr_dir,y,asset_get("par_block")) || position_meeting(x-30*spr_dir,y,asset_get("par_jumpthrough"))){
							create_hitbox(AT_DSPECIAL,3,x-60*spr_dir,0);
						}						
					}
				}
				if(window_timer == 1 && !hitpause){
					shake_camera(10,5);
					sound_play(asset_get("sfx_blow_heavy2"));
		            ground_cracks();
				}
			break;
			case 4:
				if(times_through >= 1){
					can_shield = true;
					can_wall_jump = true;
					can_jump = true;
					if(is_special_pressed(DIR_UP) && move_cooldown[AT_USPECIAL] == 0){
						set_attack(AT_USPECIAL);
					}
				}
				if(window_timer == 10){
					times_through++;
				}
			break;
			case 3:
				if(window_timer == 1){
				sound_play(asset_get("sfx_charge_blade_swing"));	
				}
			break;
			case 8:
				if(window_timer == 1){
				sound_play(asset_get("sfx_forsburn_disappear"));	
				}
			break;
		}
	break;
	case AT_UAIR:
		if(window == 4 && attack_down && window_timer >= 8) || (window == 4 && up_stick_down && window_timer >= 8){
			window = 5;
			window_timer = 0;
			vsp = min(vsp,3);
		}
		if(window == 5){
			can_fast_fall = false;
			can_attack = true;
			can_special = true;
			move_cooldown[AT_UAIR] = 5
			if(!attack_down && !up_stick_down){
				window = 8;
				window_timer = 0;
			}
			vsp = min(vsp,2);
			hsp *= .95;
		}
	break;
}




#define ground_cracks
    if(freemd){
		groundcracks = spawn_hit_fx(x,y,fx_groundcracks);groundcracks.depth = depth-2;
	}else{
		groundcracks = spawn_hit_fx(x,y,fx_groundcracks2);groundcracks.depth = depth-2;
	}

#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;



