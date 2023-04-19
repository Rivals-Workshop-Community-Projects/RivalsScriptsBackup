switch state {
    case PS_PRATLAND:
	    sprite_index = sprite_get("pratland");
	break;
    case PS_CROUCH:
	    if !((image_index == 0 || image_index >= 5) || object_index = oTestPlayer ) {
	        hud_offset = lerp(hud_offset, -100, 0.4);
		}
	break;
	case PS_PARRY:
	    hurtboxID.sprite_index = sprite_get("parry_hurtbox");
	break;
    
	case PS_SPAWN:
	    if (introTimer < 15 && introTimer >= 0) {
            sprite_index = sprite_get("intro");
            image_index = introTimer;
        } else if (introTimer < 0) {
            sprite_index = sprite_get("intro");
            image_index = 0;
        } else {
            sprite_index = sprite_get("idle");
        }
	break;
	
	case PS_IDLE:
	    if prev_state == PS_ATTACK_GROUND && attack == AT_DTILT && state_timer < 3 {
            sprite_index = sprite_get("crouch");
            image_index = 0;
        } else if state == PS_IDLE && prev_state == PS_WALK && state_timer < 4 {
            sprite_index = sprite_get("walkstop");
		}
	break;
	
	case PS_WALK:
	    if prev_state == PS_IDLE && state_timer < 6 {
    		sprite_index = sprite_get("walkstart");
		}
	break;
	
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	    switch attack {
		    case AT_DTILT:
			    hud_offset = lerp(hud_offset, -100, 0.4);
			break;
			case AT_UTILT:
			    if window > 1 && !(window == 3) {
		            hud_offset = lerp(hud_offset, 80, 0.5);
				}
			break;
			case AT_UAIR:
			    if window > 1 && !(window == 6 && window_timer > 4) {
			        hud_offset = lerp(hud_offset, 170, 0.5);
				}
			break;
			case AT_DSTRONG:
			    if smash_charging {
				    image_index = 6 + (strong_charge/2 % 2);
			    } else if window > 2 && !(window == 5 && window_timer > 7) {
	                hud_offset = lerp(hud_offset, 90, 0.5);
		        }
			break;
		}
	break;
}
		

if (state_cat == SC_HITSTUN){
	image_index = state_timer/2;
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1
	hud_offset = 0;

// While crouching, use different sprites for crawling
// You shouldn't have to change any of this if you want a brawl-style crawl animation
if (state == PS_CROUCH) {
	off_edge = false;

	// Track if we've completed the animation to get
	// into the actual crouch and may begin crawling.
	if (crouch_time < crouch_time_before_crawl) {
		crouch_time++;
		if (crouch_time >= crouch_time_before_crawl) {
			crawl_allowed = true;
		}
	}

	// Actual movement doesn't depend on crawl_allowed so we can
	// start moving even before the animation finishes. Without
	// this, movement feels much more rigid.
	if (left_down) {
		hsp -= crawl_accel;
		// Applies more oomph when slower,
		// noticeable with high crawl speed limits.
		if (abs(hsp) < crawl_speed) {
			hsp -= (crawl_speed - abs(hsp)) * 0.05;
		} else {
			hsp = -crawl_speed;
		}
	} else if (right_down) {
		hsp += crawl_accel;
		// Applies more oomph when slower,
		// noticeable with high crawl speed limits.
		if (abs(hsp) < crawl_speed) {
			hsp += (crawl_speed - abs(hsp)) * 0.05;
		} else {
			hsp = crawl_speed;
		}
	}
	
	if (crawl_allowed) {
		if ((spr_dir > 0) && right_down)
			|| ((spr_dir < 0) && left_down)
		{ // Moving forward
			if (!crawl_forward_prev) { // Starting crawl
				crouch_anim_timer = 0;
				crouch_anim_done = false;
				sprite_index = crawl_forward_start_sprite;
				crouch_current_time_per_image = crawl_forward_start_time_per_image;
				crawl_anim_timer_max = crawl_forward_start_anim_timer_max;
			} else { // Actively crawling
				if (crouch_anim_done) {
					crouch_anim_timer = 0;
					crouch_anim_done = false;
					sprite_index = crawl_forward_active_sprite;
					crouch_current_time_per_image = crawl_forward_active_time_per_image;
					crawl_anim_timer_max = crawl_forward_active_anim_timer_max;
				} else {
					sprite_index = crouch_sprite_index_prev;
				}
			}
			image_index = floor(crouch_anim_timer / crouch_current_time_per_image);
			crawl_forward_prev = true;
			crawl_backward_prev = false;
		} else if ((spr_dir < 0) && right_down)
			|| ((spr_dir > 0) && left_down)
		{ // Moving backward
			if (!crawl_backward_prev) { // Starting crawl
				crouch_anim_timer = 0;
				crouch_anim_done = false;
				sprite_index = crawl_backward_start_sprite;
				crouch_current_time_per_image = crawl_backward_start_time_per_image;
				crawl_anim_timer_max = crawl_backward_start_anim_timer_max;
			} else { // Actively crawling
				if (crouch_anim_done) {
					crouch_anim_timer = 0;
					crouch_anim_done = false;
					sprite_index = crawl_backward_active_sprite;
					crouch_current_time_per_image = crawl_backward_active_time_per_image;
					crawl_anim_timer_max = crawl_backward_active_anim_timer_max;
				} else {
					sprite_index = crouch_sprite_index_prev;
				}
			}
			image_index = floor(crouch_anim_timer / crouch_current_time_per_image);
			crawl_forward_prev = false;
			crawl_backward_prev = true;
		} else { // No input either way
			if (crawl_forward_prev) {
	    		crouch_anim_timer = 0;
	    		crouch_anim_done = false;
				sprite_index = crawl_forward_stop_sprite;
				crouch_current_time_per_image = crawl_forward_stop_time_per_image;
				crawl_anim_timer_max = crawl_forward_stop_anim_timer_max;
				image_index = floor(crouch_anim_timer / crouch_current_time_per_image);
			} else if (crawl_backward_prev) {
				crouch_anim_timer = 0;
	    		crouch_anim_done = false;
				sprite_index = crawl_backward_stop_sprite;
				crouch_current_time_per_image = crawl_backward_stop_time_per_image;
				crawl_anim_timer_max = crawl_backward_stop_anim_timer_max;
				image_index = floor(crouch_anim_timer / crouch_current_time_per_image);
			} else {
	    		// Conclude the previous animation, if applicable
	    		if (!crouch_anim_done) {
	    			sprite_index = crouch_sprite_index_prev;
					image_index = floor(crouch_anim_timer / crouch_current_time_per_image);
	    		}
			}
			crawl_forward_prev = false;
			crawl_backward_prev = false;
		}
	    crouch_anim_timer++;
	    if (crouch_anim_timer == crawl_anim_timer_max) {
	    	crouch_anim_done = true;
	    }
	    crouch_anim_timer %= crawl_anim_timer_max;
	} else {
	    crouch_anim_timer = 0;
		crawl_forward_prev = false;
		crawl_backward_prev = false;
	}
	crouch_sprite_index_prev = sprite_index;
} else {
	crouch_time = 0;
    crouch_anim_timer = 0;
	crawl_allowed = false;
	crawl_forward_prev = false;
	crawl_backward_prev = false;
}