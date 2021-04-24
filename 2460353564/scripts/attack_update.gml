////////////////////////////////////////////////////////////////////////////////
//                              Dtilt Slide                                   //
////////////////////////////////////////////////////////////////////////////////

// can jump out of dtilt after hit or after startup + sweetspot windows are over
if (attack == AT_DTILT && (has_hit || window > 2) && !hitpause) {
    can_jump = true;
}

if (attack == AT_DTILT) {
    can_fast_fall = false;
}

// to avoid dtilting when touching the ground while mashing daggers, create a small window after landing where dtilt won't come out after dair
if (attack == AT_DAIR) {
    move_cooldown[AT_DTILT] = dtilt_landing_cooldown;
}

////////////////////////////////////////////////////////////////////////////////
//                              Ustrong Charge                                //
////////////////////////////////////////////////////////////////////////////////

// ustrong charge has a hitbox (think Corrin fsmash)
if (attack == AT_USTRONG) {
    if (window == 1) {
        // spawn the chainsaw
        if (cur_chainsaw == undefined) {
            sound_play(sound_get("s06_skill"));
            cur_chainsaw = instance_create(x+32*spr_dir, y-24, "obj_article1");
        } else {
            cur_chainsaw.x = x+32*spr_dir;
            cur_chainsaw.y = y-24;
        }

        // prevent charge from increasing during hitpause from charge hitboxes
        if (hitpause) {
            strong_charge--;
        }
        // if we're not in hitpause, check to see if we should spawn the hitbox (it's off cooldown and attack is still held)
        else if (window_timer == get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH) - 1 && ustrong_charge_hit_cooldown <= 0) {
            ustrong_charge_hit_cooldown = ustrong_charge_cooldown_after_hit;
            if (!was_parried) {
                create_hitbox(AT_USTRONG, 1, x, y);
            }
        }
    } else if (window == 2 && window_timer == 1 && cur_chainsaw != undefined){
        // release the chainsaw
        cur_chainsaw.released = true;
        cur_chainsaw.explosion_damage = (1 + 0.5 * (strong_charge/60)) * get_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE);
        cur_chainsaw.vsp = -13;
        cur_chainsaw.hsp = 2*cur_chainsaw.spr_dir;
        cur_chainsaw.image_angle = 35*cur_chainsaw.spr_dir;
        cur_chainsaw.rot_speed = 3*cur_chainsaw.spr_dir;
        cur_chainsaw = undefined;
    }
}

////////////////////////////////////////////////////////////////////////////////
//                                  Fspecial                                  //
////////////////////////////////////////////////////////////////////////////////
if (attack == AT_FSPECIAL) {
    if (state_timer == 1) {
        move_cooldown[AT_FSPECIAL] = fspecial_cooldown;
    }
}

////////////////////////////////////////////////////////////////////////////////
//                             Knife Tossing                                  //
////////////////////////////////////////////////////////////////////////////////

