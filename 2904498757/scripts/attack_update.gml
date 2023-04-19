// B Reversals + pseudo turbo mode
switch attack {
	// b reverse
    case AT_NSPECIAL: case AT_NSPECIAL_AIR:
    case AT_FSPECIAL:
    case AT_DSPECIAL:
    case AT_USPECIAL:
        trigger_b_reverse();
        break;
    // this case is just here to prevent the pseudo turbo mode during fthrow
    case AT_FTHROW:
    	break;
	// pseudo turbo mode
    case AT_JAB:
    case AT_FTILT:
    case AT_UTILT:
    case AT_DTILT:
    case AT_NAIR:
    case AT_FAIR:
    case AT_BAIR:
    case AT_UAIR:
    case AT_DAIR:
		if nspec_mach_timer > 0 {
			can_attack = has_hit && !hitpause;
			can_jump = can_attack;
		}
		break;
}

// everything else
switch attack {
    case AT_JAB:
    	if window >= 4 && jab_parried {
    		was_parried = true;
    	}
    	break;
	case AT_FTILT:
	case AT_DTILT:
	case AT_UTILT:
		if jab_parried {
				was_parried = true;
		}
		break;
    case AT_DSTRONG:
		move_cooldown[attack] = 8;
		break;
	case AT_TAUNT:
		can_jump = free;
		break;
    
    // ===== GRAB DASH =====
    case AT_FSPECIAL:
		move_cooldown[AT_FSPECIAL] = 5;
        switch window {
            case 1: // startup
                can_fast_fall = false;
                break;
            case 2: // active
                can_fast_fall = false;
                // ledge snap
                if free && hsp == 0 && !hitpause && !snapped_to_ledge {
					snapped_to_ledge = ledge_snap();
				}
				// cancel into fthrow
				if array_length(grabbed) > 0 {
					destroy_hitboxes();
					attack_end();
					set_attack(AT_FTHROW);
					hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				}
                break;
            case 3: // endlag 1
				can_wall_jump = true;
				break;
			case 4: // endlag 2
				can_wall_jump = true;
				can_fast_fall = is_last_frame();
				set_window_value(attack, window, AG_WINDOW_TYPE, 7 * free);
				break;
        }
        break;
    
    // ===== PILEDRIVER =====
    case AT_FTHROW:
		move_cooldown[AT_FSPECIAL] = 5;
		can_fast_fall = false;
		can_wall_jump = true;
		switch window {
			case 1: // vertical boost window
				move_grabbed_player(26, -2);
				break;
			case 2: // falling
				funny_move_grabbed_player(24, -2);
			    break;
		}
        break;
    
    // ===== SUPER JUMP =====
    case AT_USPECIAL:
        switch window {
			case 1: // startup
				can_fast_fall = false;
				break;
			case 2: // active
				can_fast_fall = false;
				hsp = clamp(hsp, -3, 3);
				break;
			case 3: // endlag
				can_fast_fall = is_last_frame();
				break;
        }
        break;
        
    // ===== BODY SLAM =====
	case AT_DSPECIAL:
		move_cooldown[attack] = 8;
		can_fast_fall = false;
		switch window {
			case 1: // startup
				hsp *= 0.97;
				vsp = min(vsp, 0);
				break;
			case 2: // falling
				dspec_timer += !hitpause;
				can_wall_jump = true;
				
				if !free { // land
					window = 3;
					window_timer = 0;
					shake_camera(3, 4);
					sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.6, 0.9);
					sound_play(asset_get("sfx_blow_heavy1"));
					destroy_hitboxes();
					
					var pizza_vsp = -4 - min(dspec_timer/3, 8);
					var pizza_hsp = 1 + clamp(dspec_timer/10, 1, 2.5);
					
					var pizza = create_hitbox(attack, 3, x + 30*spr_dir, y);
					pizza.hsp = pizza_hsp * spr_dir;
					pizza.vsp = pizza_vsp;
					
					var pizza = create_hitbox(attack, 3, x - 25*spr_dir, y);
					pizza.spr_dir = -spr_dir;
					pizza.draw_x = -spr_dir;
					pizza.hsp = -pizza_hsp * spr_dir;
					pizza.vsp = pizza_vsp;
				}
				else if dspec_timer > 28 {
					can_jump = true;
				}
				break;
		}
		break;
		
	// ===== MACH MODE =====
	case AT_NSPECIAL:
		move_cooldown[attack] = 7;
		can_fast_fall = false;
		can_move = false;
		can_wall_jump = (window > 1);
		switch window {
			case 1: // startup
				vsp = min(vsp, 0);
				break;
			case 2: // walking
				hsp = nspec_accel * spr_dir * window_timer;
				vsp = min(vsp, 3);
				break;
			case 3: // running
				hsp = nspec_max_hsp * spr_dir;
				vsp = min(vsp, max_fall * 0.75);
				nspec_mach_timer = nspec_mach_duration + 1;
				
				if window_timer == 1 && !hitpause {
					nspec_loops += 1;
				}
				
				if nspec_loops > 0 {
					if is_special_pressed(DIR_NONE) { // exit
						window = 4;
						window_timer = 0;
						nspec_loops = -1;
					}
					else { // cancels
						can_attack = true;
						can_strong = true;
						can_ustrong = true;
						can_special = true;
						can_jump = true;
					}
				}
				break;
			case 4: // cancel startup
				nspec_ai_cur = nspec_ai_tot - 2;
				super_armor = true;
				
				// turnaround
				if !nspec_turned {
					var holding_back = (right_down - left_down == -1 * sign(spr_dir));
					if window_timer <= 7 && holding_back {
						spr_dir *= -1;
						nspec_turned = true;
					}
				}
				
				/*
				if window_timer == 1 && !hitpause {
					nspec_loops += 1;
				}
				
				// charge
				var has_looped = nspec_loops > 0;
				if !has_looped {
					vsp = 0;
					// turnaround
					if !nspec_turned {
						var holding_back = (right_down - left_down == -1 * sign(spr_dir));
						if window_timer <= 7 && holding_back {
							spr_dir *= -1;
							nspec_turned = true;
						}
					}
				}
				else {
					nspec_dash_charge += 1;
					strong_flashing = (floor(nspec_dash_charge / 5) % 2 == 1)
					vsp = min(vsp, 2.5);
				}
				
				// stop charging
				if (!special_down && has_looped) || nspec_dash_charge == 60 {
					window = 5;
					window_timer = 0;
					sound_play(sfx_mach_dash);
					
					// calculate multiplier
					var mult = 1 + 0.1 * ease_linear(0, 6, nspec_dash_charge, 60);
					
					// adjust damage
					var base_val = get_hitbox_value(attack, 1, HG_DAMAGE);
					set_hitbox_value(attack, 1, HG_DAMAGE, floor(base_val * mult));
					// adjust bkb
					base_val = get_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
					set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, floor(base_val * mult));
					// adjust knockback scaling
					base_val = get_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
					set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, floor(base_val * mult));
				}
				*/
				break;
			case 5: // cancel active
				nspec_mach_timer = 0;
				nspec_ai_cur = nspec_ai_tot - 1;
				
				// ledge snap
				if free && hsp == 0 && !hitpause && !snapped_to_ledge {
					snapped_to_ledge = ledge_snap();
				}
				break;
			case 6: // cancel endlag
				nspec_mach_timer = 0;
				can_fast_fall = is_last_frame();
				can_wall_jump = true;
				break;
        }
        break;
	case AT_NSPECIAL_AIR:
		
		break;
}

