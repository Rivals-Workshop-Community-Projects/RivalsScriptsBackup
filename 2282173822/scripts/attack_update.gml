//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



// dust, and also strongs consuming charge

switch(attack){
	case AT_JAB:
	case AT_FTILT:
	case AT_DTILT:
		if (window == 1 || attack == AT_JAB && (window == 4 || window == 7)) && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - 16 * spr_dir + sin(state_timer) * 10, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if (window == 1 || attack == AT_JAB && (window == 4 || window == 7)) && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - 16 * -spr_dir + sin(state_timer) * 10, y, "dash", -spr_dir]);
		}
		break;
	case AT_DATTACK:
		if (window == 2 || window == 3) && window_timer == round(phone_window_end / 2){
			array_push(phone_dust_query, [x - 16 * spr_dir + sin(state_timer) * 10, y, "dash", spr_dir]);
		}
		break;
	case AT_USTRONG:
	case AT_FSTRONG:
	case AT_DSTRONG:
		if window == 1 && (window_timer == 1 || strong_charge % 10 == 1){
			array_push(phone_dust_query, [x - 16 * spr_dir + sin(strong_charge) * 10, y, "dash", spr_dir]);
		}
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - (40 * attack == AT_FSTRONG) * spr_dir, y, "dash_start", spr_dir]);
			if lightning lightning = max(lightning - 30, 2);
		}
		break;
}