if (attack == AT_JAB) {
    // allow jab combo to be canceled into strongs during the in-between phases, but only in the direction you're already facing
    var allowed_dir_strong_pressed = right_strong_pressed;
    if (spr_dir == -1) {
        allowed_dir_strong_pressed = left_strong_pressed;
    }
    if (window % 2 == 0 && attack_pressed) {
        if (allowed_dir_strong_pressed) {
            set_attack(AT_FSTRONG);
        } else if (up_strong_pressed) {
            set_attack(AT_USTRONG);
        } else if (down_strong_pressed) {
            set_attack(AT_DSTRONG);
        }
    }

    // on the first frame of any window, set the cooldown of ftilt to be the time remaining in the window, otherwise the ability of canceling jabs into tilts makes things wacky
    if (window_timer == 1) {
        move_cooldown[AT_FTILT] = get_window_value(AT_JAB, window, AG_WINDOW_LENGTH);
    }

    // on the first frame of every throw window, subtract MP cost
    if (window % 2 == 1 && window_timer == 1) {
        if (mp >= mp_cost_basic) {
            mp -= mp_cost_basic;
            time_since_last_mp_spend = 0;
        } else {
            if (time_since_last_no_mp_fx >= 24) {
                var no_mp_fx = no_mp_effect;
                if (spr_dir == -1) {
                    no_mp_fx = no_mp_l_effect;
                }
                spawn_hit_fx(x, y - char_height - 12, no_mp_fx);
                time_since_last_no_mp_fx = 0;
            }

            var old_window = window;
            set_attack(AT_EXTRA_1);
            window = old_window;
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
//                       Movement During Ground Normals                       //
////////////////////////////////////////////////////////////////////////////////

if (attack == AT_JAB || attack == AT_UTILT) {
    // to maintain the ability to walk/run and throw knives, we need to handle speed ourselves since grounded moves stop movement, even with can_move set
    var max_hsp = walk_speed + ground_friction;
    if (abs(throw_start_hsp) >= dash_speed) {
        throw_start_hsp = dash_speed * sign(throw_start_hsp);
        max_hsp = dash_speed;
    }

    // on the first frame, counteract any potential changes to speed by resetting it to the snapshot taken during set_attack
    if (window == 1 && window_timer == 1) {
        can_move = true;  // not sure this really does anything
        hsp = throw_start_hsp;
    }
    // on any other frame, implement custom movement rules
    else {
        if (right_down) {
            // friction acts weird here - try to cancel it out
            hsp += walk_accel + ground_friction;
            hsp = min(hsp, max_hsp);
        }
        // inverse for left
        if (left_down) {
            hsp -= walk_accel + ground_friction;
            hsp = max(hsp, -max_hsp);
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
//                                   Fstrong                                  //
////////////////////////////////////////////////////////////////////////////////

if (attack == AT_FSTRONG) {
    // getting parried stops the flurry with the same penalty as if it got cancelled
    if (was_parried && !fstrong_cancelled) {
        fstrong_cancelled = true;
        window = 4;
        window_timer = 1;
    }

    // cancel out with shield at the cost of extended recovery
    if (window > 1 && shield_pressed && !fstrong_cancelled) {
        fstrong_cancelled = true;
        window = 4;
        window_timer = 1;
        set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 2*get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH));
    }

    if (window == 2 && window_timer == 1 && fstrong_loops_remaining == 0) {
        // every 15 frames of charge adds another repetition of window 2, calculate this on our first time seeing this frame
        fstrong_loops_remaining = floor(strong_charge / 15);
    }

    if (window == 2) {
        if (state_timer % 3 == 0) {
            var start_y = y + floor(20*sin(state_timer*0.33));
            create_hitbox(AT_FSTRONG, 1, x, start_y);
            create_hitbox(AT_FSTRONG, 1, x-12, start_y-10);
            create_hitbox(AT_FSTRONG, 1, x-28, start_y+8);
            
            sound_play(sound_get("s800_kengeki00"));
            sound_play(sound_get("s1019_whip"));

            if (state_timer % 2 == 0) {
                spawn_hit_fx(x, y, ring_sprite); 
            }
        }

        // loop
        if (window_timer == get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH) && fstrong_loops_remaining > 0) {
            window_timer = 1;
            fstrong_loops_remaining--;
        }
    }

    if (window == 3) {
        if (window_timer == get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH)) { 
            create_hitbox(AT_FSTRONG, 2, x, y);
            create_hitbox(AT_FSTRONG, 2, x-12, y-10);
            create_hitbox(AT_FSTRONG, 2, x-28, y+8);

            sound_play(sound_get("s800_kengeki00"));
            sound_play(sound_get("s1019_whip"));

            if (window_timer % 2 == 0) {
                spawn_hit_fx(x, y, ring_sprite); 
            }
        } else if (window_timer < get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH) - 3 && state_timer % 3 == 0) {
            var start_y = y + floor(20*sin(state_timer*0.33));
            create_hitbox(AT_FSTRONG, 1, x, start_y);
            create_hitbox(AT_FSTRONG, 1, x-12, start_y-10);
            create_hitbox(AT_FSTRONG, 1, x-28, start_y+8);

            sound_play(sound_get("s800_kengeki00"));
            sound_play(sound_get("s1019_whip"));

            if (state_timer % 4 == 0) {
                spawn_hit_fx(x, y, ring_sprite); 
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
//                                   Dstrong                                  //
////////////////////////////////////////////////////////////////////////////////

// window 2 can hit many times
if (attack == AT_DSTRONG) {
    if (window == 2) {
        var wl = get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH);

        if (window_timer == 1) {
            time_since_last_dstrong_hitbox = 0;
            sound_play(sound_get("s812_chain"));
        }
        else if (!hitpause && window_timer <= wl - get_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE) && time_since_last_dstrong_hitbox > ease_quadIn(12, 4, window_timer, wl)){
            time_since_last_dstrong_hitbox = 0;
            if (!was_parried) {
                create_hitbox(AT_DSTRONG, 1, x, y);
            }
        }

        if (was_parried && window_timer == get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH) - 1) {
            // skip over window 3 if we got parried
            window = 4;
            window_timer = 0;
        }
    }
}

time_since_last_dstrong_hitbox++;


////////////////////////////////////////////////////////////////////////////////
//                                   Taunt                                    //
////////////////////////////////////////////////////////////////////////////////
// spawn Nitori
if (attack == AT_TAUNT) {
    if (window == 2) {
        if (move_cooldown[AT_TAUNT_2] <= 0) {
            sound_play(sound_get("s11_beam"));
            cur_nitori = instance_create(0, 0, "obj_article2");
            cur_nitori.target_x = x + spr_dir * 100;
            cur_nitori.target_y = y - 250;

            cur_nitori.target_x = max(cur_nitori.target_x, get_stage_data(SD_X_POS) + 40);
            cur_nitori.target_x = min(cur_nitori.target_x, room_width - get_stage_data(SD_X_POS) - 40);

            move_cooldown[AT_TAUNT_2] = nitori_cooldown;
        } else {
            // whiff sound???
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
//                                  B Reversal                                //
////////////////////////////////////////////////////////////////////////////////

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
