//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL) {
    // Decrease overall momentum during this move
    var limit = 2;
    var ease_amount = 0.3;
    if (vsp > limit) {
        vsp -= ease_amount;
    } else if (abs(vsp) > limit) {
        vsp += ease_amount;
    }
    if (hsp > limit) {
        hsp -= ease_amount;
    } else if (abs(hsp) > limit) {
        hsp += ease_amount;
    }
    
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
            joke_reached_half = false;
            joke_reached_full = false;
            if (joke_progress > (joke_limit / 2)) {
                joke_reached_half = true;
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
        } else {
            joke_reached_full = true;
            joke_primed = true;
            window = 6;
            window_timer = 0;
        }
    } else if ((window == 3) && (window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH))) {
        // Choose which hitbox to deploy
        if (joke_reached_full) {
            // Use strongest hitbox (3)
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
    // Allow jump-cancel after throw
    if ((window == 3)
        || (window == 5)
        || (window == 7)
        || (window == 9))
    {
        can_jump = true;
    }
    
    // Decrease overall momentum while throwing
    var limit = 2;
    var ease_amount = 0.3;
    if (vsp > limit) {
        vsp -= ease_amount;
    } else if (abs(vsp) > limit) {
        vsp += ease_amount;
    }
    if (hsp > limit) {
        hsp -= ease_amount;
    } else if (abs(hsp) > limit) {
        hsp += ease_amount;
    }
    
    if (has_rune("G")) { // Rapid-fire emojis
        if (window == 2) {
            if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                // Decide which direction to throw, and slowly change the angle in that direction
                var curr_throw_angle = prev_throw_angle;
                if (up_down) {
                    if (prev_throw_angle < max_throw_increment) {
                        curr_throw_angle++;
                    } else if (prev_throw_angle == max_throw_increment) {
                        // if we hit the edge of the range, wobble back a little
                        curr_throw_angle--;
                    }
                } else if (down_down) {
                    if (abs(prev_throw_angle) < max_throw_increment) {
                        curr_throw_angle--;
                    } else if (abs(prev_throw_angle) == max_throw_increment) {
                        // if we hit the edge of the range, wobble back a little
                        curr_throw_angle++;
                    }
                } else {
                    if (prev_throw_angle > 0) {
                        curr_throw_angle--;
                    } else if (prev_throw_angle < 0) {
                        curr_throw_angle++;
                    }
                }
                if (curr_throw_angle == 0) {
                    window = 4; // neutral
                } else if (curr_throw_angle > 0) {
                    // windows alternate, starting with up, increasing angle
                    window = 5 + (2 * (curr_throw_angle - 1));
                } else {
                    window = 6 + (2 * (abs(curr_throw_angle) - 1));
                }
                window_timer = 0;
                prev_throw_angle = curr_throw_angle;
            }
        } else if (window == 3) {
            if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                if (special_down) {
                    window = 1;
                    window_timer = 0;
                    // Turn around if holding backwards
                    if (left_down) {
                        if (spr_dir == 1) {
                            spr_dir = -1;
                        }
                    } else if (right_down) {
                        if (spr_dir == -1) {
                            spr_dir = 1;
                        }
                    }
                } else {
                    prev_throw_angle = 0;
                }
            }
        } else if (window > 3) {
            if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                window = 3;
                window_timer = 0;
            }
        }
    } else { // Default throw
        if (window == 2) {
            if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                // Decide which direction to throw
                if (up_down) {
                    window = 6;
                    window_timer = 0;
                } else if (down_down) {
                    window = 8;
                    window_timer = 0;
                } else {
                    window = 4;
                window_timer = 0;
                }
            }
        } else if (window == 3) {
            if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
                && (special_down)
                && (num_emojis_active < max_num_emojis_active))
            {
                window = 1;
                window_timer = 0;
                // Turn around if holding backwards
                if (left_down) {
                    if (spr_dir == 1) {
                        spr_dir = -1;
                    }
                } else if (right_down) {
                    if (spr_dir == -1) {
                        spr_dir = 1;
                    }
                }
            }
        } else if ((window == 4) || (window == 6) || (window == 8)) {
            if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                window++;
                window_timer = 0;
            }
        } else if ((window == 5) || (window == 7) || (window == 9)) {
            if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                window = 3;
                window_timer = 0;
            }
        }
    }
}

if (attack == AT_USPECIAL) {
    can_fast_fall = false;
    can_wall_jump = true;
    
    if (window == 2) && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) {
        window = 5;
        window_timer = 0;
    }
    
    // Can be cancelled while hovering
    if (window >= 7) {
        can_fast_fall = true;
    }
    if (window == 7) {
        // End the hover if you touch the ground
        if (!free) {
            window = 9;
            window_timer = 0;
        }
        
        // End the hover if you cancel it manually with parry or fast fall
        if (shield_pressed || down_pressed) { // not ideal, fix before ship
            window = 8;
            window_timer = 0;
        }
    }
}

// Deploy the Comedy Zone!
if (attack == AT_DSPECIAL){
    if ((window == 2) && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH))) {
        var comedy_zone = instance_create(x + (spr_dir * 25), y - 20, "obj_article1");
        comedy_zone.player_id = id;
        comedy_zone.player = player;
        comedy_zone.spr_dir = spr_dir;
        comedy_zone.emoji_color = emoji_color;
        if (has_rune("L")) { // Double zone effectiveness
            comedy_zone.double_damage = true;
        }
    }
}

// Recall the zone with a whistle
if (attack == AT_DSPECIAL_2){
    // Delete any existing Comedy Zones that belong to this character
    if ((window == 2) && (window_timer == 1)) {
        with (asset_get("obj_article1")) {
            if (player_id == other.id) {
                // Begin the disappear sequence
                close_zone = true;
            }
        }
    }
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
if (attack == AT_FTILT) {
    if ((window == 2) && (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH))) {
        sound_play( asset_get("sfx_blow_medium3") );
    }
}

// Allow the player to jump-cancel dtilt after hitpause and only if it wasn't parried
if (attack == AT_DTILT) {
    if ((window == 1) && (window_timer == 1)) {
        // Reset before the hitboxes come out
        dtilt_jump_cancel_allowed = false;
    } else if (dtilt_jump_cancel_allowed
               && (!was_parried)
               && (!hitpause))
    {
        can_jump = true;
    }
}

if (attack == AT_DATTACK) {
    // Allow jump-cancel during getting-up animation
    if (window == 6) {
        can_jump = true;
    }
    
    // Allow player to stay down by holding attack button
    if ((window == 5) && (window_timer == 15)) {
        if (attack_down) {
            window_timer = 14;
        }
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