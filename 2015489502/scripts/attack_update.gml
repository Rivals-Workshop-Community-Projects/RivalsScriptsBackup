//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



var window_end = get_window_value(attack, window, AG_WINDOW_LENGTH);



if ((has_hit_bike || has_hit_ball) && runeO){
	//iasa_script();
}



if (attack == AT_TAUNT && window == 1 && window_timer == 1 && (practice || textbox_state == 2 || codec_forced)){
    held_timer = 0; //for holding while scrolling thru attacks
    var temp_page = text_page; //remember the page of dialogue going in
    
    //frame data full view open
    
    if (frame_data_guide_state == 2){
    	frame_data_menu_state = 1;
    	frame_data_menu_selected = 1;
    	sound_play(sfx_hud_open1);
    }
    
    //textbox advance
    
    else if (textbox_state == 2){
    	if (up_down && !codec_forced){
    		text_page--;
    	}
    	else if ((left_down ^^ right_down) && !codec_forced){
    		text_page += 5 * (right_down - left_down);
    	}
    	else{
    		text_page++;
    	}
    	textbox_timer = 0;
    	
    	if ((!practice || down_down) && !codec_forced || text_page != clamp(text_page, 0, text_page_count[text_file])){
	    	textbox_state = 3;
			sound_play(sfx_hud_close2);
			text_page = temp_page;
			if (codec_forced){
				set_attack(AT_TAUNT);
			}
    	}else{
    		sound_play(sfx_hud_chatter_skip);
    	}
    	final_text = "";
    }
    
    //open taunt menu
    
    else{
    	taunt_menu_state = 1;
    	taunt_menu_selected = 0;
    	sound_play(sfx_hud_open2);
    }
    clear_button_buffer(PC_TAUNT_PRESSED);
}

if (attack == AT_TAUNT && window == 1 && window_timer == window_end / 2 && practice){
    setWindow(5);
    sound_play(jump_sound);
}

if (attack == AT_TAUNT){
    if (window == 5 && window_timer == window_end && (taunt_menu_active || frame_data_menu_active || frame_data_menu_state == 1)){ //loop taunt
    	window_timer--;
    }
    if ((window == 3 || window == 5) && window_timer == window_end && taunt_down && !practice){
    	window_timer --;
    }
    if (window == 1 && window_timer == window_end && down_down && !practice && !bike){
    	setWindow(5);
    }
    if (window == 5 && window_timer == window_end){
    	setWindow(4);
    }
}

if (attack == AT_TAUNT && !practice && !codec_forced){
	switch(window){
		case 1:
			if (window_timer == 1){
				taunt_held_time = 0;
			}
			break;
		case 3:
		case 5:
			taunt_held_time++;
			if (taunt_held_time == 300){
				setWindow(4);
				taunt_held_time = 0;
				if codec_valid{
					taunt_trigger = true;
					sound_play(sfx_hud_select1);	
				}
			}
	}
}



if (window == 1 && window_timer == 2){
    doing_bike_aerial--;
}