switch(attack){
	
	case AT_NSPECIAL:
	
	can_fast_fall = false;
	
		switch(window){
			case 1: //jumpsquat
				if (window_timer == phone_window_end){
					vsp = -short_hop_speed;
					hsp = clamp(hsp, -5, 5);
                    spawn_hit_fx(x, y, vfx_rain_splash);
                    has_done_stupid_vsp_thing = false;
				}
				break;
			case 2: //jumping
				if (window_timer == phone_window_end && false){
					for (i = 0; i < 4; i++){
						var hfx_x = x + random_func(i, 40, true) - 20;
						var hfx_y = y - random_func(i, 20, true);
						
						var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_rain_drop);
						hfx.trum_manip_id = self;
						hfx.hsp = random_func(i, 10, true) - 5;
						hfx.vsp = random_func(i, 5, true) - 10;
					}
				}
				break;
			case 4: //endlag
				if has_hit_player{
					attack_end();
					set_attack(AT_NSPECIAL_2);
					hurtboxID.sprite_index = hurtbox_spr;
					vsp = -10;
					hsp = 4 * spr_dir; // 6
					
                    snail = true;
                    snail_airdodge_saved = has_airdodge;
                    free = true;
                    has_airdodge = false;
                    max_djumps = 0;
                    snail_spr_dir = spr_dir;
                    
                    lightning = 0;
                    
                    for (i = 0; i < 4; i++){
                    	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_WINDOW, 2 * (i == min(cloud_count, 3)));
                    }
                    
                    var cloud = instance_create(x, y, "obj_article1");
                    cloud.state = 12;
                    cloud.sprite_index = spr_cloud_nspecial;
                    cloud.spr_dir = spr_dir;
                    
                    spawn_hit_fx(x, y - 32, vfx_rain_splash);
					break;
				}
			case 3: //active
				can_move = false;
				hsp = 0;
				vsp = 0;
				if has_hit_player && nspecial_target.state_cat == SC_HITSTUN && !hitpause{
					nspecial_target.hsp = 5 * spr_dir - sign(nspecial_target.x - x);
					if !has_done_stupid_vsp_thing || 1{
						has_done_stupid_vsp_thing = true;
						nspecial_target.vsp = -10;
						nspecial_target.old_vsp = -10;
					}
				}
				break;
		}
		
		break;
	
	
	
	case AT_NSPECIAL_2: //trumpet and alto
		
		can_move = false;
		can_fast_fall = false;
		
		switch(window){
			case 1:
				if (window_timer == 1){
					orig_x = x;
					orig_y = y;
				    if nspecial_target.state_cat == SC_HITSTUN nspecial_target.hsp = 5 * spr_dir - sign(nspecial_target.x - x);
				}
				if (window_timer == phone_window_end){
					sound_play(sfx_brass_1);
					sound_play(sfx_brass_hit);
					if cloud_count > 0 sound_play(sfx_brass_2);
					if (cloud_count >= 3){
						var vfx = spawn_hit_fx(x + 128 * spr_dir, y + 32, vfx_woag);
						vfx.spr_dir = 1;
						sound_play(asset_get("sfx_fish_collect"));
						sound_play(sfx_ssbu_shock_big);
					}
				}
				break;
			case 2:
			case 3:
				hsp = 0;
				vsp = 0;
				break;
		}
		
		break;
	
	
	
	case AT_FSPECIAL:
	    
		can_wall_jump = true;
		
		switch(window){
			case 1: //startup
				hsp = clamp(hsp, -3, 3);
				if (window_timer == 1){
				    sound_play(asset_get("sfx_ori_ustrong_charge"));
				}
				if (window_timer == 9){
					snail = true;
					snail_airdodge_saved = has_airdodge;
					has_airdodge = false;
					max_djumps = 0;
					snail_spr_dir = spr_dir;
                    
                    var cloud = instance_create(x, y, "obj_article1");
                    cloud.state = 11;
                    cloud.spr_dir = spr_dir;
                    
                    lightning = 0;
				}
				if (window_timer == phone_window_end){
				    spawn_hit_fx(x, y, vfx_rain_splash);
				    if free{
				    	hsp = 10 * spr_dir;
				    	vsp = 5;
				    }
				    else{
						hsp = 13 * spr_dir; // 15
						vsp = 0;
				    }
					x += 18 * spr_dir;
					has_ended = false;
					has_jumped = false;
					has_stopped = false;
				    sound_play(asset_get("sfx_ell_arc_taunt_end"));
				}
				// with obj_article1 if player_id == other && state == 11 state_timer = 0;
				break;
			case 3: //active 2
				hsp = clamp(hsp, -9, 9); // -10, 10
				hsp -= sign(hsp) * 0.05;
				vsp += 0.1;
			case 2: //active 1
				hsp -= sign(hsp) * 0.05;
				can_move = false;
				can_fast_fall = false;
				
				if !was_parried{
				
    				// if shield_pressed || (abs(hsp) < 3 && !hitpause) has_ended = true;
    				// if has_ended && !hitpause setWindow(4);
    				
    				if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && has_hit has_jumped = true;
    				if has_jumped && !hitpause{
    					attack_end();
    					destroy_hitboxes();
    					set_state(PS_JUMPSQUAT);
    					if hsp == 0 hsp = old_hsp;
    					snail = false;
    				}
    				
				}
				break;
			case 4: //end
				if (window_timer == 1){
				    destroy_hitboxes();
				    sound_play(jump_sound);
				    if !was_parried vsp = -8;
				    hsp = clamp(hsp, -3, 3);
				}
				if (window_timer == phone_window_end){
				    if !was_parried y += 30;
				}
				break;
		}
		
		break;
		
		
    
    case AT_USPECIAL:
    
        vsp = clamp(vsp, -3, 3);
        hsp = clamp(hsp, -3, 3);
        vsp = 0;
        hsp = 0;
        can_move = false;
        
        switch(window){
            case 1: //startup
                if (window_timer == 1){
                    if !hitpause{
                    	uspecial_sound = sound_play(sfx_ssbu_bow_charge);
                    	array_push(phone_stopped_sounds, uspecial_sound);
                    }
                }
            	break;
            case 2: //armored startup
                if (window_timer == phone_window_end){
                    sound_play(asset_get("sfx_ori_ustrong_launch"))
                }
                break;
            case 3: //active
                if (window_timer == phone_window_end || hitpause){
                    sound_stop(uspecial_sound);
                }
                if (window_timer == phone_window_end){
                    vsp = -16;
                    snail = true;
                    snail_airdodge_saved = has_airdodge;
                    free = true;
                    has_airdodge = false;
                    max_djumps = 0;
                    snail_spr_dir = spr_dir;
                    
                    var cloud = instance_create(x, y, "obj_article1");
                    cloud.state = 10;
                    
                    lightning = 0;
                    
                    spawn_hit_fx(x, y, vfx_rain_splash);
                }
                break;
        }
        
        break;
	
	
	
	case AT_DSPECIAL:
		
		switch(window){
			case 1:
				hsp = clamp(hsp, -3, 3);
				vsp = min(vsp, 3);
				break;
			case 2:
			case 3:
				if (window_timer == 1){
					vsp = -5;
					hsp = 0;
					sound_play(sfx_ssbu_water);
					sound_play(sfx_ssbu_squid1);
				}
				hsp = clamp(hsp, -3, 3);
				break;
			case 4:
				if (window_timer == 1){
					vsp = -8;
					hsp = 0;
					sound_play(sfx_ssbu_water);
					sound_play(sfx_ssbu_squid2);
				}
				break;
		}
		
		break;
	
	
	
	case AT_DSPECIAL_2: //lightning
		
		if (window < 3 || window_timer < phone_window_end - 2) lightning = max(lightning, 2);
		can_move = false;
		can_fast_fall = false;
		hsp = 0;
		vsp = 0;
		
		switch(window){
			case 1:
				if (window_timer == 1){
                    sound_play(sfx_ssbu_shock);
				}
				if (window_timer == phone_window_end){
					sound_play(sfx_ssbu_shock_big);
					lightning = max(lightning - 30, 2);
					// take_damage(player, player, 3);
				}
				break;
			case 2:
			case 3:
				break;
		}
		
		break;
	
	
	
    case AT_EXTRA_1: //Land in cloud
        
        hsp *= 0.9;
        vsp *= 0.9;
        // can_move = false;
        super_armor = false;
        if lightning{
        	lightning = lightning_max + 1;
        	// if window > 1 iasa_script();
        }
        
        // if (window == 1) super_armor = true;
        
        break;
        
    
    
    case AT_FSTRONG_2:
    case AT_USTRONG_2:
    case AT_DSTRONG_2:
        if (window < 4) lightning = max(lightning, 2);
        
        can_move = false;
        can_fast_fall = false;
        switch(window){
            case 2:
            
                if (window_timer == phone_window_end){
                    strong_charge *= 0.5;
                    
                    sound_play(sfx_ssbu_shock_big);
                    hsp = 0;
                    vsp = min(vsp, -3 * free);
                    
                    switch(attack){
                        case AT_FSTRONG_2:
                            hsp = lerp(-5, -8, strong_charge / 30) * spr_dir;
                            break;
                        case AT_USTRONG_2:
                            vsp = lerp(5, 8, strong_charge / 30);
                            break;
                        case AT_DSTRONG_2:
                            vsp = lerp(-6, -9, strong_charge / 30);
                            break;
                    }
                    
                    // take_damage(player, player, floor(lerp(3, 5, strong_charge / 30)));
                    
                    lightning = max(lightning - 30, 2);
                }
                
                if (attack == AT_DSTRONG_2){
                    y += -18 - vsp;
                }
            case 1:
                if (window == 1 && window_timer == 1){
                    hsp = clamp(hsp, -3, 3);
                    vsp = clamp(vsp, -3, 3);
                    sound_play(sfx_ssbu_shock);
                }
                
                if strong_charge{
                    if window == 1 strong_charge++;
                    
                    var max_fly = lerp(18, 0, strong_charge / 60); // 18 - 6
                    if shield_down max_fly = min(max_fly, 8);
                    var fly_acc = max_fly * 0.1;
                    
                    if joy_pad_idle{
                        hsp -= sign(hsp) * 0.3;
                        vsp -= sign(vsp) * 0.3;
                        
                        if (abs(hsp) < 1) hsp = 0;
                        if (abs(vsp) < 1) vsp = 0;
                    }
                    
                    else{
                        hsp += lengthdir_x(fly_acc, joy_dir);
                        vsp += lengthdir_y(fly_acc, joy_dir);
                    }
                    
                    fall_through = down_down;
                    
                    
                    var fly_dir = point_direction(0, 0, hsp, vsp);
                    var fly_spd = point_distance(0, 0, hsp, vsp);
                    
                    if (fly_spd > max_fly){
                        hsp = lengthdir_x(max_fly, fly_dir);
                        vsp = lengthdir_y(max_fly, fly_dir);
                    }
                }
                
                if !(attack == AT_DSTRONG_2 && window == 2) strong_free = free;
                
                break;
            case 3:
            case 4:
                // hsp = 0;
                // vsp = 0;
                // vsp -= sign(vsp) * 0.5;
                
                // if (abs(vsp) < 1) vsp = 0;
                
                vsp += gravity_speed * 2 / 3;
                
                set_window_value(attack, 4, AG_WINDOW_TYPE, !(/*has_hit || */!strong_free || !free) * 7);
                
                can_move = true;
                can_wall_jump = true;
                break;
        }
        break;
    
    
    
    case AT_DATTACK:
        
        switch(window){
            case 1:
                if (window_timer == 1) has_jumped = false;
                if (window_timer == phone_window_end){
                    hsp = 9 * spr_dir;
                }
                else can_ustrong = false; //can't DACUS until actually getting momentum
                break;
            case 2:
                if (window_timer == phone_window_end){
                    hsp = 11 * spr_dir;
                }
                break;
            case 5:
                hsp *= 0.9;
                
                if (window_timer == phone_window_end / 2){
                    clear_button_buffer(PC_JUMP_PRESSED);
                }
                
                if ((window_timer == phone_window_end / 2) && (jump_down || (up_down && can_tap_jump())) && window_timer > 5 && window_timer < 100) && !was_parried{
                    sound_play(jump_sound);
                    attack_end();
                    set_state(PS_FIRST_JUMP);
                    // state_timer++;
                    // y -= 2;
                    free = true;
                    
                    for (i = 0; i < 50; i++){
                        move_cooldown[i] = 2;
                    }
                    has_airdodge = false;
                }
                break;
        }
        
        if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && (window < 5 || window_timer < phone_window_end / 2){
            strong_flashing = true;
            if !has_jumped{
                sound_play(asset_get("sfx_ori_ustrong_charge"));
                has_jumped = true;
            }
        }
        
        break;
        
    
    
    case AT_FSTRONG:
        
        switch(window){
            case 1:
                if (window_timer == 1) sound_play(asset_get("sfx_spin"));
                if (window_timer == phone_window_end - 7) sound_play(asset_get("sfx_ell_utilt_retract"));
                break;
            case 2:
                if (window_timer == 1) set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 20 + lerp(0, 10, strong_charge / 60)); // 40 + lerp(20)
                if (window_timer == phone_window_end){
                    hsp = -lerp(7, 11, strong_charge / 60) * spr_dir;
                    sound_play(asset_get("sfx_tow_anchor_land"));
                }
                break;
            case 3:
            case 4:
                // strong_cooldown = strong_cooldown_max;
                break;
        }
        
        break;
        
    
    
    case AT_USTRONG:
        
        switch(window){
            case 1:
                if (window_timer == 1) sound_play(asset_get("sfx_swipe_weak1"));
                if (window_timer == phone_window_end - 7) sound_play(asset_get("sfx_ell_utilt_retract"));
                break;
            case 2:
                if (window_timer == 1){
                    var spd = 18 + lerp(0, 5, strong_charge / 60);
                    var ang = 75;
                    set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, lengthdir_x(spd, ang));
                    set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, lengthdir_y(spd, ang));
                }
                if (window_timer == phone_window_end){
                    // hsp = -lerp(7, 11, strong_charge / 60) * spr_dir;
                    // sound_play(asset_get("sfx_tow_anchor_land"));
                }
                break;
            case 3:
            case 4:
                // strong_cooldown = strong_cooldown_max;
                break;
        }
        
        break;
        
    
    
    case AT_DSTRONG:
        
        last_charge_frame = 15; //controls uncharged length. lower number = lasts longer, use multiples of 5 so the uncharged frame is a tidy one
        
        switch(window){
            case 1:
                dstrong_charge = strong_charge;
                if (window_timer == 1){
                    sound_play(asset_get("sfx_swipe_weak1"));
                }
                if (window_timer == phone_window_end - 7) sound_play(asset_get("sfx_ell_utilt_retract"));
                break;
            case 2:
                strong_charge = 0;
                if (window_timer == 1){
                    
                }
                if (window_timer == phone_window_end){
                }
                break;
            case 3:
            case 4:
                // strong_cooldown = strong_cooldown_max;
                break;
        }
        
        break;
    
    
    
    case AT_DAIR:
        
        switch(window){
            case 1:
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                can_fast_fall = (window == 5 && hitpause);
                hsp = clamp(hsp, -3, 3);
                if !(window == 5 && vsp == fast_fall) vsp = min(vsp, 3);
                break;
            case 6:
                break;
        }
        
        break;
    
    
    
    case AT_TAUNT_2:
    case AT_TAUNT:
    
    	switch(window){
    		case 1:
    			taunt_time = 0;
    			break;
    		case 3:
    			if (window_timer == phone_window_end && (taunt_down || (codec_video && !shield_down))){
    				window_timer--;
    				taunt_time++;
    			}
    			break;
    	}
    	
    	break;
}



#define setWindow

window = argument[0];
window_timer = 0;
destroy_hitboxes();