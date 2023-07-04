var alt = get_player_color(player);

switch state {

    case PS_SPAWN:
	    sprite_index = sprite_get("intro");
        if introTimer = 19 {
            image_index = 1;
        } else if introTimer < 19 {
            image_index = 0;
		} else {
		    image_index = 2;
		}
	break;
	
	case PS_IDLE:
	    if sprite_index = sprite_get("wait") && state_timer%4 = 0 && (image_index = 3 || image_index = 10) {
		    sound_play(sound_get("sm64_kickup"));
			spawn_base_dust(x-16*spr_dir, y, "walk", spr_dir)
		}
	break;

    case PS_DASH_TURN:
	    if state_timer%5 = 0 sound_play(sound_get("smb3_skid"));
	break;
	
	case PS_PARRY:
		if state_timer = 1 && !hitpause sound_play(sound_get("sm64_clink"));
	break;
	
	case PS_WAVELAND:
		if !free and state_timer = 1 {
		    sound_stop(air_dodge_sound);
		}
	break;
	
	case PS_AIR_DODGE:
	    if state_timer = 0 && !free {
		    sprite_index = sprite_get("idle");
		    image_index = 0;
		}
	break;
	
	case PS_RESPAWN:
	    if get_match_setting(SET_PRACTICE) visible = true;
	break;
	
	case PS_IDLE_AIR:
	    switch prev_state {
		    case PS_DOUBLE_JUMP:
		    case PS_WALL_JUMP:
		    case PS_AIR_DODGE:
		    case PS_ATTACK_AIR:
	            if image_index != image_number-1 image_index = image_number-1;
			break;
		}
	break;
	
	case PS_DASH:
	    if state_timer%8 = 0 step_sound(0.3);
	break;
	case PS_WALK:
	    if state_timer%20 = 10 step_sound(0.3);
	break;
	
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	    switch attack {
		    case AT_FSTRONG:
			    switch window {
				    case 1:
				    case 2:
					    hud_offset = lerp(hud_offset, 42, 0.2);
					break;
				}
			break;
		    case AT_FSPECIAL:
			    if window = 3 {
				    if window_timer%4 > 1 { image_index = 3; } else { image_index = 4; }
					if window_timer%4 = 0 && !hitpause step_sound(1);
				}
				
				if window = 4 && !free && !hitpause && (window_timer = 0 || window_timer = 8) {
				    step_sound(1);
				}
			break;
			
			case AT_NSPECIAL:
			    if window = 2 && window_timer > 26 image_index = 3;
			break;
			
			case AT_DSPECIAL:
			    if (window = 3 || window = 4) && dspec_bounce image_index = 7;
			break;
			
			case AT_UAIR:
			    if window = 2 || (window = 1 && window_timer > 8) || (window = 3 && window_timer < 4) hud_offset = lerp(hud_offset, 90, 0.5);
			break;
			case AT_USTRONG:
			    if window = 3 || window = 2 || window = 1 || (window = 4 && window_timer < 5) hud_offset = lerp(hud_offset, 180, 0.5);
			break;
			case AT_UTILT:
			    if window = 2 || (window = 1 && window_timer > 4) || (window = 3 && window_timer < 6) hud_offset = lerp(hud_offset, 70, 0.5);
			break;
			
			case AT_DSTRONG:
			    if window == 1 && strong_charge > 0 {
			        image_index = 3 + (strong_charge / 4) % 4;
				}
			break;
			
			case AT_TAUNT:
			    switch taunt_type {
				    case 1:
				        sprite_index = sprite_get("taunt_horrible_little_san_orb_god_i_hate_it");
					break;
					case 2:
					    sprite_index = asset_get("empty_sprite");
					    draw_sprite(sprite_get("prince_bully"), 0, x, y);
					break;
					case 3:
					    sprite_index = sprite_get("taunt_bull_y");
					break;
					case 8:
					    sprite_index = sprite_get("taunt_3dw");
					break;
				}
			break;
			
			case AT_TAUNT_2:
			    switch alt { 
				case 0: case 2: case 6: case 12: case 15: case 19: case 0: case 29: case 31:
				    sprite_index = sprite_get("taunt_up");
				break;
				}
			break;
			
			case AT_EXTRA_1:
			    switch taunt_type {
				    case 5:
				        sprite_index = sprite_get("taunt_smb2");
					break;
					case 6:
				        sprite_index = sprite_get("taunt_smb3");
					break;
					case 7:
				        sprite_index = sprite_get("taunt_sml2");
					break;
				}
			break;
			
			case AT_EXTRA_2:
			    if free && !respawn_taunt && window != 3 image_index = 10;
				
				if window = 5 && window_timer > 2 image_index = 9;
			break;
		}
	break;
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

#define step_sound(volume)

sound_play(sound_get("bully_step"), false, noone, argument[0], 1); 

#define spawn_base_dust // written by supersonic
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
