
#macro AT_CRAWLTURN 49 // update also in attack_update.gml, animation.gml

if state == PS_IDLE_AIR && djumps == 1 && prev_state == PS_DOUBLE_JUMP image_index = image_number-1;
if state == PS_IDLE_AIR && prev_state == PS_AIR_DODGE image_index = image_number-1;
if state == PS_IDLE_AIR && prev_state == PS_ATTACK_AIR && attack == AT_USPECIAL image_index = image_number-1;
if state == PS_IDLE_AIR && prev_state == PS_ATTACK_AIR && attack == AT_DSPECIAL_AIR image_index = image_number-1;
if state == PS_IDLE_AIR && prev_state == PS_ATTACK_AIR && attack == AT_FSPECIAL image_index = image_number-1;
if state == PS_IDLE_AIR && prev_state == PS_ATTACK_AIR && attack == AT_NSPECIAL image_index = image_number-1;

if state == PS_CROUCH && prev_state == PS_ATTACK_GROUND && attack == AT_TAUNT_2 image_index = 3
custom_crouch() // run the custom crouch code



if (state == PS_RESPAWN) {
	sprite_index = sprite_get("idle_plat");
	image_index = state_timer / 5;
}

// Crawl
if (state == PS_CROUCH && ccrouch_phase == 1) {
	
	hurtboxID.sprite_index = crouchbox_spr; // averts issue with last crawlturn frame
	
	if (spr_dir == 1) {
		if (left_down) {
			spr_dir *= -1;
			set_state(PS_ATTACK_GROUND);
			set_attack(AT_CRAWLTURN);
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			hsp = clamp(hsp-crawl_accel-ground_friction, crawl_speed*-1, hsp);
			sprite_index = sprite_get("crawlturn");
			image_index = 0;
		}
		if (right_down) {
			sprite_index = sprite_get("crawl");
			image_index = (get_gameplay_time()/8)%4;
			hsp = clamp(hsp+crawl_accel+ground_friction, hsp, crawl_speed);
		}
		else {
			custom_crouch();
		}
	}
	
	else if (spr_dir == -1) {
		if (right_down) {
			spr_dir *= -1;
			set_state(PS_ATTACK_GROUND);
			set_attack(AT_CRAWLTURN);
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			hsp = clamp(hsp+crawl_accel+ground_friction, hsp, crawl_speed);
			sprite_index = sprite_get("crawlturn");
			image_index = 0;
		}
		if (left_down) {
			sprite_index = sprite_get("crawl");
			image_index = (get_gameplay_time()/8)%4;
			hsp = clamp(hsp-crawl_accel-ground_friction, crawl_speed*-1, hsp);
		}
		else {
			custom_crouch();
		}
	}
	
} else custom_crouch();



// FSpecial
if (attack == AT_FSPECIAL && window == 5 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	
	sprite_index = sprite_get(parachute_active ? "fspec_swing_strap" : "fspec_swing");
	
	if (!free) image_index = 1; // slide
	
	else {
		var vis_angle = point_direction(x, y + gh_y_origin, gh_x, gh_y);
		if (spr_dir == -1) vis_angle = (vis_angle * -1 + 180) % 360;
		if (vis_angle < 0) vis_angle += 360;
		
		if (345 < vis_angle || vis_angle < 10) image_index = 0;
		else if (vis_angle < 70) image_index = 2;
		else if (vis_angle < 115) image_index = 3;
		else image_index = 4;
	}
	
	hurtboxID.sprite_index = sprite_get("fspec_swing_hurt");
	hurtboxID.image_index = image_index;
	
}



// USpecial parachute
if (parachute_active) {
	
	var _s = null;
	
	for (var i = 0; i < array_length(strap_anim_list); i++) {
		if (sprite_index == sprite_get(strap_anim_list[i])) {
			_s = strap_anim_list[i];
		}
	}
	
	if (_s != null) {
	    _s = _s + "_strap";
	    sprite_index = sprite_get(_s);
	}
	
}





// Defines always go at the bottom of the file.
#define custom_crouch()
// Crouch Animation Start/End Customization by @SupersonicNK
if state == PS_CROUCH {
	crouch_spr = sprite_get("crouch");
	if !ccrouch_playing {
		ccrouch_playing = true;
		ccrouch_phase = 0;
		ccrouch_timer = 0;
		ccrouch_percent = 0;
	}
} else if state == clamp(state, 5, 6) { // Attacking
	switch (attack) {
		case AT_DTILT:
        case AT_TAUNT_2:
        case AT_CRAWLTURN:
			if down_down {
				ccrouch_playing = true;
				ccrouch_phase = 1;
				ccrouch_timer = 0;
			} else {
				ccrouch_playing = false;
			}
			return; // prevent the actual animation logic from running, but this ensures you'll enter crouch anim after dtilt.
		default:
			ccrouch_playing = false;
			ccrouch_phase = 0;
			ccrouch_timer = 0;
			ccrouch_percent = 0;
			break;
	}
} else if state != PS_IDLE {
	ccrouch_playing = false;
}

