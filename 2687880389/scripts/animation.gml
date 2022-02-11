// While crouching, use different sprites for moving and turning
if ((state == PS_CROUCH) && (driving)) {
    // Turn around if needed
    if (spr_dir_prev != spr_dir) {
        crouch_turning_timer = 0;
        sound_play(tire_screech_sound, false, noone, 0.5, 1);
    }
    if (crouch_turning_timer < crouch_turning_timer_max) {
    	sprite_index = sprite_get("crouchturn");
    	image_index = floor(crouch_turning_timer / (crouch_turning_timer_max / 2));
    	crouch_turning_timer++;
    } else {
        // Movement sprite
    	if (left_down || right_down) {
    		sprite_index = sprite_get("crouchmoving");
    		image_index = floor(crouch_anim_timer / (crouch_anim_timer_max / 2));
    		//if (vroom_cooldown == 0) {
    	    if (vroom_allowed) {
    			sound_play(engine_vroom_sound);
    			vroom_allowed = false;
    			spawn_base_dust(x - (spr_dir * 20), y, "dash_start");
    			//vroom_cooldown = vroom_cooldown_max;
    		}
    	} else {
    	    vroom_allowed = true;
    	}
    }
    crouch_anim_timer++;
    crouch_anim_timer %= crouch_anim_timer_max;
    //if (vroom_cooldown > 0) {
    //    vroom_cooldown--;
    //}
} else {
    crouch_anim_timer = 0;
    crouch_turning_timer = crouch_turning_timer_max;
    //vroom_cooldown = 0;
    vroom_allowed = true;
}
spr_dir_prev = spr_dir;

if (change_hurtbox_sprite_to_crouch_next_frame) {
	if (state == PS_CROUCH) {
    	hurtboxID.sprite_index = crouchbox_spr;
	}
    change_hurtbox_sprite_to_crouch_next_frame = false;
}

/*
if (((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND))
    && (attack == AT_DSPECIAL)
    && (window == 7)
    && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
{
	attack_end();
	sound_stop(current_effect_sound);
	if (!was_parried) {
		if (!free) {
			set_state(PS_CROUCH);
			state_timer = 4;
		} else {
			window = 8;
			window_timer = 0;
		}
	}
}
*/