if (attack == AT_NSPECIAL){
    
    //Physics
    vsp = clamp(vsp, -7, 6);
    if (window < 3){
        hsp = clamp(hsp, -3, 3);
    }
    can_fast_fall = false;
    
    //Set variable charge time
    ball_time = (ball_charge < 4) ? 15 : 18;
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, ball_time + 1);
    
    draw_nspecial_flash = (ball_charge && window == 1 && window_timer < 5);
    if (ball_charge && window == 1 && window_timer == window_end){
    	nspecialVfx();
    }
    
    switch(window){
        
        case 1: //Startup
            if (window_timer == 1){
                if ball_cooldown{
                    sound_play(sfx_cooldown_click);
                    cooldown_shake_timer = cooldown_shake_max;
                }
                else if !ball_charge{
                    sound_play(asset_get("sfx_bubblepop"));
                }
            }
            
            //Skip to throw if max charged or special only tapped (only if charge has already been done some of the way)
            if (window_timer == 9 && ball_charge > 0 && (ball_charge == 8 || !special_down)){
                setWindow(3);
                sound_play(sfx_ball_charge[ball_charge]);
                if (god_mode == 3){
			        for(i = ball_charge; i > 0; i--){
			            sound_play(sfx_ball_charge[i])
			        }
			    }
            }
            
            ball_pos = ball_charge ? 0 : 1;
            
            break;
        
        case 2: //Charge
            can_ustrong = !free;
            
            if (up_strong_pressed && !free && (left_down ^^ right_down)){
            	spr_dir = right_down - left_down;
            }
            
            if (!ball_charge && !ball_cooldown && window_timer == 1){
                ball_charge++;
		    	nspecialVfx();
            }
            
            //Loop + increment charge
            if (window_timer == ball_time && ball_charge < 8){
                if !ball_cooldown{
                    window_timer = 1;
                    ball_charge++;
				    	nspecialVfx();
                }
                else{
                    window_timer--;
                }
            }
            
            //SFX
            if (window_timer == 1 && !ball_cooldown){
                sound_play(sfx_ball_charge[ball_charge]);
                if (god_mode == 3){
			        for(i = ball_charge; i > 0; i--){
			            sound_play(sfx_ball_charge[i])
			        }
			    }
            }
            
            //Cancels
            can_jump = true;
            can_wall_jump = true;
            
            if (up_down && special_pressed){
                set_attack(AT_USPECIAL);
            }
            else if (attack_pressed && experimental_1){
            	setWindow(ball_charge ? 6 : 5);
            	clear_button_buffer(PC_ATTACK_PRESSED);
            	
            	if ball_cooldown{
                    sound_play(sfx_cooldown_click);
                    cooldown_shake_timer = cooldown_shake_max;
                }
            }
            else if (attack_pressed || special_pressed){
                setWindow(ball_charge ? 3 : 5);
                clear_button_buffer(PC_SPECIAL_PRESSED);
            
                if ball_cooldown{
                    sound_play(sfx_cooldown_click);
                    cooldown_shake_timer = cooldown_shake_max;
                }
            }
            
            if down_pressed && !free{
                y += 2;
            }
            fall_through = down_down;
            
            if (window_timer == ball_time && ball_charge >= 8){
                setWindow(5);
            }
            
            ball_pos = (image_index == 1) ? 2 : 3;
            
            //Parry to cancel charge
            if shield_pressed{
                if (free && has_airdodge){
                    can_shield = true;
                }
                else{
                    setWindow(5);
                    clear_button_buffer(PC_SHIELD_PRESSED);
                }
            }
            
            break;
        
        case 3: //Throw
            
            ball_pos = ball_charge ? 4 : 0;
            
            if (window_timer < 6){
        		if (attack_down && experimental_1){
        			setWindow(ball_charge ? 6 : 5);
	            	clear_button_buffer(PC_ATTACK_PRESSED);
	            	
	            	if ball_cooldown{
	                    sound_play(sfx_cooldown_click);
	                    cooldown_shake_timer = cooldown_shake_max;
	            	}
	            }
            }
            
            switch(window_timer){
                case 2: //Allow throwing backwards
                    if (right_down ^^ left_down){
                        spr_dir = right_down - left_down;
                    }
                    break;
                case 6: //Throw
                    if ball_charge{
                        sound_play(sfx_ball_shoot);
                        create_hitbox(AT_NSPECIAL, ball_charge, x+54*spr_dir, y-40);
                        if (god_mode == 3){
                        	ball_charge--;
                        	window_timer = 0;
                        }
                        else{
                    		ball_charge = 0;
                        }
                        ball_cooldown = ball_cooldown_max;
                        if free vsp = -3;
                        hsp = 4 * spr_dir;
    		        	spawn_hit_fx(x+70*spr_dir, y-40, 301);
                    }
                    break;
            }
            break;
        
        case 6: //Down Throw
            
            ball_pos = ball_charge ? 4 : 0;
            
            switch(window_timer){
            	case 0: //Jump
            		vsp = -6.5;
            		break;
                case 2: //Allow throwing backwards
                    if (right_down ^^ left_down){
                        spr_dir = right_down - left_down;
                    }
                    break;
                case 9: //Throw
                    if ball_charge{
                        sound_play(sfx_ball_shoot);
                        var ball = create_hitbox(AT_NSPECIAL, ball_charge, x+40*spr_dir, y-40);
                        ball.vsp = abs(ball.hsp);
                        ball.hsp = 0;
                        ball.spr_dir = spr_dir;
                        ball.bouncing_foe = true;
                        ball.bouncing_dthrow = true;
                        if (god_mode == 3){
                        	ball_charge--;
                        	window_timer = 0;
                        }
                        else{
                    		ball_charge = 0;
                        }
                        ball_cooldown = ball_cooldown_max;
                        vsp = -7;
                        hsp = clamp(hsp, -1, 1)
    		        	spawn_hit_fx(x+40*spr_dir, y-40, 301);
                    }
                    break;
            }
            break;
        case 5: //End charge
            ball_pos = 0;
            break;
    }
}



