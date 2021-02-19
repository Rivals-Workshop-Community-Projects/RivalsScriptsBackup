//article1_update

// Rune Buddy length
if (player_id.runeE) {
    window_length[1] = 42069;
} else {
	window_length[1] = orig_window_length;
}

// Rune Buddy vapour hitbox
if (player_id.runeN) {
	if (get_gameplay_time() % 9 == 0) {
	    var rune_x = x;
	    var rune_y = y - sprite_get_height(sprite_index)/4;
	    with (oPlayer) if ("id" in self && id == other.player_id) {
		    create_hitbox(AT_NSPECIAL, 3, round(rune_x), round(rune_y));
	    }
	}
}

if (djumped) {
	visible = false;
} else {
	visible = true;
}

// Increment total lifetime and window timer
lifetime++;
window_timer++;

// Assure they all have the same hitbox
mask_index = sprite_get("vapour2_hurt");

// Make it die in Clairen plasma field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && !destroyed) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x), floor(y), 256);
    destroyed = true;
}

// Checking vapour sprite
if (!destroyed) {
    if (vapour_sprite == sprite_get("vapour_hurt")) {
        player_id.vapour1_exists = true; 
        vapour_num = 1;
    } else if (vapour_sprite == sprite_get("vapour2_hurt")) {
        player_id.vapour2_exists = true; 
        vapour_num = 2;
    } else if (vapour_sprite == sprite_get("vapour3_hurt")) {
        player_id.vapour3_exists = true; 
        vapour_num = 3;
    } else if (vapour_sprite == sprite_get("vapour4_hurt")) {
    	player_id.vapour4_exists = true; 
        vapour_num = 4;
    } else {
        // Set it to -1 for error catching
        vapour_num = -1;
        print_debug("how did you even get this");
    }
}

// Infinite steam behaviour
with (oPlayer) if ("is_stinky_monke" in self && !inf_steam_override) {
    if (place_meeting(x, y, other)) {
        // If hodan is inside the vapour
        // Set the infinite steam to the current time.
        // This is so the update script can check if the current gameplay time
        // and the one set here are the same. If they aren't, the vapour
        // is obviously not setting it to infinite steam anymore.
        inf_steam_checker = get_gameplay_time();
        inf_steam_source = other;
    }
}

with (pHitBox) if ("player_id" in self && player_id == other.player_id && (attack == AT_NSPECIAL || attack == AT_FSPECIAL) && hbox_num == 1 && other.touched != self && other.touched != player_id && !was_parried) {
    if (place_meeting(x, y, other)) {
        // If sweatwhirl hits the vapour
        with (oPlayer) if ("is_stinky_monke" in self) {
            // Inits sounds
            var steam1 = sound_get("sfx_stinky_steam1");
            var steam2 = sound_get("sfx_stinky_steam2");
        }
        // Detects the level and does various effects depending on it
        if (player_id.sweatwhirl_level == 1) {
            sound_play(steam1);
        } else if (player_id.sweatwhirl_level == 2) {
            sound_play(steam2);
        }
        // Increase the level, and show that this can't be touched again
        if (player_id.sweatwhirl_level < 3) {
            spawn_hit_fx(round(other.x), round(y + vsp), 6); // Water splash in the center of the vapour
            player_id.sweatwhirl_level++;
            other.destroyed = true; // Consumes the vapour
            if (hitbox_timer < player_id.sweatwhirl_startup_frames && attack == AT_FSPECIAL) {
                hitbox_timer = player_id.sweatwhirl_startup_frames; // Push it to the attack part
            }
        }
        other.touched = self;
    }
}

