// attack_update is a script called when you're doing an attack. It runs for every in-game frame.
// B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) {
    trigger_b_reverse();
}

switch attack {
	// boring stuff
	case AT_UAIR: case AT_EXTRA_1: 
		if window > 1 { hud_offset = 40; }
		break;
		
	case AT_DATTACK:
		move_cooldown[attack] = 3;
		if has_hit || has_hit_player && window == 3 && window_timer > 12 { can_attack = true; }
		break;
		
	case AT_USTRONG: case AT_USTRONG_2:
		if vsp < -3.5 || hitpause { hud_offset = 60; }
		
		// force landing lag
		if window > 4 && !free {
			destroy_hitboxes();
			attack_end();
			set_state(PS_LANDING_LAG);
			var lag_mult = (has_hit || has_hit_player) ? 1 : 1.5 ;
			var lag_remaining = (lag_mult * get_window_value(attack, window, AG_WINDOW_LENGTH)) - window_timer;
			landing_lag_time = max(lag_remaining, 8);
		}
		
		else {
			can_fast_fall = false;
			
			// spawn dust
			if window == 2 && window_timer == 1 {
				spawn_base_dust(x, y, "jump", spr_dir);
			}
		}
		break;
		
	case AT_DTILT:
		if has_hit || has_hit_player {
			can_jump = true;
		}
		break;
		
	case AT_UTILT:
		if window == 2 { hud_offset = 46; }
		break;
		
	// fun stuff
	// =========================================
	
    // CRABHAMMER
    case AT_NSPECIAL:
    	if window == 1 {
    		can_fast_fall = false;
    		vsp = min(vsp, 3.5);
    		if window_timer == 1 { nspec_sound = sound_play(asset_get("sfx_abyss_hazard_start")); }
    	}
    	else if window == 2 && window_timer == get_hitbox_value(attack, 3, HG_WINDOW_CREATION_FRAME) && !free && !has_hit_player && !was_parried { 
    		claws_health -= 55;
            shake_camera(3, 10);
            sound_play(asset_get("sfx_blow_heavy2"));
    	}
        else if window == 3 {
        	vsp = min(vsp, 5.5);
        }
        break;
        
    // CRABHAMMER - charged
    case AT_NTHROW:
    	switch window {
    	case 1:
    		can_fast_fall = false;
    		vsp = min(vsp, 3.5);
    		if window_timer == 1 { nspec_sound = sound_play(asset_get("sfx_abyss_hazard_start")); }
    		break;
    		
		case 2:
			move_grabbed_player(0, -6);
			
			if is_last_frame() {
				super_armor = true;
				set_grabbed_coords();
			}
			break;
		
    	case 3: 
    		move_grabbed_player(0, -6);
    		
        	if window_timer == 1 {
	        	claws_health = 0;
	        	claws_broken = true;
	        	user_event(1);
	        	shake_camera(5, 10);
        	}
        	break;
        	
        case 4:
        	if is_last_frame() {
        		var temp_fx = spawn_hit_fx(x, y, vfx_explosion);
        		temp_fx.depth -= 1;
        		
        		super_armor = false;
        	}
        	break;
        	
    	case 5:
    		grabbed = []; // just in case
    		vsp = min(vsp, 5.5);
    		break;
    	}
        break;
        
    // =========================================
        
    // VICE GRIP
    case AT_FSPECIAL:
    	can_fast_fall = false;
    	move_cooldown[attack] = 12;
    	
        if window == 2 {
        	// vertical drift
        	set_window_value(attack, window, AG_WINDOW_VSPEED, 2.5*down_down - 3*up_down);
        	
        	// do the grab stuff
        	if array_length(grabbed) > 0 {
	        	move_grabbed_player(26, -46);
	            
	            //start throw attack on last frame of this window
	            if is_last_frame() {
	                destroy_hitboxes();
	                attack_end();
	                set_attack(AT_FTHROW);
	                
	                set_grabbed_coords();
	            }
        	}
            else if window_timer = get_hitbox_value(attack, 3, HG_WINDOW_CREATION_FRAME) {
            	claws_health -= 15;
            }
        }
        
        // walljump cancel + jump/shield cancel
        else if window == 3 {
        	can_wall_jump = true;
        	if window_timer > 6 {
        		can_jump = true;
        		can_shield = free? true : false;
        	}
        	else if window_timer == 1 { grabbed = []; } // just in case
        }
        
        break;
        
    // VICE GRIP THROW
    case AT_FTHROW:
    	can_fast_fall = false;
    	
    	if window == 1 {
    		move_grabbed_player(20, -50);
    	}
    	else if window == 3 {
    		iasa_script();
    		if window_timer == 1 { grabbed = []; } // just in case
    	}
    	break;
    
    // =========================================
    
    // HARDEN
    case AT_DSPECIAL:
    	move_cooldown[attack] = 20;
    	
    	if window < 3 {
    		vsp = min(vsp, 4.5);
    		hsp = clamp(hsp, -2, 2);
    	
	    	if window == 2 {
	        	soft_armor = 11;
	        	orig_knock = 0; // does this break anything? idk, but it's for the counter
	        	claws_health += 1;
	        	
	        	// count loops
	        	if window_timer == 1 { dspec_loops++; }
	        	
	        	if dspec_loops > 0 {
		        	// if fully healed
		            if claws_health >= 100 {
		                claws_health = 100;
		                
		                if claws_broken { // regrow
		                	destroy_hitboxes();
		                	attack_end();
		                    set_attack(AT_DTHROW);
            				
		                    claws_broken = false;
		                    user_event(1);
		                    sound_play(asset_get("mfx_levelup"));
		                    
		                    super_armor = true;
		                }
		                else { // endlag
		                    window = 3;
		                    window_timer = 0;
		                }
		            }
		            
		            // exit
		            else if !special_down {
		                window = 3;
		                window_timer = 0;
		            }
	        	}
	        }
    	}
    	else {
    		can_wall_jump = true;
    		can_shield = free? true : false;
    	}
    	
        // soft counter
        if dspec_countered{
        	if window == 2 {
        		invincible = true;
        		invince_timer = 2;
        	}
        	
        	force_depth = true;
        	depth = -6;
        	
        	iasa_script();
        }
        break;
        
    // HARDENED
    case AT_DTHROW:
    	if window == 2 && window_timer == 3 { super_armor = false; }
    	break;
    
    // =========================================
    
    // BUBBLEBEAM
    case AT_USPECIAL:
    	can_fast_fall = false;
    	can_wall_jump = true;
    	hsp = clamp(hsp, -3.75 + 0.5 * claws_broken, 3.75 + 0.5 * claws_broken);
    	
    	if window == 1 && window_timer == 1 { uspec_parried_by = []; }
    	
    	// the fun stuff
		if window == 2 {
			// create melee hitbox
			if window_timer == 1 {
				uspec_hitbox = create_hitbox(attack, 1, x, y);
				uspec_hitbox_mask = uspec_hitbox.sprite_index;
			}
			
    		// slow ascent if holding down
    		if down_down { 
    			var slow_vsp = 0.94 * get_window_value(attack, window, AG_WINDOW_VSPEED);
    			set_window_value(attack, window, AG_WINDOW_VSPEED, slow_vsp);
    			uspec_hitbox.sprite_index = asset_get("empty_sprite");
    		}
    		else {
    			set_window_value(attack, window, AG_WINDOW_VSPEED, -6 - claws_broken);
    			uspec_hitbox.sprite_index = uspec_hitbox_mask;
    		}
    		
    		// spawn bubbles
    		if !hitpause {
	    		var i = 0;
	    		repeat (2) {
		    		var bubble = create_hitbox(attack, 2, x-spr_dir*4, y - 22);
		    		var bubble_picker = random_func(i*3, 3, true);
		    		
		    		switch bubble_picker {
		    			case 0: set_hitbox_value(attack, 2, HG_PROJECTILE_DESTROY_EFFECT, vfx_bubbles_large); break;
		    			case 1: set_hitbox_value(attack, 2, HG_PROJECTILE_DESTROY_EFFECT, vfx_bubbles_med); break;
		    			case 2: set_hitbox_value(attack, 2, HG_PROJECTILE_DESTROY_EFFECT, vfx_bubbles_small); break;
		    		}
		    		
		    		bubble.image_index = bubble_picker;
		    		bubble.length -= random_func(1 + i*3, 13, true);
		    		bubble.hsp = (right_down - left_down + (25 - random_func(2 + i*3, 51, true)) / 17.5) * 0.9;
		    		bubble.grav -= 0.1 * window_timer/23;
		    		if get_player_color(player) = 19 { bubble.spr_dir = 1; }
		    		
		    		// check if someone parried uspecial and tell bubbles to chill tf out
		    		if array_length(uspec_parried_by) > 0 {
		    			for (var i = 0; i < array_length(uspec_parried_by); i++) {
		    				var index = uspec_parried_by[i];
		    				bubble.can_hit[index] = 0;
		    			}
		    		}
		    		
		    		/* RIP internal lockout system -- you will be remembered
		    		
		    		with oPlayer if variable_instance_exists(self, `bubble_lockout_${other.player}`) {
				        var lockout = variable_instance_get(self, `bubble_lockout_${other.player}`);
				        if lockout > 0 {
				        	bubble.can_hit[player] = 0;
				        }
		    		}
		    		*/
		    		i++;
	    		}
    		}
    	}
        break;
        
    // =========================================
    
    // BUBBLE
    case AT_NSPECIAL_2:
    	move_cooldown[attack] = 16;
    	if window == 2 {
    		can_shield = true;
	    	if window_timer < ( get_window_value(attack, window, AG_WINDOW_LENGTH) - 3 ) && !special_down {
	    		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 3;
	    	}
    	}
    	else if window == 3 && window_timer > 2 { 
    		can_jump = true; 
    		can_wall_jump = true; 
    	}
    	break;
    	
	// =========================================
    	
	// WATER GUN
	case AT_FSPECIAL_2:
		move_cooldown[attack] = 16;
		
		// vertical drift
		can_fast_fall = false;
        set_window_value(attack, window, AG_WINDOW_VSPEED, 2.5*down_down - 3*up_down);
        
		if window == 2 {
			// fx
			if window_timer % 6 == 1 {
				spawn_hit_fx(x + spr_dir * 20, y - 16, 6);
			}
		}
		
		// jump / shield cancel
		else if window == 3 {
			can_wall_jump = true;
			
			if window_timer > 8 {
				can_jump = true;
				can_shield = free ? true : false;
			}
		}
		
		break;
		
	// =========================================
	
	// TAUNT lol
	case AT_TAUNT:
		if !claws_broken && window_timer == 1 && (window == 2 || window == 4) {
			claws_health -= 5;
		}
}

