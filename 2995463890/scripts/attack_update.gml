//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack){
	case AT_JAB:
    	if window == 1 and window_timer == 2 and !hitpause and should_mj_sound() {
    		mj_should_carry_over = true;
    		sound_play(sound_get("voice_mj_ah"), false, noone, 1, calc_mj_pitch(0.1));
    	}

    	if window == 4 and window_timer == 2 and !hitpause and mj_should_carry_over {
    		sound_play(sound_get("voice_mj_ba"), false, noone, 1, calc_mj_pitch(0.1));
    	}

    	if window == 7 and window_timer == 4 and !hitpause and mj_should_carry_over {
    		sound_play(sound_get("voice_mj_daoh2"), false, noone, 1, calc_mj_pitch(0.03));
    	}
    break;
    case AT_UTILT:
        if window == 1 && window_timer == 4 and !hitpause{
            sound_play(asset_get("sfx_mol_uspec_ready"),false,noone,1.0,1.3);
            sound_play(sound_get("sfx_blow"),false,noone,0.5,1.2);
        }
        
        if ((window == 1 and window_timer > 4) or window == 2 or (window == 3 and window_timer < 7)) {
        	hud_offset = round(lerp(hud_offset, 110, .2))
        }
        
    break;
    case AT_DATTACK:
    	can_fast_fall = false
        switch window{
            case 1:
                if window_timer == 6{
                    spawn_base_dust(x,y,"jump",1* spr_dir);
                    dattack_forgiveness = 0
                    if should_mj_sound() and !hitpause{
                    	mj_should_carry_over = true;
                    	sound_play(sound_get("voice_mj_da"), false, noone, 1, calc_mj_pitch(0.1));
                    }
                }
            break;
            case 2:
            	if window_timer == 5 and has_hit and !hitpause and should_mj_sound() {
    				sound_play(sound_get("voice_mj_doo"), false, noone, 1, calc_mj_pitch(0.1));
    			}
            break;
            case 3: 
            	if has_hit{
            		dattack_forgiveness = 20
            	}
            break;
            case 4:
                can_wall_jump = true
                dattack_forgiveness++;
                
                if dattack_forgiveness >= dattack_forgiveness_threshold and free
                {
                	can_jump = true;
                	can_shield = true;
                	if((special_down && up_down)){
						set_attack(AT_USPECIAL);
					}
                }
            break;
            case 5:
                if window_timer == 1{
                    spawn_base_dust(x,y,"land",1* spr_dir);
                }
            break;
        }
    break;
    case AT_FTILT:
        switch window
        {
            case 1:
	            if window_timer == 2 and !hitpause and should_mj_sound() {
	            	sound_play(sound_get("voice_mj_heehee"), false, noone, 1, calc_mj_pitch(0.05));
	            }
	            
                if window_timer == 4 and !hitpause{
                    sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
                    sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
                }
                
                if window_timer == 8 and !hitpause{
                    sound_play(asset_get("sfx_spin"));  
                }
            break;
            case 3:
                if window_timer == 7 and !hitpause{
                    sound_play(sound_get("sfx_swing"), false, noone, 0.55, 0.9);
                }
            
                if window_timer == 8 and !hitpause{
                    sound_play(sound_get("sfx_gun_return"), false, noone, 0.5, 1.03);
                }
            break;
        }
    break;
    case AT_DTILT:
        switch window
        {
            case 1:
            if window_timer == 1 and should_mj_sound() and !hitpause{
            	sound_play(sound_get("voice_mj_shchk"), false, noone, 1, calc_mj_pitch(0.1));
            }
            
            if window_timer == 6 and !hitpause
            {
                spawn_base_dust(x +20*spr_dir,y,"dash_start",1* spr_dir);
                sound_play(asset_get("sfx_waveland_oly"),false,noone,0.6,1.1);
            }
            break;
            case 3:
                if (window_timer == 2 or window_timer == 6) && !hitpause {
                    spawn_base_dust(x +20*spr_dir,y,"dash",1* spr_dir)
                }
            break;
            case 2:
                if window_timer == 2 && !hitpause {
                    spawn_base_dust(x +20*spr_dir,y,"dash",1* spr_dir)
                }            
        }
    break;
    case AT_FSTRONG:
    	if window == 2 and window_timer == 4 and should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_daoh"), false, noone, 1, calc_mj_pitch(0.05));
    	}
    break;
    case AT_USTRONG:
    	if ((window == 2 and window_timer > 3) or window == 3 or (window == 4 and window_timer < 10)) {
    		hud_offset = round(lerp(hud_offset, 270, .2))
    	}
    
    	switch window
        {
            case 2:
                if window_timer == 4 and !hitpause{
                    sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
                    sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
                    if should_mj_sound() {
                    	sound_play(sound_get("voice_mj_hiyeee"), false, noone, 1.25, calc_mj_pitch(0.04));
                    }
                }
                
            break;
            case 3:
				if window_timer == 4 and !hitpause{
        			sound_play(sound_get("sfx_gun_shot"), false, noone, 0.9, 1.1)
        			sound_play(sound_get("sfx_gun_shot2"), false, noone, 0.8)
        		}
            case 5:
                if window_timer == 9 and !hitpause{
                    sound_play(sound_get("sfx_swing"), false, noone, 0.55, 0.9);
                }
            
                if window_timer == 10 and !hitpause{
                    sound_play(sound_get("sfx_gun_return"), false, noone, 0.5, 1.03);
                }
            break;
        }
    break;
    case AT_DSTRONG:
    	switch window
        {
        	case 2:
                if window_timer == 4 and !hitpause{
                    sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
                    sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
                    if should_mj_sound() {
                    	sound_play(sound_get("voice_mj_heehee"),  false, noone, 1, calc_mj_pitch(0.04));
                    }	
                }
                if window_timer == 10 and !hitpause{
                	sound_play(asset_get("sfx_mol_flare_shoot"));  
        			sound_play(sound_get("sfx_gun_shot"), false, noone, 0.9, 1.05)
        		}
            break;	
            case 4:
				if window_timer == 9 and !hitpause{
        			sound_play(sound_get("sfx_gun_shot"), false, noone, 0.9, 1.05)
        		}
        	break;
        	case 6:
                if window_timer == 13 and !hitpause{
                    sound_play(sound_get("sfx_swing"), false, noone, 0.55, 0.9);
                }
            
                if window_timer == 14 and !hitpause{
                    sound_play(sound_get("sfx_gun_return"), false, noone, 0.5, 1.03);
                }
            break;
        	
        }
    break;
    case AT_FAIR:
    //I deleted it :3
    //- Delta
    
    //(jk, look in set_attack)
    switch window {
    	case 1:
    		if window_timer == 2 and should_mj_sound() and !hitpause{
    			sound_play(sound_get("voice_mj_bay"), false, noone, 1, calc_mj_pitch(0.04));
    			mj_should_carry_over = true;
    		}
    	break;
    	case 2:
    	case 3:
    		if ((attack_pressed || spr_dir == 1 && right_stick_down || spr_dir == -1 && left_stick_down) && !was_parried) fair_rekka = true;
    		if window != 3 break;
    		
    		if (window_timer >= 1 and fair_rekka) {
				attack_end(); //call this when you cancel an attack, it resets hitboxes!
				set_attack(AT_EXTRA_1);
				hurtboxID.sprite_index = sprite_get("fair_hurt");
				window_timer = 0;    			
    		}
    	}
    break;
    case AT_EXTRA_1: //Fair 2
    	if window == 1 and window_timer == 4 and mj_should_carry_over and !hitpause{
    		sound_play(sound_get("voice_mj_beh"), false, noone, 1, calc_mj_pitch(0.04));
    	}
    break;
    case AT_UAIR:
    	if window == 2 and window_timer == 2 and should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_hoo"), false, noone, 1, calc_mj_pitch(0.04));
    	}
    	
    	if (window == 2 and window_timer > 3) or window == 3 or (window == 4 and window_timer < 8) {
    		hud_offset = round(lerp(hud_offset, 110, .2))
    	}
    	
		if (window == 1 and window_timer >= get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1 and (is_attack_pressed(DIR_UP) or up_stick_down) ){
			smash_charging = true
			attack_down = true;
		}
    	
    break;
    case AT_NAIR:
    	if window == 1 and window_timer == 5 and should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_da"), false, noone, 1, calc_mj_pitch(0.1));
    	}
    break;
    case AT_DAIR:
    	if window == 1 and window_timer == 8 and should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_ta"), false, noone, 1, calc_mj_pitch(0.07));
    	}
    break;
    case AT_BAIR:
    	if window == 1 && window_timer == 1 and !hitpause{
                    sound_play(asset_get("sfx_mol_flare_ready"))
                }
    	if window == 1 && window_timer == 4 and !hitpause{
                    sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
                    sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
                }
    	if window == 1 and window_timer == 9 and should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_daoh"), false, noone, 1, calc_mj_pitch(0.02));
    	}
    break;
    case AT_NSPECIAL:
    	can_wall_jump = true;
    	if window == 1 and window_timer == 1 and should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_baybeh"), false, noone, 1, calc_mj_pitch(0.05));
    	}
    	
        if window == 1 && window_timer == 4 and !hitpause{
            sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
            sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
        }
        
        if window == 1 and window_timer == 7 and !hitpause{
        	sound_play(sound_get("sfx_gun_shot"), false, noone, 0.9, 1.05)
        }
        
        if window == 4 and window_timer > 5 and ((special_pressed and is_special_pressed (DIR_NONE))) {
            set_attack(AT_NSPECIAL_2)
            hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE)
        }
    break;
    
    case AT_NSPECIAL_2:
    can_wall_jump = true;
        
        switch window {
        	case 1:
        	    if window_timer == 4 && should_mj_sound() and !hitpause {
                   sound_play(sound_get("voice_mj_hoo"), false, noone, 1, calc_mj_pitch(0.04));
                }
	            vsp = vsp > 0 ? vsp * 0.9 : vsp;
	            hsp *= 0.9
	            can_fast_fall = true;
	        break;
            case 2:
	            var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	            nspecial2_fall_timer = min(nspecial2_fall_timer + 1, 30)
	            
	            vsp *= 0.4 + (nspecial2_fall_timer/100)
	            hsp *= 0.86
				if window_timer == 1 {
				    sound_play(asset_get("mfx_star"));
				    if instance_exists(bullet_obj) {
				        bullet_obj.bullet_state = PS_FROZEN;
				        bullet_obj.frozen_bullet_new_angle = 180 * (spr_dir == -1)
				        bullet_obj.hsp = 0;
				        bullet_obj.vsp = 0;
				        
				        bullet_obj.enemies = 0;
				        //bullet_obj.damage = 3;
				        bullet_obj.hitpause = 7;
				        bullet_obj.hitpause_growth = 0.2;
				        for (var p = 0; p < 20; p++)
				        {
				        	bullet_obj.can_hit[p] = true;
				        }
				        
				    }
				}
				else if window_timer >= window_length - 1 {
				    parry_cooldown = 10;
				    window_timer = window_length -1
				    
				    var bullet_exists = instance_exists(bullet_obj) 
				    
				    if !bullet_exists {
				        window = 3;
				        window_timer = 0;
				    } else if (!special_down and bullet_obj.frozen_bullet_timer >= bullet_obj.frozen_bullet_min_time) {
				        window = 3;
				        window_timer = 0;
				        bullet_obj.bullet_state = PS_DEAD;
				        var spd = 18;
				        bullet_obj.proj_angle = bullet_obj.frozen_bullet_new_angle;
				        bullet_obj.frozen_bullet_hsp = lengthdir_x(spd, bullet_obj.proj_angle);
				        bullet_obj.frozen_bullet_vsp = lengthdir_y(spd, bullet_obj.proj_angle);
				        bullet_obj.hsp = bullet_obj.frozen_bullet_hsp
				        bullet_obj.vsp = bullet_obj.frozen_bullet_vsp
				        sound_play(asset_get("sfx_ori_grenade_launch"),false,noone,1,1.1)
				        if bullet_obj.spr_dir == -1 bullet_obj.draw_xscale *= -1;
				    }
				}
			break;
			case 3:
			move_cooldown[AT_NSPECIAL] = 30;
			break;
        }
    break;

    case AT_FSPECIAL:
    can_wall_jump = true;
    	vsp *= (vsp > 0 ? 0.9 : 1)
    	if window == 1 && window_timer == 6 && should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_shchk"), false, noone, 1, calc_mj_pitch(0.04));
    	}
        if window == 4 {
            move_cooldown[AT_FSPECIAL] = 60;
            
            if (window_timer > 2 and should_fspec_followup() and !was_parried) {
                attack_end();
                destroy_hitboxes();
                
                set_attack(AT_FSPECIAL_2);
                hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE)
            }
        }
        
        // if window < 3 {
        //     if !free {
        //         can_fspecial2 = true;
        //     }
        // }
        
        if window > 1 and should_fspec_followup() {
            fspecial2_buffer = true;
        }
    break;
    case AT_FSPECIAL_2:
    vsp *= (vsp > 0 ? 0.93 : 1)
        if window == 1 && window_timer == 2 and !hitpause{
        	vsp = max(-5, vsp)
            sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
            sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
            	if should_mj_sound() {
                    sound_play(sound_get("voice_mj_hoo"), false, noone, 1, calc_mj_pitch(0.03));
                }
        }
        
        if window == 1 and window_timer == 4 and !hitpause{
        	sound_play(sound_get("sfx_gun_shot"), false, noone, 0.9, 1.05)
        }
        
        if window == 4 {
        	move_cooldown[AT_FSPECIAL] = 40
        }
    break;
    case AT_USPECIAL:
    can_fast_fall = false;
    can_wall_jump = window > 1
        if window == 1{
            if window_timer == 4 and !hitpause{
                sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
                sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
            }
            if window_timer == 10 and !hitpause{
                sound_play(asset_get("sfx_ori_bash_use"));
            }
            if window_timer == 15 and !hitpause{
                sound_play(asset_get("sfx_mol_flare_explode"));
                if should_mj_sound() {
                    	sound_play(sound_get("voice_mj_daoh2"), false, noone, 1, calc_mj_pitch(0.03));
                    }
                spawn_hit_fx(x,y+28,firework_hfx)
            }
        }
    break;

    case AT_DSPECIAL:
        move_cooldown[AT_DSPECIAL] = 45;
        can_wall_jump = window > 1
        if window == 1 && window_timer == 1 && should_mj_sound() and !hitpause{
    		sound_play(sound_get("voice_mj_heehee"), false, noone, 1, calc_mj_pitch(0.02));
    	}
    break;
    case AT_TAUNT:
    	switch window
        {
        	case 1:
        		if window_timer == 3 and !hitpause{
                    sound_play(asset_get("sfx_swipe_weak2"),false,noone,0.5);
                   if mj_enabled {
                    	sound_play(sound_get("voice_mj_areyouok"));
                    } 
                }
        	break;
        	case 2:
        	case 3:
        	case 4:
        		if window_timer == 23{
        			if window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 and window > 2 and !taunt_down {
        				window = 6
        				window_timer = 0;
        			}
        			else 
        			{
        				sound_play(asset_get("sfx_swipe_weak2"),false,noone,0.5);
        			}
        		}
        		
        		break;
        }
    break;
}



#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
#define should_fspec_followup()
return (can_fspecial2 and (is_special_pressed(DIR_NONE) or is_special_pressed(DIR_LEFT) or is_special_pressed(DIR_RIGHT))) or fspecial2_buffer

#define calc_mj_pitch()
/// @param {undefined} intensity
var intensity = argument0;

return 1 + ((random_func(10, intensity*200, false) - (intensity*100)) / 100)

#define should_mj_sound()
if mj_should_carry_over return true;

return mj_enabled and random_func( ((x + y) mod 9) + 2, 4, true) < 2