with (oPlayer) if ("id" in self && id == other.player_id && sweatwhirl_grabbed && other.touched != self && other.touched != last_nspecial_id) {
    if (place_meeting(x, y, other)) {
        // If sweatwhirl hits the vapour
        var steam1 = sound_get("sfx_stinky_steam1");
        var steam2 = sound_get("sfx_stinky_steam2");
        // Detects the level and does various effects depending on it
        if (sweatwhirl_level == 1) {
            sound_play(steam1);
        } else if (sweatwhirl_level == 2) {
            sound_play(steam2);
        }
        // Increase the level, and show that this can't be touched again
        if (sweatwhirl_level < 3) {
            spawn_hit_fx(round(other.x), round(y + vsp), 6); // Water splash in the center of the vapour
            sweatwhirl_level++;
            other.destroyed = true; // Consumes the vapour
        }
        other.touched = self;
    }
}

// Set the destroyed variable to be true if at the final window
if (window == 2) {
    destroyed = true;
}

if (!vapour4) {
	// Check if it's the longest lifetime
	if (lifetime > player_id.longest_vapour_lifetime && !reset_lifetime) {
	    player_id.longest_vapour_lifetime = lifetime;
	    player_id.oldest_sprite_index = sprite_index;
	}
	
	// Delete itself if there's too many vapours and it's the oldest
	if (player_id.current_vapours > player_id.max_vapours && lifetime == player_id.longest_vapour_lifetime && !destroyed) {
	    destroyed = true;
	    if (!deincremented_vapours) {
	        // Doubles as a failsafe incase they were already deincremented somehow,
	        // and also says they're already deincremented to not double up when
	        // this is checked again later
	        switch (vapour_num) {
	            case 1: player_id.vapour1_exists = false; break;
	            case 2: player_id.vapour2_exists = false; break;
	            case 3: player_id.vapour3_exists = false; break;
	        }
	        player_id.current_vapours--;
	        deincremented_vapours = true;
	    }
	}
	
	if (destroyed && lifetime == player_id.longest_vapour_lifetime && !reset_lifetime) {
	    // Give it to the next longest if destroyed, make sure it's not 0, i.e., just destroyed
	    player_id.longest_vapour_lifetime = 0;
	    reset_lifetime = true;
	}
} else {
	if (lifetime > player_id.longest_vapour4_lifetime && !reset_lifetime) {
		player_id.longest_vapour4_lifetime = lifetime;
	}
	
	if (player_id.vapour4_count > 1 && lifetime == player_id.longest_vapour4_lifetime && !destroyed) {
		destroyed = true;
		if (!deincremented_vapours) {
			// failsafe, see above
			player_id.vapour4_count--;
			deincremented_vapours = true;
		}
	}
	
	if (destroyed && lifetime == player_id.longest_vapour4_lifetime && !reset_lifetime) {
		player_id.longest_vapour4_lifetime = 0;
		reset_lifetime = true;
	}
}

if (window != 1) {
    // Endlag or startup
    image_index += window_anim_frames[window]/window_length[window];
} else {
    // Loops the image index by progressively animating it, and restarting it to the
    // beginning if it's about to move over to the next window's frames
    if (image_index < (window_start_frames[window + 1] - vapour_anim_speed)) {
        image_index += vapour_anim_speed;
    } else {
        image_index = window_start_frames[window];
    }
}

// Make the destroyed variable push you to the final window if you're not already there
if (destroyed && window != 2) {
    window = 2;
    window_timer = 0;
    image_index = window_start_frames[window];
}


// Lower the list of how many active vapours exist when it's destroyed
if (!vapour4) {
	if (destroyed && !deincremented_vapours) {
	    switch (vapour_num) {
	        case 1: player_id.vapour1_exists = false; break;
	        case 2: player_id.vapour2_exists = false; break;
	        case 3: player_id.vapour3_exists = false; break;
	    }
	    player_id.current_vapours--;
	    deincremented_vapours = true;
	}
} else {
	if (destroyed && !deincremented_vapours) {
		player_id.vapour4_count--;
		if (player_id.vapour4_count <= 0) {
			player_id.vapour4_exists = false;
		}
		deincremented_vapours = true;
	}
}

if (window_timer == window_length[window]) {
    // Advance to the next window if the current one is done
    if (window < 2) {
        window++;
        window_timer = 0;
        image_index = window_start_frames[window];
    } else {
        // Delete it if in the final window
        instance_destroy();
    }
}