// clamp meter
claws_health = clamp(claws_health, 0, 100);



#define is_last_frame

return window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)

#define move_grabbed_player(x_offset, y_offset)

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
var pull_to_x = x_offset * spr_dir;
var pull_to_y = y_offset + char_height/2;

var i = 0;
repeat (array_length(grabbed)) {
	if grabbed[i] != noone && instance_exists(grabbed[i].pid) {
		with grabbed[i].pid {
		
			//drop them if if they somehow escaped hitstun.
	    	if state != PS_HITSTUN && state != PS_HITSTUN_LAND {
	    		with other {
	    			grabbed[i] = noone;
	    			continue;
	    		}
			}
			
			// keep them in hitpause
			hitstop = 2;
			hitpause = true;
			
			// move them
			x = other.x + ease_cubeOut(other.grabbed[i].relative_x, pull_to_x, other.window_timer, window_length);
			y = other.y + ease_cubeOut(other.grabbed[i].relative_y, pull_to_y, other.window_timer, window_length);
		}
	}
	
	i++;
}

#define set_grabbed_coords

var i = 0;
repeat (array_length(grabbed)) {
    grabbed[i].relative_x = grabbed[i].pid.x - x;
    grabbed[i].relative_y = grabbed[i].pid.y - y;
    i++
}

#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;