if ((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR)) {
	if (attack == 49) { // Final Smash
		// Hurtbox doesn't seem to update itself properly, so set it here
		hurtboxID.sprite_index = final_smash_hurtbox_spr;
	}
	
	if ((attack == AT_NSPECIAL)
	    || (attack == AT_NTHROW)
	    || (attack == AT_FTHROW)
	    || (attack == AT_UTHROW)
	    || (attack == AT_DTHROW))
	{
	
	    holding_someone = false;
	    // Try to make sure nobody else can grab who we're holding
	    var current_window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	    with (oPlayer) {
	        if (RETROBLAST_HOLDER_ID == other.id) {
	        //if (RETROBLAST_HOLDER_ID != noone) {
	        //if (RETROBLAST_HOLDER_ID == other.player_id) {
	        //if (id != other.id) {
	            other.holding_someone = true;
	            // Some characters will respect the grabbed player's super armor and fail their grab and let us finish ours
	            //super_armor = true;
	            // Prevent the opponent from acting
	            //state = PS_HITSTUN;
	            set_state(PS_HITSTUN);
	            // Not sure what the difference between this and setting state to hitpause is
	            hitpause = true;
	            // This is how many frames to stay in hitpause. Refresh it to 2 every cycle of this move
	            hitstop = 2;
	            // Prevent people from dodging the hitbox of the throw
	            //can_shield = false;
	            //white_flash_timer = 0;
	            // Hold 'em still
	            //hsp = -0.5 * other.spr_dir;
	            //vsp = -0.5;
	            // Bump them away gently if we fumble
	            //old_hsp = -0.5 * other.spr_dir;
	            //old_vsp = -0.5;
	            
	            // Determine the offset needed to appear where the holder is holding this player
	            var grab_x_offset = x;
	            var grab_y_offset = y;
	            
	            switch (other.attack) {
	                case AT_NSPECIAL :
	                    spr_dir = -other.spr_dir;
	                    switch (other.window) {
	                        case 3 :
	                        	grab_x_offset = other.x + (54 * other.spr_dir);
	                        	grab_y_offset = other.y - 32;
	                            break;
	                        case 4 :
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 34;
	                            break;
	                        case 6 :
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 34;
	                            break;
	                        default :
	                            break;
	                    }
	                    break;
	                case AT_NTHROW :
	                    switch (other.window) {
	                        case 1 :
	                            spr_dir = other.spr_dir;
	                            if (other.window_timer < (current_window_length / 3)) {
	                                grab_x_offset = other.x - (46 * other.spr_dir);
	                                grab_y_offset = other.y - 32;
	                            } else if (other.window_timer < ((2 * current_window_length) / 3)) {
	                                grab_x_offset = other.x - (44 * other.spr_dir);
	                                grab_y_offset = other.y - 28;
	                            } else {
	                                grab_x_offset = other.x - (28 * other.spr_dir);
	                                grab_y_offset = other.y - 24;
	                            }
	                            break;
	                        case 2 :
	                            spr_dir = -other.spr_dir;
	                            if (other.window_timer < (current_window_length / 2)) {
	                                grab_x_offset = other.x + (90 * other.spr_dir);
	                                grab_y_offset = other.y - 28;
	                            }
	                            break;
	                        default :
	                            break;
	                    }
	                    break;
	                
	                case AT_FTHROW :
	                    spr_dir = -other.spr_dir;
	                    switch (other.window) {
	                        case 1 :
	                        	grab_x_offset = other.x + (26 * other.spr_dir);
	                        	grab_y_offset = other.y - 56;
	                            break;
	                        case 2 :
	                            grab_x_offset = other.x - (56 * other.spr_dir);
	                            grab_y_offset = other.y - 80;
	                            break;
	                        case 3 :
	                            grab_x_offset = other.x - (60 * other.spr_dir);
	                            grab_y_offset = other.y - 74;
	                            break;
	                        case 4 :
	                            grab_x_offset = other.x - (42 * other.spr_dir);
	                            grab_y_offset = other.y - 96;
	                            break;
	                        case 5 :
	                        	if (other.window_timer == 0) {
	                            grab_x_offset = other.x + (54 * other.spr_dir);
	                            grab_y_offset = other.y - 92;
	                        	}
	                            break;
	                        default :
	                            break;
	                    }
	                    break;
	                    
	                case AT_UTHROW :
	                    spr_dir = -other.spr_dir;
	                    switch (other.window) {
	                        case 1 :
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 44;
	                            break;
	                        case 2 :
	                            grab_x_offset = other.x + (40 * other.spr_dir);
	                            grab_y_offset = other.y - 54;
	                            break;
	                        default :
	                            break;
	                    }
	                    break;
	                
	                case AT_DTHROW :
	                	// I think trying to use get_window_value here accesses
	                	// the window belonging to the grabbed target, so I'll
	                	// need to be clever if I want to do that some other way.
	                	//var current_window_length = get_window_value(other.attack, other.window, AG_WINDOW_LENGTH);
	                    spr_dir = -other.spr_dir;
	                    switch (other.window) {
	                        case 1 :
	                			if (other.window_timer < (current_window_length / 2)) {
		                            grab_x_offset = other.x + (46 * other.spr_dir);
		                            grab_y_offset = other.y - 26;
	                            } else {
		                            grab_x_offset = other.x + (46 * other.spr_dir);
		                            grab_y_offset = other.y - 20;
	                            }
	                            break;
	                        case 2 :
	                			grab_x_offset = other.x + (46 * other.spr_dir);
	                        	grab_y_offset = other.y - 18;
	                            break;
	                        case 3 :
	                            grab_x_offset = other.x + (44 * other.spr_dir);
	                            grab_y_offset = other.y - 68;
	                            break;
	                        case 4 :
	                            grab_x_offset = other.x + (-10 * other.spr_dir);
	                            grab_y_offset = other.y - 100;
	                            break;
	                        case 5 :
	                        	grab_x_offset = other.x + (46 * other.spr_dir);
		                        grab_y_offset = other.y - 26;
	                            break;
	                        default :
	                            break;
	                    }
	                    break;
	                default :
	                    break;
	            }
	            
	            x = grab_x_offset;
	            y = grab_y_offset;
	        }
	    }
	} else if (attack == AT_DSPECIAL) {
		if ((window == 3)
			&& (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)))
		{
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
			spawn_hit_fx(x - (3 * spr_dir), y - 20, 302);
		} else if (window == 5) {
			if (armor_available) {
				hsp = spr_dir * 14;
			} else {
				hsp = spr_dir * 10.5;
			}
		}
	}
}

/*
if ((afterimage_countdown_prev != 0)
	&& (afterimage_countdown == 0))
{
	if (abs(hsp) > air_max_speed) {
		//sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
		hsp = ((hsp + (spr_dir * air_max_speed)) / 2) * fspecial_damping;
	}
}
*/

// Function to spawn built-in dust effects, courtesy of SupersonicNK
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