if (attack == AT_USTRONG){
	switch(window){
		case 1: //startup; initialise hitbox stuff; set ball and nametag pos
			if ball_charge{
				if (window_timer == 1 && ball_pos == 0){
					sound_play(sfx_ball_charge[ball_charge]);
				}
				stat_char_height[0] = 100;
				ball_pos = 5;
				set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 0);
				set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 15);
				set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, -8);
			}
			else{
				stat_char_height[0] = fixed_char_height;
				ball_pos = 0;
				reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
				reset_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE);
			}
			break;
		case 2: //startup 2; preemptively change char_height so it lerps to 100
			if (window_timer == 2){
				stat_char_height[0] = 100;
			}
			break;
		case 3: //active
		
			//shoot ball
			
			if (window_timer == 1 && ball_charge && !hitpause){
				var ball = create_hitbox(AT_NSPECIAL, ball_charge, x, y+ball_pos_y);
				ball.vsp = (has_hit_player || has_hit_bike ? -20 : -abs(ball.hsp));
				ball.hsp = 0;
				ball.spr_dir = spr_dir;
				//ball.dont_bounce = true;
				ball.from_ustrong = true;
				if has_hit ball.melee_ustrong = true;
				if (god_mode == 3 || runeM){
                	ball_charge--;
                	if ball_charge setWindow(2);
                }
                else{
            		ball_charge = 0;
                }
                ball_cooldown = ball_cooldown_max;
                sound_play(sfx_ball_shoot);
                spawn_hit_fx(x, y-char_height, 301);
			}
			
			//drag enemy horizontally to make the ball connect
			
			if ball_charge{
				if (has_hit_player && !hit_player_obj.hitpause){
					hit_player_obj.x = lerp(hit_player_obj.x, x, 0.1);
					hit_player_obj.hsp = 0;
					//hit_player_obj.y = lerp(hit_player_obj.y, y + ball_pos_y - 60, 0.5);
				}
				if has_hit_bike{
					hit_bike_obj.x = lerp(hit_bike_obj.x, x, 0.2);
					//hit_bike_obj.y = lerp(hit_bike_obj.y, y + ball_pos_y - 40, 0.7);
				}
			}
			break;
		case 4: //endlag; reset ball and percent pos
			if (window_timer == 10){
				stat_char_height[0] = fixed_char_height;
				ball_pos = 0;
			}
			break;
	}
}



if (attack == AT_USPECIAL){
    can_fast_fall = false;
    move_cooldown[AT_USPECIAL] = 15;
    hsp += (right_down - left_down);
    hsp = clamp(hsp,-air_max_speed-1,air_max_speed+1);
    if !free{
    	fly_vsp = 1.2;
    }
    switch(window){
        case 1:
            if (window_timer == 1){
                vsp = 1;
                sound_play(asset_get("sfx_ori_ustrong_charge"));
                if (mybike != noone && !(mybike.state == 0 && mybike.origin == 2) && !mybike.shoulddie){
                	mybike.bufferedstate = 8;
                }
            }
            if (window_timer == window_end - 3){
            	
                sound_play(asset_get("sfx_ell_nair"));
            }
            if !free{
            	vsp = 0;
            }
            fly_vsp = free ? 1.7 : 1.2;
            break;
        case 2:
    		if !free{
    			vsp = -1;
    		}
            vsp -= fly_vsp;
            if (window_timer == 2){
                uspecials_used++;
                uspecial_timer = 0;
            }
            break;
    }
}



