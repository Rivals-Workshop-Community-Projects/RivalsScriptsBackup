//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL) {
    // If the joke is ready, fire
    if (window == 1) {
        if (joke_primed) {
            window = 3;
            window_timer = 0;
            joke_primed = false;
            joke_progress = 0;
        }
    } else if (window == 2) {
        // This is the window where the charging happens
        if (joke_progress < joke_limit) {
            joke_progress++;
            // If we don't reset this variable, the charging was interrupted.
            joke_interrupted = true;
            // Set milestones for state
            if (joke_progress >= joke_limit) {
                joke_reached_full = true;
                joke_reached_half = true;
            } else if (joke_progress > (joke_limit / 2)) {
                joke_reached_full = false;
                joke_reached_half = true;
            } else {
                joke_reached_full = false;
                joke_reached_half = false;
            }
        } else {
            joke_primed = true;
            window = 6;
            window_timer = 0;
        }
        
        // Allow parry, dodge roll, or special button to cancel charging
        // Cancelling keeps current charge
        if (special_pressed) {
            // Fire at current charge level
            window = 3;
            window_timer = 0;
            joke_primed = false;
            joke_progress = 0;
            joke_interrupted = false;
        } else if (free) {
            if (shield_pressed) {
                window = 0;
                window_timer = 0;
                joke_interrupted = false;
                set_state(PS_AIR_DODGE);
            }
        } else if (!free) {
            if (shield_pressed) {
                window = 0;
                window_timer = 0;
                joke_interrupted = false;
                set_state(PS_PARRY_START);
            } else if (right_pressed) {
                window = 0;
                window_timer = 0;
                joke_interrupted = false;
                // if facing right
                if (spr_dir > 0) {
                    set_state(PS_ROLL_FORWARD);
                } else {
                    set_state(PS_ROLL_BACKWARD);
                }
            } else if (left_pressed) {
                window = 0;
                window_timer = 0;
                joke_interrupted = false;
                // if facing left
                if (spr_dir < 0) {
                    set_state(PS_ROLL_FORWARD);
                } else {
                    set_state(PS_ROLL_BACKWARD);
                }
            }
        }
    } else if ((window == 3) && (window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH))) {
        // Choose which hitbox to deploy
        if (joke_reached_full) {
            // USe strongest hitbox (3)
            create_hitbox(AT_NSPECIAL, 3, x, y);
        } else if (joke_reached_half) {
            // Use medium hitbox (2)
            create_hitbox(AT_NSPECIAL, 2, x, y);
        } else {
            // Use weakest hitbox (1)
            create_hitbox(AT_NSPECIAL, 1, x, y);
        }
    }
}

if (attack == AT_FSPECIAL) {
    if (window == 2) {
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) {
            // Decide which direction to throw
            if (up_down) {
                window = 5;
                window_timer = 0;
            } else if (down_down) {
                window = 6;
                window_timer = 0;
            } else {
                window = 4;
            window_timer = 0;
            }
        }
    } else if (window == 3) {
        if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH))
            && (special_down))
        {
            window = 1;
            window_timer = 0;
        }
    } else if (window == 4) {
        if (window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)) {
            window = 3;
            window_timer = 0;
        }
    } else if (window == 5) {
        if (window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)) {
            window = 3;
            window_timer = 0;
        }
    } else if (window == 6) {
        if (window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH)) {
            window = 3;
            window_timer = 0;
        }
    }
}