if ccrouch_playing {
	var duration
	switch (ccrouch_phase) {
		case 0: 
			duration = crouch_start_time;
			ccrouch_percent = clamp(ccrouch_timer/duration,0,1)
			image_index = lerp(0,crouch_startup_frames,ccrouch_percent)
			if ccrouch_percent == 1 { // to loop
				ccrouch_phase = 1;
				ccrouch_timer = 0;
			}else if !down_down { // to uncrouch
				ccrouch_timer = floor(crouch_end_time * (1-ccrouch_percent));
				ccrouch_phase = 2;
			}
			break;
		case 1:
			image_index = crouch_startup_frames + ( (ccrouch_timer) * crouch_anim_speed % crouch_active_frames )
			if !down_down {
				ccrouch_timer = 0;
				ccrouch_phase = 2;
			}
			break;
		case 2: // uncrouch
			duration = crouch_end_time+1; // the + 1 is so the frame time is accurate due to how i stop it
			ccrouch_percent = clamp(ccrouch_timer/duration,0,1)
			if !down_down && ccrouch_percent == 1 { // finish crouching. interrupting it here 
				ccrouch_playing = false;
				break;
			}
			sprite_index = crouch_spr; // this is the only part of crouch that needs the sprite to be set to crouch lol
			var start = crouch_startup_frames+crouch_active_frames;
			image_index = lerp(start, start+crouch_recovery_frames, ccrouch_percent)
			if down_down { // recrouch
				ccrouch_timer = floor(crouch_start_time * (1-ccrouch_percent))
				ccrouch_phase = 0;
			}
			break;
	}
	ccrouch_timer++;
}

switch(state) {
    // grounded movement
    case PS_IDLE:
        
        break;
    case PS_CROUCH:
        
        break;
    case PS_WALK:
        
        break;
    case PS_WALK_TURN:
        
        break;
    case PS_DASH:
        
        break;
    case PS_DASH_START:
        
        break;
    case PS_DASH_TURN:
        
        break;
    case PS_DASH_STOP:
        
        break;
    
    // jump + land
    case PS_JUMPSQUAT:
        
        break;
    case PS_LAND:
        
        break;
    case PS_LANDING_LAG:
        
        break;
    case PS_WAVELAND:
        
        break;
    case PS_PRATLAND:
        
        break;
    
    // air movement
    case PS_FIRST_JUMP:
        // idle air loop
        if (idle_air_loops) {
            if (image_index == jump_frames && !idle_air_looping) {
                idle_air_looping = true;
            }
            if (idle_air_looping) {
                sprite_index = sprite_get("jumploop");
                image_index = state_timer * idle_air_loop_speed;
            }
        }
        break;
    case PS_IDLE_AIR:
        // Animation for when dropping from a platform
        if (idle_air_platfalls && !idle_air_looping) {
            if (state_timer == 1 && prev_state == PS_CROUCH && ground_type == 2) {
                idle_air_platfalling = true;
            }
            if (state_timer * idle_air_platfall_speed >= idle_air_platfall_frames) {
                idle_air_platfalling = false;
            }
            
            if (idle_air_platfalling) {
                sprite_index = sprite_get("platfall");
                image_index = state_timer * idle_air_platfall_speed;
            }
            
        }
        // idle air loop
        if (idle_air_loops && !idle_air_platfalling) {
            if (image_index == jump_frames && !idle_air_looping) {
                idle_air_looping = true;
            }
            if (idle_air_looping) {
                sprite_index = sprite_get("jumploop");
                image_index = state_timer * idle_air_loop_speed;
            }
        }
        
        //if neither, make sure it's jump
        //if (!idle_air_looping && !idle_air_platfalling) {
        //    sprite_index = sprite_get("jump");
        //}
        break;
    case PS_DOUBLE_JUMP:
        
        break;
    case PS_WALL_JUMP:
        
        break;
    case PS_PRATFALL:
        
        break;
    
    // shield actions
    case PS_PARRY:
        
        break;
    case PS_PARRY_START:
        
        break;
    case PS_ROLL_FORWARD:
        
        break;
    case PS_ROLL_BACKWARD:
        
        break;
    
    // attacks
    case PS_ATTACK_GROUND:
        // loop strong charge window, if the loop is set
        if (window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) && get_window_value(attack,window,AG_WINDOW_HAS_CHARGE_LOOP) && strong_charge > 0) {
            image_index = get_window_value(attack,window,AG_WINDOW_CHARGE_FRAME_START) + (round(strong_charge * get_window_value(attack,window,AG_WINDOW_CHARGE_LOOP_SPEED)) mod get_window_value(attack,window,AG_WINDOW_CHARGE_FRAMES));
        }
        break;
    case PS_ATTACK_AIR:
        if (window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) && get_window_value(attack,window,AG_WINDOW_HAS_CHARGE_LOOP) && strong_charge > 0) {
            image_index = get_window_value(attack,window,AG_WINDOW_CHARGE_FRAME_START) + (round(strong_charge * get_window_value(attack,window,AG_WINDOW_CHARGE_LOOP_SPEED)) mod get_window_value(attack,window,AG_WINDOW_CHARGE_FRAMES));
        }
        break;
}