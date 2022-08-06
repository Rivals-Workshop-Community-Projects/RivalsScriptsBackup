// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_USPECIAL] = 0;upb = false;sanic_uspec_count=0;dspec_stall = false;
	nspec_stall = false;
	move_cooldown[AT_FSPECIAL] = 0;
}
switch(state){
    case PS_DASH_TURN:
     	if(state_timer == 0){
    		random_dash = random_func(1,7,true)
    	}   
    	if(state_timer < 4){
    		hsp += 2*spr_dir;
    	}
    break;
    case PS_DASH:
    	if(state_timer == 0){
    		random_dash = random_func(1,7,true)
    	}
    	hsp = clamp((5 * spr_dir) + (state_timer / 6 * spr_dir),-maxspd,maxspd);
		if(get_player_color(player) == 28){
			if(get_gameplay_time() % 6 == 0){
				var fire = spawn_hit_fx(x-(25*spr_dir)+random_func(1, 10, true)*spr_dir,y+2,fx_fire2_small);fire.spr_dir = -spr_dir;
			}if(get_gameplay_time() % 8 == 0){
				var fire = spawn_hit_fx(x-(25*spr_dir)+random_func(2, 20, true)*spr_dir,y+2,fx_fire2_small_slow);;fire.depth = depth-1;fire.spr_dir = -spr_dir;
			}
		}
		if(random_dash == 6){
			if(get_gameplay_time() % 120 == 0 || state_timer == 1){
				sound_stop(airhorn_sfx);
				airhorn_sfx = sound_play(sound_get("wheel"))
			}
		}
    break;
    case PS_DASH_STOP:case PS_FIRST_JUMP:
    	sound_stop(sound_get("wheel"))
    break;
    case PS_AIR_DODGE://Credit to Sai
		if(state_timer == 1 && !joy_pad_idle){
			if right_down - left_down != 0 spr_dir = right_down - left_down
			move_cooldown[AT_EXTRA_1] = 0;
			hurtboxID.sprite_index = sprite_get("dtilt_hurt")
			set_attack(AT_EXTRA_1);
			window = 1;window_timer = 0;
		    vsp /= 2;
		}    
    break;
    case PS_PARRY:
        if(state_timer == 1 && !hitpause){
        	sound_stop(stupid_sound_shit)
            stupid_sound_shit = sound_play(sound_get("illuminati"),false,noone,0.8,1);
        }
    break;
    case PS_CROUCH:
    	sound_stop(sound_get("wheel"))
        if(state_timer == 1 && !hitpause){
            sound_play(sound_get("sfx_crouch"));
        }
		var horizontal = right_down - left_down;
		//only change speed if a horizontal input is detected, allows crouch sliding :)
		is_crawling = (horizontal != 0);
		if is_crawling {
			hsp = horizontal;
			spr_dir = horizontal;
		}
    break;
    case PS_WALK:
        if(state_timer == 0 || state_timer % 10 == 0){
            sound_play(sound_get("sfx_crouch"));
        }
    break;
    case PS_WALL_JUMP:
		sound_stop(airhorn_sfx)
    break;
    case PS_SPAWN:
		if(state_timer == 5){
			switch(get_player_color(player)){
				default:
					sound_play(sound_get("step_it_up"));
				break;
				case 9:
					with(oPlayer){
						if(self != other){
							if(url == 2397064593){
								with(other){
									sound_stop(sound_get("step_it_up"));
									sound_play(sound_get("one_polygon"));
								}
							}else{
								with(other){
									sound_play(sound_get("step_it_up"));
								}
							}
						}
					}
				break;
				case 10:
					with(oPlayer){
						if(self != other){
							if("sanic_uspec_count" in self && get_player_color(player) == 11 || url == 1967487025){
								with(other){
									sound_stop(sound_get("hot_topic"));
									sound_play(sound_get("shadow_small_dick"));
								}
							}else if("sanic_uspec_count" in self && get_player_color(player) == 8 || (url == 2128232080 || url == 2545216686)){
								with(other){
									sound_stop(sound_get("step_it_up"));
									sound_play(sound_get("miss_wife"));
								}
							}else{
								with(other){
									sound_play(sound_get("step_it_up"));
								}
							}
						}
					}
				break;				
				case 12:
					with(oPlayer){
						if(self != other){
							if("sanic_uspec_count" in self && get_player_color(player) == 8 || (url == 2128232080 || url == 2545216686)){
								with(other){
									sound_stop(sound_get("step_it_up"));
									sound_play(sound_get("are_you_my_mom"));
								}
							}else if("sanic_uspec_count" in self && get_player_color(player) == 0 || (string_count("sonic", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0)){
								with(other){
									sound_stop(sound_get("step_it_up"));
									sound_play(sound_get("shut up you stupid bitch"));
								}
							}else{
								with(other){
									sound_play(sound_get("step_it_up"));
								}
							}
						}
					}
				break;	
				case 11:
					sound_play(sound_get("hot_topic"));
				break;	
				case 15:
					sound_play(sound_get("weegee"));
				break;
				case 16:
					sound_play(sound_get("you want it"));
				break;				
				case 19:
					sound_play(sound_get("shrek_hello"));
				break;
			}
		}    
    break;
    case PS_TECH_GROUND:
		if(state_timer == 1){
			sound_stop(airhorn_sfx)
			airhorn_sfx = sound_play(sound_get("Sonic_Skateboard"));
		}    
    break;    
}
dash_speed = hsp*spr_dir;
hsp = clamp(hsp,-maxspd,maxspd);
if(!curspd_override){
	is_fest = (curspd >= 10 && hsp != 0);
}
//Credit to Bar-Kun, Frtoud, and Mr. Nart!
if(is_fest && trail_draw_size < trail_total_size) trail_draw_size++;
else if (!is_fest && trail_draw_size > 1) trail_draw_size--;

if(is_fest){
	trail_pos[trail_cur_num].sprite = sprite_index;
	trail_pos[trail_cur_num].subimg = image_index;
	trail_pos[trail_cur_num].x = x;
	trail_pos[trail_cur_num].y = y;
	trail_pos[trail_cur_num].yscale = image_yscale;
	trail_pos[trail_cur_num].rot = image_angle;
	trail_pos[trail_cur_num].col = image_blend;
	
	trail_cur_num--;
	if (trail_cur_num < 0) trail_cur_num = trail_total_size - 1;
}

if(ringcooldown > 0){
	ringcooldown -= 1;
}
//hyper
if get_player_color(player) = 2 {
	hue_offset+=hue_speed;
	hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
	color_rgb=make_color_rgb(63, 71, 203); //input rgb values here, uses rgb to create a gamemaker colour variable
	hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
	color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
	set_color_profile_slot( 2, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	init_shader();
}

if(!instance_exists(dorito_hb) && move_cooldown[AT_NSPECIAL] > 65){
	move_cooldown[AT_NSPECIAL] = 0;
}
if(!instance_exists(shrek_door) && move_cooldown[AT_FSTRONG] != 0){
	move_cooldown[AT_FSTRONG] = 0;
}
if(!instance_exists(dat_boi) && move_cooldown[AT_DSTRONG] != 0){
	move_cooldown[AT_DSTRONG] = 0;
}
if(!instance_exists(doge) && move_cooldown[AT_USTRONG] != 0){
	move_cooldown[AT_USTRONG] = 0;
}
if((state != PS_RESPAWN && attack != AT_TAUNT || attack == AT_TAUNT && vsp != 0) && respawnplat == 1){
	respawnplat = 0;
}

if weegee_face == 1 {
    if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
        weegee_face = -1;
    }
} else if weegee_face == -1 {
    if state == PS_RESPAWN or state == PS_SPAWN {
    	weegee_face = 1;
    }
}