if (attack == AT_FSPECIAL){
    can_wall_jump = true;
    fspecial_cooldown = max_fspecial_cooldown;
    
    if (window == 2 && window_timer > 1 && !free){
        setWindow(3);
    }
    
    switch(window){
        case 1: //Startup
            if (window_timer == 1){
                mount = true;
                sound_play(sfx_rev[1]);
                sound_play(asset_get("sfx_ori_ustrong_charge"));
            }
            vsp = clamp(vsp, -100, 3);
            hsp = clamp(hsp, -2, 2);
            
            if (window_timer == window_end){
                vsp = -9;
                fspecial_speed = ((god_mode == 3 && !("is_ai" in self)) ? 17 : 13) * (runeK ? 1.3 : 1);
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
                if !was_bike sound_play(asset_get("sfx_may_arc_cointoss"));
                sound_play(sfx_rev[0]);
                spawn_hit_fx(x-10*spr_dir,y,vfx_dtilt_spark);
            }
            
            break;
        case 2: //Yump
            
            if (window_timer == 2){
                fspecials_used++;
            }
            
            if !hitpause{
                if (god_mode != 3 && !runeK){
                	if (left_down - right_down == spr_dir){
	                    fspecial_speed -= air_accel;
	                }
	                fspecial_speed = lerp(fspecial_speed, clamp(fspecial_speed, -air_max_speed, air_max_speed), 0.1);
                }
                hsp = fspecial_speed * spr_dir;
            }
            
            if ((has_hit || god_mode == 3) && window_timer > 10){
                can_shield = true;
                can_jump = true;
                can_attack = true;
                can_special = true;
            }
            
            break;
        case 3: //Endlag
            if (god_mode != 3) hsp *= 0.9;
            
            if ((has_hit || god_mode == 3) && free){
                can_shield = true;
                can_jump = true;
                can_attack = true;
                can_special = true;
            }
            break;
    }
}



if (attack == AT_DSPECIAL){
    if (window < 3){
        hsp = clamp(hsp, -3, 3)
    }
    can_fast_fall = false;
    switch(window){
        case 1: //Startup
            if (window_timer == 1){
                mount = true;
                sound_play(sfx_rev[1]);
                sound_play(asset_get("sfx_ori_ustrong_charge"));
                times_through = 0;
                vsp = clamp(vsp, -100, 1);
                dspecial_charge = 0;
            }
            
            speedometer_angle = lerp(speedometer_angle, 0, 0.4);
            break;
        case 2: //Charge
            dspecialUpdate();
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
            if (window_timer == (times_through ? window_end : floor(window_end / 2))){
                if special_down{
                    window_timer = 0;
                    times_through++;
                }
                else{
                    setWindow(3);
                }
            }
            
            speedometer_angle = lerp(speedometer_angle, abs(round(ease_linear(0, 270, dspecial_charge, 120) - 2 +
	        random_func(1, round(ease_linear(3, 60, dspecial_charge, 80)), true))), 0.4);
            
            if times_through{
                can_fast_fall = true;
                dspecial_charge += 1 + (god_mode == 3) * 3 + runeH;
                fall_through = down_down;
                
                if down_pressed && !free{
                    y += 2;
                }
                
                if (!special_down || times_through >= 7){
                    setWindow(3);
                }
                if (jump_pressed && !free){
                	setWindow(5);
                	clear_button_buffer(PC_JUMP_PRESSED);
                }
                if (jump_pressed && free && runeH && djumps < max_djumps){
                	djumps++;
                	setWindow(5);
                	clear_button_buffer(PC_JUMP_PRESSED);
                }
                if (!free && (left_down ^^ right_down)){
                    hsp = lerp(hsp, (god_mode == 3 ? 10 : 3) * (runeH ? 2 : 1) * (right_down - left_down), 0.8);
                    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, (((right_down && spr_dir == 1) || (left_down && spr_dir == -1)) ? 4 : 6));
                }
                else if !free{
                    hsp *= 0.7;
                }
            }
            break;
        case 3: //Startup 2 and hitboxes
            if (window_timer == 1){
                sound_play(sfx_rev[2]);
                sound_play(asset_get("sfx_swipe_heavy1"));
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
                sound_play(asset_get("sfx_may_arc_cointoss"));
                var smoke = spawn_hit_fx(x+50*spr_dir, y-30, vfx_smoke[1]);
                smoke.spr_dir *= -1;
                if free{
                    vsp = clamp(vsp, -100, -6);
                }
            }
            
            if (window_timer == 5){
                    var smoke = spawn_hit_fx(x-50*spr_dir, y-36, vfx_smoke[1]);
            }
            
            speedometer_angle = lerp(speedometer_angle, 0, 0.4);
            break;
        case 4: //Endlag
            break;
        case 5: //Jumpsquat
        	vsp = 0;
            if (window_timer == window_end){
                vsp = -1 * (jump_down ? jump_speed : short_hop_speed);
                setWindow(2);
                sound_play(jump_sound);
            }
            dspecial_charge += 1 + (god_mode == 3) * 4;
            break;
    }
}



