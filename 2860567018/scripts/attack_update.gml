//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch(attack){
    case AT_DSPECIAL:
    
    can_fast_fall = false;
    can_move = false
    if(window == 1){
        if(window_timer == 1){
            dspecial_index = random_func(0, 9, true);
        }
        dspecial_timer = 0;
    }
    if(window > 2){
        can_wall_jump = true;
    }
    
    if(window == 3 or window == 4){
        if(!free and prev_free != free){
            sound_play(asset_get("sfx_land_heavy"));
            sound_play(asset_get("sfx_blow_heavy1"), false, noone, .6, 1.1);
            spawn_base_dust(x, y, "land", spr_dir);
        }
        soft_armor = 999;
        if(vsp != 0){
            create_hitbox(AT_DSPECIAL, 1, x, y);
        }
    } else {
        soft_armor = 0;
    }
    
    
    if(window == 4){

        dspecial_timer++;
        if(!hitstop and dspecial_timer > 10 and special_pressed or dspecial_timer > 120 or was_parried){
            window++;
            window_timer=0;
        }
    }
    prev_free = free;
    break;
    case AT_UTILT:
        if(image_index > 1 and image_index < 5){
            hud_offset = 30;
        }
        if(window == 1 and window_timer == 1){
            sound_play(asset_get("sfx_jumpground"))
            //spawn_base_dust(x, y, "n_wavedash", spr_dir);
            prev_image_index = image_index;
            
        }
        if(image_index == 5 and prev_image_index != image_index){
            spawn_base_dust(x, y, "n_wavedash", spr_dir);
            sound_play(asset_get("sfx_land_light"));
        }
        prev_image_index = image_index;
        break;
        case AT_DAIR:
            if(window == 1){
                switch(window_timer){
                    case 2:
                        sound_play(asset_get("sfx_ice_uspecial_jump"), false, noone, .7, 1.1)
                    break;
                    case 10:
                        sound_play(asset_get("sfx_swipe_weak1"), false, noone, .4, 1)
                }
            } else if (window == 2 and !free){
            	attack_end();
            	destroy_hitboxes();
            	set_attack(AT_EXTRA_1);
            	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
            	sound_play(asset_get("sfx_blow_weak2"));
            	 sound_play(asset_get("sfx_ice_burst_up"), false, noone, .5, 1.2)
            }
        break;
        case AT_NAIR:
            if(window == 1 and window_timer == 1){
                sound_play(asset_get("sfx_swipe_weak1"), false, noone, .6, 1.05)
            }
            if(window == 3 and !free){
            	attack_end();
            	landing_lag_time = 3;
            	set_state(PS_LANDING_LAG);
            }
        break;
        case AT_BAIR:
            if(window == 1 and window_timer == 3){
                sound_play(asset_get("sfx_ice_end"), false, noone, .6, 1.05)
                sound_play(asset_get("sfx_swipe_weak2"), false, noone, .4, 1)
            }
        break;
        case AT_FAIR:
            if(window == 1 and window_timer == 2){
                sound_play(asset_get("sfx_swipe_weak1"), false, noone, .5, 1)
                
            }
            if(window == 1 and window_timer == 8){
                sound_play(asset_get("sfx_ice_end"), false, noone, .5, 1)
                sound_play(asset_get("sfx_spin"), false, noone, 1, 1.05)
            }
        break;
        case AT_DSTRONG:
            if(window == 1){
                prev_image_index = image_index;
            }
            
            if(window == 2 and window_timer == 1){
                sound_play(asset_get("sfx_ice_back_air"), false, noone, .7, 1.05);
            }
            if(image_index == 9 and prev_image_index != image_index){
                var hfx = spawn_hit_fx(x-spr_dir*4, y-20, 29);
                hfx.depth = depth+1;
                sound_play(asset_get("sfx_ice_burst_up"));
            }
            prev_image_index = image_index;
        case AT_FSTRONG:
            if(window == 2 and attack == AT_FSTRONG and window_timer == 1){
                sound_play(asset_get("sfx_swipe_heavy1"), false, noone, .7, 1.1);
            }
        case AT_USTRONG:
            if(window == 1){
                if(window_timer == 1){
                    xpos = x;
                }
                xpos+=hsp;
                if(strong_charge > 2 and get_gameplay_time()%(40/strong_charge) <= 1){
                    x = xpos + random_func(0, 4, true) - 2;
                }
            }
            if(window == 2 and window_timer == 1){
                x = xpos;
            }
        break;
        case AT_FSPECIAL:
            var step_up_height = 40;
        	if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
        	    for (var i = 0; i < step_up_height; i += 2) {
        	        if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
        	            x = x+hsp; 
        	            y = y+vsp-i;
        	            break;
        	        }
        	    }
        	}
        	///coded by supersonic
        
        
            can_move = false;
            can_fast_fall = false;
            if(window < 4){
                vsp = clamp(vsp, -5, 5);
            }
            
            if(window == 1 and window_timer == 1){
                fspec_charge = 0;
                fspec_sonic = 23;
                fspec_misfire = false;
            }
            
            if(window == 2){
                if(!special_down or fspec_charge > 146){
                    if(random_func(1, 9, true)+1 == 9){
                        fspec_misfire = true;
                    }
                    
                    if(fspec_misfire){
                    	sound_play(sound_get("funky"))
                        take_damage(player, player, 12);
                        fspec_charge = 130;
                        set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"))
                        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 20)
                    } else {
                        set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"))
                        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8)
                        take_damage(player, player, 2);
                    }
                    window++;
                    window_timer = 0;
                    set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .25+fspec_charge/150)
                    set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, round(4+fspec_charge/8))
                    if(fspec_misfire){
                        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 158)
                    } else {
                        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303)
                    }

                }
                if(fspec_charge % fspec_sonic == 2){
                    fspec_sonic--;
                    fspec_sonic = max(fspec_sonic, 3)
                    //sound_play(asset_get("sfx_ice_uspecial_start"), false, noone, .7, 1.2);
                    sound_play(asset_get("sfx_jumpair"), false, noone, .7, 1.2);

                }
                fspec_charge++;
                if(fspec_charge%16==1){
                    spawn_base_dust(x, y+vsp*4, "wavedash", spr_dir);
                    if(fspec_charge > 45){
                        spawn_base_dust(x+spr_dir*6, y+vsp*4, "dash_start", spr_dir);
                    }
                    if(fspec_charge > 100){
                        spawn_base_dust(x-spr_dir*8, y+vsp*4, "supercharger", spr_dir);
                    }
                    
                }
                
            }
            if(window == 3 and window_timer%fspec_sonic == 2){
                sound_play(asset_get("sfx_jumpair"), false, noone, .7, 1.2);
            }
            if(window == 3 and window_timer == 2){
                hsp = spr_dir*(ease_cubeIn(6, 20, fspec_charge, 147));
                vsp = -4;
                spawn_base_dust(x+spr_dir*10, y-32, "ssj", spr_dir);
                spawn_base_dust(x+spr_dir*10, y-32, "ssj2", spr_dir);
                sound_play(asset_get("sfx_ell_big_missile_fire"), false, noone, .6, 1.1);
                sound_play(asset_get("sfx_ell_missile_loop"), true, noone, 1, 1.2);
                spawn_base_dust(x, y-16, "hitdust", spr_dir);
                if(fspec_misfire){
                    spawn_hit_fx(x, y-16, 301);
                    sound_play(asset_get("sfx_mol_uspec_explode"), false, noone, 1, .9);
                    sound_play(asset_get("sfx_blow_heavy2"), false, noone, .7, 1);
                    shake_camera(8, 24);
                }
                
            }
            if(window == 4 and has_hit and !hitpause){
                destroy_hitboxes();
                vsp = -5;
                hsp = -spr_dir;
                window_timer = 0;
                window++;
            }
            
            if(window > 3 and abs(hsp) > 5){
                if(window_timer%4==3){
                    spawn_base_dust(x, y-16, "hitdust", spr_dir);
                    if(fspec_misfire){
                        spawn_hit_fx(x, y-16, 301);
                    }
                }
            }
            
            if(window > 4 and !free){
                attack_end();
                landing_lag_time = get_window_value(attack, window, AG_WINDOW_LENGTH) - window_timer;
                landing_lag_time = clamp(landing_lag_time, 4, 12);
                set_state(PS_LANDING_LAG);
            }
            if(window > 4){ 
                if(window_timer==1){
                    sound_stop(asset_get("sfx_ell_missile_loop"));
                }
                can_wall_jump = true;
                if(hsp > 3 or hsp < -3){
                    hsp*=.9;
                }
                
            }
    break;
    case AT_USPECIAL:
        
        var step_up_height = 40;
		if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
		    for (var i = 0; i < step_up_height; i += 2) {
		        if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
		            x = x+hsp; 
		            y = y+vsp-i;
		            break;
		        }
		    }
		}
		///coded by supersonic
    
    
        can_move = false;
        can_fast_fall = false;
        var uspec_spd = window < 4? 14 : 16;
        if(window == 1 and window_timer== 1){
            sound_play(asset_get("sfx_swipe_weak1"), false, noone, .5, .85)
        }
        
        if(window > 1){
            can_wall_jump = true;
        }
        
        if((window == 1 or window == 3 and !was_parried) and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            if(!joy_pad_idle){
                //i know i can do this faster with math but I can't figure it out because I'm dumb
                var  new_joy = joy_stick_lock(); 
                if(new_joy != prev_joy_dir and new_joy != 999)
                {
                    prev_joy_dir = new_joy;
                    window++;
                    window_timer=0;
                }
            } else {
                prev_joy_dir = 90;
                hitbox_type = 3;
            }


        }
        
        if(window == 2 or window == 4){
            if(window_timer%4==3){
                spawn_base_dust(x, y-16, "hitdust", spr_dir);
            }
            spr_dir = 1;
            if(window_timer == 1 and !hitpause){
                    take_damage(player, player, window-1);
                    spawn_base_dust(x, y-22, "ssj", spr_dir, prev_joy_dir+90);
                    spawn_base_dust(x, y-22, "ssj2", spr_dir, prev_joy_dir+90);
    				hsp = lengthdir_x(uspec_spd, prev_joy_dir);
    				vsp = lengthdir_y(uspec_spd, prev_joy_dir);
    				create_hitbox(AT_USPECIAL, hitbox_type, floor(x-hsp), floor(y-12-vsp));
            }
            if(window_timer <= 3){
                fall_through = true;
            }

            if(window == 4 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
                destroy_hitboxes();
                window++;
                window_timer=0;
            }
        
        }
        else if(window == 3 or window == 5){

            if(window_timer == 1){
                if(free){
                    hsp = 0;
                    vsp = 0;
                }
                if(prev_joy_dir > 90 and prev_joy_dir < 270){
                    spr_dir = -1;
                } else if (prev_joy_dir < 90 and prev_joy_dir > 270){
                    spr_dir = 1;
                }
            }
            
            if(hsp > 3 or hsp < -3){
                hsp*=.8;
            }
            vsp = clamp(vsp, -2, 2);
        }
        if(window > 1 and !free and !hitpause){
            attack_end();
            destroy_hitboxes();
            if(window_timer == 1 and (window == 3 or window == 5)) {
                landing_lag_time = 1;
                set_state(PS_LANDING_LAG);
            } else {
                landing_lag_time = 12;
                prat_land_time = 12;
                set_state(PS_PRATLAND);
                hsp = clamp(hsp, -4, 4);
            }
            var hb = create_hitbox(AT_USPECIAL, 9, floor(x), floor(y));
            hb.depth = 15;
            hb.hsp = -spr_dir;
            hb.image_alpha = .2
            hsp = clamp(hsp, -7.5, 7.5);
        }
    break;
    case AT_JAB:
        if(window == 1 and window_timer == 1){
            jab_parry_stun = was_parried;
        }
    
        if(window == 3 and window_timer > 3){
            if((attack_down or attack_pressed) and joy_pad_idle){
                attack_end();
                window = 1;
                window_timer = 0;
            }
        }
        if(was_parried and window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            was_parried = jab_parry_stun;
        }
        
    break;
    case AT_NSPECIAL:
    can_fast_fall = false;
    move_cooldown[AT_NSPECIAL] = 15;
    hsp = clamp(hsp, -3, 3);
    if(window == 1){
        if(window_timer < 6){
            nspec_power = 0;
        } else if(special_down){
            nspec_power++;
        }
        
        if(window_timer == 15){
            sound_play(asset_get("sfx_swipe_weak2"))
        }
    }
    
    
    if(window == 2 and window_timer==2){
        if(free){
            vsp=-4;
        }
        var angle = joy_stick_lock();
        if(angle == 999){
            if(spr_dir == 1){
               angle = 45; 
               nspec_power-=2;
            } else {
                angle = 135;
                nspec_power-=2;
            }
        }
        var velocity = ease_linear(2, 8, nspec_power, 16)
        var hb = create_hitbox(attack, 1, x, y-32);
        if(angle > 180){
                hb.hsp+=lengthdir_x(velocity, angle);
                hb.vsp+=-lengthdir_y(velocity, angle);
        } else {
                hb.hsp+=lengthdir_x(velocity, angle);
                hb.vsp+=lengthdir_y(velocity, angle);
        }

    }
    
    break;
    case AT_FTILT:
    	if(window == 1 and window_timer == 2){
    		 sound_play(asset_get("sfx_ice_end"), false, noone, .45, 1.05)
    	}
    break;
    
    case AT_DTILT:
    	if(window == 1 and window_timer == 1){
    		 sound_play(asset_get("sfx_ice_end"), false, noone, .3, 1.1)
    	}
    break;
    case AT_TAUNT:
		if(window == 1 and window_timer == 1){
		    if(random_func(1, 9, true)+1 == 9){
		    	sound_play(sound_get("funky"));
		        set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
		        set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 99);
		    } else {
		    	sound_play(sound_get("fumo"));
		    	set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
		        set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 99);
		    }
		    
		}
	break;
	case AT_EXTRA_1:
		if(window == 2 and window_timer > 10 + 10*has_hit*.5){
			iasa_script();
		}
	break;
	case AT_EXTRA_2:
	suppress_stage_music(0, 0.02);
	if(window == 1 and window_timer == 4){
		sound_play(sound_get("victory2"), false, 0, 1, 1);
	}
	
	if(window == 3 and !taunt_down){
		sound_stop(sound_get("victory2"));
		window=4;
		window_timer = 0;
	}
	break;
		
}