if abs(hsp) < 2 && !hitpause {
	reset_attack_value(attack, AG_CATEGORY);
	reset_attack_value(attack, AG_OFF_LEDGE);
}

#define is_last_frame
return window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH);

#define move_grabbed_player(x_offset, y_offset)

var pull_to_x = floor(x_offset * spr_dir);
var pull_to_y = floor(y_offset);

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

var len = array_length(grabbed);
for (var i = 0; i < len; i += 1) {
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
}

#define funny_move_grabbed_player(x_offset, y_offset)
// this is very hyper-specific to fspec lol

var grab_hold_dir;
var enemy_dir;
var in_front = false;
switch image_index {
	case 1:
		grab_hold_dir = 0;
		enemy_dir = 1;
		break;
	case 2:
		grab_hold_dir = -1;
		enemy_dir = 1;
		break;
	case 3:
		grab_hold_dir = 0;
		enemy_dir = -1;
		in_front = true;
		break;
	case 4:
		grab_hold_dir = 1;
		enemy_dir = -1;
		break;
}

var len = array_length(grabbed);
for (var i = 0; i < len; i += 1) {
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
			var new_x = other.x + other.spr_dir * (10 + grab_hold_dir * x_offset);
			x = lerp(x, new_x, 0.6);
			y = other.y + y_offset;
			
			spr_dir = other.spr_dir * enemy_dir;
			
			if in_front {
				force_depth = true;
				depth = other.depth - 1;
			}
		}
	}
}

#define set_grabbed_coords

var len = array_length(grabbed);
for (var i = 0; i < len; i += 1) {
    grabbed[i].relative_x = grabbed[i].pid.x - x;
    grabbed[i].relative_y = grabbed[i].pid.y - y;
}

#define ledge_snap

var snap_height = 16;
var side_to_check = (spr_dir > 0) ? bbox_right + 1: bbox_left - 1;
var solid_index = asset_get("par_block");

if !place_meeting(side_to_check, y - snap_height, solid_index) {
    x += spr_dir;
    y -= snap_height;
    for (var step = snap_height / 2; step >= 1; step /= 2) {
    	if !position_meeting(side_to_check, bbox_bottom + step, solid_index) {
    		y += step;
    	}
	}
	return true;
}
else { return false; }

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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