if (attack == AT_FAIR || attack == AT_BAIR){
    can_fast_fall = false;
    can_wall_jump = true;
    var dir_mod = (attack == AT_BAIR) ? -1 : 1;
    switch(window){
        case 1:
            vsp = clamp(vsp, ((vsp > -short_hop_speed) ? -5 : -100), 3 + airdashes_used * 2);
            if (window_timer == 1){
                sound_play(asset_get("sfx_ori_ustrong_charge"));
            }
            if (window_timer == window_end){
                vsp -= 6 - airdashes_used * 2;
                vsp = clamp(vsp, -7, 0)
                hsp = clamp(12 - airdashes_used * 3, 0, 12) * spr_dir * dir_mod * (runeE ? 2 : 1);
                x += 30 * spr_dir * dir_mod;
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
                var ring = spawn_hit_fx(x+10*spr_dir*dir_mod, y-38, vfx_dash_blast);
                ring.spr_dir = spr_dir*dir_mod;
                if (!place_meeting(x+spr_dir*dir_mod,y,asset_get("par_block")) && abs(hsp) > 2){
                    var zoop = spawn_hit_fx(x-30*spr_dir*dir_mod, y-74, vfx_dash_trail);
                    zoop.spr_dir = spr_dir*dir_mod;
                }
            }
            break;
        case 2:
            hsp = lerp(hsp, clamp(hsp, -air_max_speed, air_max_speed), 0.1);
            vsp = clamp(vsp, -100, 1 + airdashes_used * 2);
            if has_hit{
                vsp = clamp(vsp, -100, 0.4)
            }
            vsp = 0;
            //vsp = 0;
            break;
        case 3:
            hsp = lerp(hsp, clamp(hsp, -air_max_speed, air_max_speed), 0.8)
            
            if (window_timer == 1){
                airdashes_used++;
            }
            
            if (has_hit && !down_down){
                vsp = clamp(vsp, -100, 1)
            }
            
            if (has_hit && window_timer > 5 && !was_parried){
                can_attack = true;
                can_jump = true;
                can_shield = true;
                can_special = true;
                can_fast_fall = true;
                if jump_pressed spr_dir *= dir_mod;
                if ((attack_pressed && (joy_pad_idle || up_down)) || up_strong_pressed){
                    vsp = -3;
                    if joy_pad_idle spr_dir *= dir_mod;
                }
            }
    }
}



if (attack == AT_JAB){
    if (window == 3){
        was_parried = false;
    }
}