#define joy_stick_lock
var  new_joy = 999; 
if(!joy_pad_idle){
    if(joy_dir >= 348.75 or joy_dir <= 11.25){
        new_joy = 0;
        hitbox_type = 1;
    } else if (joy_dir <= 33.75) {
        new_joy = 22.5;
        hitbox_type = 1;
    } else if (joy_dir <= 56.25) {
        new_joy = 45;
        hitbox_type = 2;
    } else if (joy_dir <= 78.75){
        new_joy = 67.5;
        hitbox_type = 3;
    } else if(joy_dir <= 101.25){
        new_joy = 90;
        hitbox_type = 3;
    } else if (joy_dir <= 123.75){
        new_joy = 110.5;
        hitbox_type = 3;
    } else if (joy_dir <= 146.25){
        new_joy = 135;
        hitbox_type = 4;
    } else if (joy_dir <= 168.75){
        new_joy = 157.5;
        hitbox_type = 5;
    } else if (joy_dir <= 191.25){
        new_joy = 180;
        hitbox_type = 5;
    } else if (joy_dir <= 213.75){
        new_joy = 202.5;
        hitbox_type = 5;
    } else if (joy_dir <= 236.25){
        new_joy = 225;
        hitbox_type = 6;
    } else if (joy_dir <= 258.75){
        new_joy = 247.5;
        hitbox_type = 7;
    } else if (joy_dir <= 281.25){
        new_joy = 270;
        hitbox_type = 7;
    } else if (joy_dir <= 303.75){
        new_joy = 292.5;
        hitbox_type = 7;
    } else if (joy_dir <= 326.25){
        new_joy = 315;
        hitbox_type = 8;
    } else if (joy_dir <= 348.75){
        new_joy = 337.5;
        hitbox_type = 1;
    }
}
return new_joy;


#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir, ?angle)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 999;;

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
    case "ssj": dlen = 26; dfx = 19; dfg = 2620; dfa = spr_dir*90; dust_color = 1; break;
    case "ssj2": dlen = 26; dfx = 18; dfg = 2620; dfa = spr_dir*90; dust_color = 1; break;
    case "hitdust": dlen = 18; dfx = 13; dfg = 0; dust_color = 1; break;
    case "supercharger": dlen = 18; dfx = 12; dfg = 0; dust_color = 1; break;

    
}
if(angle != 999){
    dfa = angle;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;