if (attack == AT_USPECIAL) {
    can_fast_fall = false;
    
    if (window == 1 && window_timer == 1) {
        times_through = 0;
    }
    
    if (window == 2) {
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            times_through++;
            if (times_through < max_hat_spins){
                window_timer = 0;
            }
        }
        if (!joy_pad_idle) {
            hsp += lengthdir_x(0.1, joy_dir);
            vsp += lengthdir_y(0.15, joy_dir);
        } else {
            hsp *= .95;
            vsp *= .9;
            vsp += 0.05;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 8;
        if (fly_dist > max_speed) {
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (shield_pressed) {
            window = 3;
            window_timer = 0;
            vsp = 0;
        }
    }
    
    if ((window == 3) && (window_timer == 1)) {
        vsp *= .85;
        vsp += 0.1;
    }
    
    if ((window == 2) && (!free)) {
        window = 4;
        window_timer = 0;
    }
}

if (attack == AT_DSPECIAL){
    // Delete others if they exist
    if ((window == 6) && (window_timer == 1)) {
        with (asset_get("obj_article1")) {
            if (player_id == other.id) {
                // Begin the disappear sequence
                close_zone = true;
            }
        }
    }
    
    if ((window == 2) && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH))) {
        var comedy_zone = instance_create(x + (spr_dir * 25), y - 20, "obj_article1");
        comedy_zone.player_id = id;
        comedy_zone.player = player;
        comedy_zone.spr_dir = spr_dir;
        comedy_zone.emoji_color = emoji_color;
    } else if ((window == 5) && (window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH))) {
        window = 6;
        window_timer = 0;
    } else if ((window == 6) && (window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH))) {
        window = 7;
        window_timer = 0;
    }
    
    //move_cooldown[AT_DSPECIAL] = 45;
}

if (attack == AT_FSTRONG) {
    // If the first swing is complete, do a thumbs-up on button press
    // Queue up the press to make it easier to execute
    if (window > 1) {
        thumbsup_queued = thumbsup_queued ||  (left_strong_pressed || right_strong_pressed);
    } else {
        thumbsup_queued = false;
    }
    if (thumbsup_queued && (window == 5) && (window_timer > 2)) {
        window = 7;
        window_timer = 0;
    }
    
    // Manually walk through the thumbs-up windows
    if ((window == 7) && (window_timer == 8)) {
        window = 8;
        window_timer = 0;
    } else if ((window == 8) && (window_timer == 15)) {
        window = 9;
        window_timer = 0;
    } else if ((window == 9) && (window_timer == 8)) {
        window = 10;
        window_timer = 0;
    }
} else {
    thumbsup_queued = false;
}

if (attack == AT_JAB){
    var jab_num = 1 + floor((window - 1) / 3);
    
    // Allow jump-cancelling jab
    if (((window % 3) == 1) && (window > 2)) {
        can_jump = true;
    }
    
    // Random haha sound for each jab
    if (((window % 3) == 2)
        && (window < ((num_jabs * 3) + 2))
        && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
    {
        if (jab_num < num_jabs) {
            noise_choice = random_func(0, 3, true);
            switch (noise_choice) {
                case 0 :
                    sound_play( sound_get("hee") );
                    break;
                case 1 :
                    sound_play( sound_get("heh") );
                    break;
                case 2 :
                    sound_play( sound_get("hoo") );
                    break;
                default :
                    sound_play( sound_get("hah") );
                    break;
            }
        } else if (jab_num == num_jabs) {
            sound_play( sound_get("ech") );
        }
    }
}

// Play smack sound in ftilt - only need this because we can't play two sounds per window
if (attack == AT_FTILT){
    if ((window == 2) && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH))) {
        sound_play( asset_get("sfx_blow_medium3") );
    }
}


// CHAIN THE FLOSSING TAUNT
// Make it so tapping taunt while the taunt is ongoing will queue up
// another one.  It'll keep going as long as you mash or hold it down.
// What have I done - infinite flossing?!  This is not going to end well.
if (attack == AT_TAUNT) {
    if (window_timer == 4) {
        floss_queued = false;
    } else if (taunt_down) {
        floss_queued = true;
    }
    if (floss_queued && (window == 1) && (window_timer == floss_duration)) {
        window = 2;
        window_timer = 0;
    } else if (floss_queued && (window == 2) && (window_timer == floss_duration)) {
        window = 3;
        window_timer = 0;
    } else if (floss_queued && (window == 3) && (window_timer == floss_duration)) {
        window = 4;
        window_timer = 0;
    } else if (floss_queued && (window == 4) && (window_timer == floss_duration)) {
        window = 5;
        window_timer = 0;
    } else if (floss_queued && (window == 5) && (window_timer == floss_duration)) {
        window = 6;
        window_timer = 0;
    } else if (floss_queued && (window == 6) && (window_timer == floss_duration)) {
        window = 1;
        window_timer = 0;
    }
}