if (attack == AT_DTILT){
    
    if free && !runeD{
        hsp = clamp(hsp, -5, 5);
    }
    
    switch(window){
        case 1: //Startup
            if (window_timer == window_end - 4){
                sound_play(sfx_rev[1]);
            }
            
            if (window_timer == window_end){
                hsp = 14 * spr_dir * (runeD ? 1.5 : 1);
                x += 10 * spr_dir;
                sound_play(asset_get("sfx_swipe_weak2"));
                spawn_hit_fx(x,y,vfx_dtilt_spark);
            }
            
            can_dtilt_own_bike = true;
            break;
        case 2: //Active
            break;
        case 3: //Endlag
                hsp *= 0.5;
            if free{
                set_state(PS_IDLE_AIR);
                attack_end();
            }
    }
}



if (attack == AT_DATTACK){
    
    if (window == clamp(window,2,5) && (has_hit_player || has_hit_bike)){
        dattack_pre_draw_timer = 2;
    }
    
    if (has_hit_bike && window == 6){
        dattack_turn = false;
    }
    
    switch(window){
        case 1:
            if (window_timer == window_end){
                hsp = 13 * spr_dir * (runeF ? 2 : 1);
                sound_play(asset_get("sfx_swipe_medium2"));
            }
            break;
        case 2:
            if ((has_hit_player || has_hit_bike || has_hit_ball) && window_timer == window_end && !hitpause){
                setWindow(4);
            }
            dattackDrag();
            break;
        case 3:
            hsp *= 0.6;
            dattackDrag();
            break;
        case 4:
            if (right_down - left_down == -spr_dir && window_timer == window_end / 2){
                spr_dir *= -1;
                dattack_turn = true;
                if has_hit_bike{
                    hit_bike_obj.spr_dir *= -1;
                }
            }
            if (has_hit_player || has_hit_bike){
                hsp *= 0.5;
            }
            dattackDrag();
            if (window_timer == window_end){
                sound_play(asset_get("sfx_swipe_medium2"));
            }
        case 5:
        case 6:
            if (window_timer == window_end){
                setWindow(window+1);
            }
            
            if (has_hit_bike && window_timer == 1){
                hit_bike_obj.hitstop = false;
            }
    }
}



if (attack == AT_DAIR){
    switch(window){
        case 1:
            hsp = 0;
            vsp = 0;
            if (window_timer == 1){
                sound_play(asset_get("sfx_ori_ustrong_charge"));
            }
            dair_fast_fall = false;
            break;
        case 2:
            if (window_timer == 1){
                hsp = 0;
                vsp = -7;
                sound_play(jump_sound);
            }
            if (window_timer == window_end){
                sound_play(asset_get("sfx_swipe_heavy2"));
                vsp = 30;
                hsp = 0;
                y += 30;
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
                
                var ring = spawn_hit_fx(x+8*spr_dir, y-38, vfx_v_dash_blast);
                ring.spr_dir = spr_dir;
            }
            vsp = clamp(vsp, -10, 0);
            break;
        case 3:
            if !hitpause{
                hsp = 0;
                vsp = 30;
                if (has_hit || (runeJ && !free)){
                    destroy_hitboxes();
                    setWindow(5);
                    vsp = dair_fast_fall ? fast_fall : -8;
                    if !free{
                    	sound_play(get_hitbox_value(attack, 1, HG_HIT_SFX));
                    	spawn_hit_fx(x, y, get_hitbox_value(attack, 1, HG_VISUAL_EFFECT));
                    }
                }
                else{
                    var zoop = spawn_hit_fx(x-26*spr_dir, y-90, vfx_v_dash_trail);
                    zoop.spr_dir = spr_dir;
                }
            }
            break;
        case 4:
            if (abs(vsp) > 2){
                vsp *= 0.5;
            }
            else{
                vsp--;
            }
            hsp = clamp(hsp, -1, 1);
            hsp = clamp(hsp, -1, 1);
            break;
        case 5:
            if (window_timer == 1){
                hsp = (((has_hit_bike || has_hit_ball || runeJ) && !has_hit_player) ? 9 : air_max_speed) * (right_down - left_down);
            }
            break;
    }
    fall_through = down_down || down_strong_down;
    can_fast_fall = hitpause;
    if hitpause && down_pressed && !dair_fast_fall{
    	dair_fast_fall = true;
    	sound_play(asset_get("sfx_may_arc_cointoss"));
    	var vfx = spawn_hit_fx(x+30*spr_dir, y-30, vfx_hit_tiny);
    	vfx.depth = depth-1;
    }
}



if (attack == AT_FSTRONG){
	if (window == 4 && window_timer > 6) ball_pos = 0;
}



if (attack == AT_DSTRONG){
	switch(window){
		case 2:
			if (window_timer == window_end && !hitpause){
				bass_sound = sound_play(sfx_bass1);
			}
			break;
		case 4:
			if has_hit_player{
				set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 100);
			}else{
				reset_hitbox_value(AT_DSTRONG, 2, HG_WIDTH);
			}
			if (window_timer == window_end && !hitpause){
				sound_stop(bass_sound);
				sound_play(sfx_bass2);
			}
			break;
	}
}



prev_attack = attack;



#define setWindow

window = argument[0];
window_timer = 0;
destroy_hitboxes();



#define dattackDrag

if has_hit_player{
    //hsp *= 0.6;
    var dest_x = x + 40 * spr_dir;
    var dest_y = y;
    var change_amt = 0.3;
    with(hit_player_obj){
        x = lerp(x, dest_x, change_amt);
        y = lerp(y, dest_y, change_amt);
        spr_dir = -other.spr_dir;
    }
}

if has_hit_bike{
    //hsp *= 0.6;
    var dest_x = x + 40 * spr_dir;
    var dest_y = y;
    var change_amt = 0.3;
    with(hit_bike_obj){
        x = lerp(x, dest_x, change_amt);
        y = lerp(y, dest_y, change_amt);
        vsp = 0;
        hsp = 0;
    }
}

if has_hit_ball{
    var dest_x = x + 50 * spr_dir;
    var dest_y = y-32;
    var change_amt = 0.3;
    with(hit_ball_obj){
        x = lerp(x, dest_x, change_amt);
        y = lerp(y, dest_y, change_amt);
        vsp = 0;
        hsp = 0;
        spr_dir = other.spr_dir;
    }
}



#define dspecialUpdate

//max 110

var charge_amt = dspecial_charge / 110;

var new_damage = round(lerp(dspecial_dmg_min, dspecial_dmg_max, charge_amt));
var new_bkb = (lerp(dspecial_bkb_min, dspecial_bkb_max, charge_amt));
var new_kbs = (lerp(dspecial_kbs_min, dspecial_kbs_max, charge_amt));
var new_bhp = round(lerp(dspecial_bhp_min, dspecial_bhp_max, charge_amt));
var new_hps = (lerp(dspecial_hps_min, dspecial_hps_max, charge_amt));
var new_hitfx = ((charge_amt >= 0.8) ? 157 : 304);

dspecial_dmg = new_damage;
dspecial_bkb = new_bkb;
dspecial_kbs = new_kbs;

for(i = 1; i < 3; i++){
    
    set_hitbox_value(AT_DSPECIAL, i, HG_DAMAGE, new_damage);
    set_hitbox_value(AT_DSPECIAL, i, HG_BASE_KNOCKBACK, new_bkb);
    set_hitbox_value(AT_DSPECIAL, i, HG_KNOCKBACK_SCALING, new_kbs);
    set_hitbox_value(AT_DSPECIAL, i, HG_BASE_HITPAUSE, new_bhp);
    set_hitbox_value(AT_DSPECIAL, i, HG_HITPAUSE_SCALING, new_hps);
    set_hitbox_value(AT_DSPECIAL, i, HG_EFFECT, new_hitfx);
    
}



#define nspecialVfx


var vfx = spawn_hit_fx(x+40*spr_dir, y-49, vfx_ball_charge[ball_charge]);
vfx.move_me = true;

if (god_mode == 3){
    for(i = ball_charge-1; i > 0; i--){
    	var vfx = spawn_hit_fx(x+40*spr_dir, y-49-32*(ball_charge-i), vfx_ball_charge[i]);
		vfx.move_me = true;
		vfx.move_y = 32*(ball_charge-i);
    }
}