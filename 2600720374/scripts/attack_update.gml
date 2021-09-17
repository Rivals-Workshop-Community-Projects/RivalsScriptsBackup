//B - Reversals
if (/*attack == AT_NSPECIAL || */ attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    can_move = false;
    move_cooldown[AT_NSPECIAL] = 10;
    if (window == 1) {
        trigger_b_reverse();
        speedmod = 1;
        if (free) { 
            speedmod = 0.9;
        }
    } else if (window == 2) {
        if (window_timer == 1) {
            hsp *= speedmod;
            has_hit_player = false;
            hit_orb = false;
            lightning_punch = false;
            clear_button_buffer(PC_SPECIAL_PRESSED);
            punch_buffer = false;
            kick_buffer = false;
            cancel_buffer = false;
        }
        if (attack_pressed) {
            punch_buffer = true;
        } else if (special_pressed) {
            kick_buffer = true;
            if (window_timer > 6) {
                window = 6;
                window_timer = 1;
            }
        } else if (shield_pressed) {
            cancel_buffer = true;
        }
    } else if (window == 3) {
        if (attack_pressed || punch_buffer) {
            window = 5;
            window_timer = 1;
        } else if (special_pressed || kick_buffer) {
            window_timer = 1;
            window = 6;
        } else if (shield_pressed || cancel_buffer) {
            cancel_buffer = true;
            window_timer += 3;
        }
    } else if (window == 4) {
        move_cooldown[AT_NSPECIAL] = 30;
    } else if (window == 5) { // punch
        if (window_timer < 10) vsp *= 0.85;
        if (window_timer == 8 && !lightning_punch) {
            hsp = 14*spr_dir;
        }
        if (window_timer > 20) hsp *= 0.85;
        // Funny Speed
        /*
        if (window_timer > 10 && has_hit_player && !hitpause) { 
            can_jump = true;
        }
        */
    } else if (window == 6) { // kick
        //if (window_timer < 15 && vsp > 0) vsp *= 0.8;
        if (has_hit && window_timer > 15 && window_timer % 2) {
            window_timer += 1;
        }
    }
} else if (attack == AT_DAIR) {
    can_fast_fall = false;
    if (window == 1) {
        dair_hand_grabbed = false;
        dair_projectile_hit = false;
    } else if (window == 3) {
        if (dair_projectile_hit && !dair_hand_grabbed && (attack_down || down_strong_down)) {
            vsp -= 0.2;
        }
    } else if (window == 4 && !dair_hand_grabbed) {
        if (dair_projectile_hit && (attack_down || down_strong_down)) {
            vsp -= 2;
        }
            
        window = 10;
    }
} else if (attack == AT_FAIR) {
    if (window == 1 && window_timer == 1 && vsp >= -2.5) {
        if (num_kicks < 1) {
            vsp = -3 + num_kicks*3;
            num_kicks += 1;
        }
    }
} else if (attack == AT_TAUNT) {
    can_move = false;
    if (window == 1) {
        vsp = -4;
    } else if (window == 2) {
        vsp *= 0;
        if (window_timer % 2 == 0) {
            var angle = spr_dir * 2 * pi * window_timer / get_window_value(AT_TAUNT, window, AG_WINDOW_LENGTH);
            //var angle = spr_dir * pi * window_timer / get_window_value(AT_TAUNT, window, AG_WINDOW_LENGTH);
            var ax = sin(angle) * 64;
            var ay = cos(angle) * 64;
            var hand = create_hitbox(AT_TAUNT, 1, round(x+ax), round(y+ay-32));
            var hand2 = create_hitbox(AT_TAUNT, 1, round(x-ax), round(y-ay-32));
            hand.proj_angle = radtodeg(-angle);
            hand2.proj_angle = radtodeg(-angle);
        }
    }
} else if (attack == AT_FSPECIAL) {
    var spawn_effect = true;
    can_move = false;
    if (window == 1) {
        fspecial_charge = 0;
    } else if (window == 2) {
        fspecial_charge += 1;
        if (window_timer == 1) {
            if (spawn_effect) {
                var cpx = x + get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X) * spr_dir;
                var cpy = y + get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);
                var charge_particle = spawn_hit_fx(cpx,cpy,charge_effect2);
                charge_particle.depth = -10;
            }
            spawn_effect = !spawn_effect;
        }
            
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 4 + round(fspecial_charge/5.7));
        set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 1 + round(fspecial_charge/2.25));
        set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4 + round(fspecial_charge/20));
        if (shield_pressed) {
            //fspecial_charge = 0;
            move_cooldown[AT_FSPECIAL] = 20;
            window = 5;
            clear_button_buffer(PC_SHIELD_PRESSED);
        }
        if (window_timer == 2 && special_down) {
            window_timer = 0;
        }
    } else if (window == 3) {
    } else if (window == 4) {
        move_cooldown[AT_FSPECIAL] = 15;
        vsp *= 0.8;
        if (window_timer == 2) {
            //fspecial_charge = 0;
            reset_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE);
        }
    }
} else if (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND) {
    can_fast_fall = false;
    if (window == 1) {
        attack_end();
        if (vsp > 0) {
            vsp *= 0.8;
        }
        if (window_timer == 1) {
            was_grounded = !free;
        }
    } else if (window == 2) {
        if (window_timer == 1) {
            if ((hsp < 0) != (spr_dir < 0)) {
                hsp = spr_dir * 2;
            }
        }
    } else if (window == 3) {
        if (was_grounded && window_timer > 1 && attack == AT_USPECIAL) can_fast_fall = true; 
    }
    if (window == get_attack_value(attack, AG_NUM_WINDOWS)) { 
        can_wall_jump = true;
        if (((attack == AT_USPECIAL && !has_hit) || (!was_grounded))
            && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            attack_end();
            window = 10;
            set_state(PS_PRATFALL);
        }
    }
    if (!free && window > 2) {
        attack_end();
        window = 10;
    }
} else if (attack == AT_FTILT) {
    if (window == 3 && window_timer == 1) {
        var charge_particle = spawn_hit_fx(x + get_hitbox_value(AT_FTILT, 1, HG_HITBOX_X) * spr_dir,
                                           y + get_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y), charge_effect2);
        charge_particle.depth = -10;
    }
} else if (attack == AT_DSTRONG) {
    //super_armor = false;
    soft_armor = 0;
    if ((window == 1 && window_timer > 11) || window == 2) {
        //super_armor = true;
        soft_armor = 14;
    } if (window == 3) {
        if (window_timer < 4) {
            //super_armor = true;
            soft_armor = 14;
        }
        if (window_timer == 3 && !has_hit) {
            shake_camera(4, 6);
        }
    }
} else if (attack == AT_DSPECIAL) {
    move_cooldown[AT_DSPECIAL] = 60;
    move_cooldown[AT_USPECIAL] = 12;
    can_fast_fall = false;
    if (window == 1) {
        if (free) {
            hsp *= 0.9;
            vsp *= 0.8;
        } else if (window_timer == 6) {
            vsp = -15;
        }
    } else if (window == 2) {
        if (window_timer == 1) {
            if (!joy_pad_idle) {
                var jx = lengthdir_x(1, joy_dir);
                if (jx > 0.5) {
                    spr_dir = 1;
                } else if (jx < -0.5) {
                    spr_dir = -1;
                }
            }
            hsp += 1.9 * spr_dir;
            if (special_down) hsp += 3 * spr_dir;
        } 
    } else if (window == 3) {
        can_wall_jump = true;
        if (!free) {
            window = 10;
        }
        /*
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            set_state(PS_PRATFALL);
        }
        */
    }
} else if (attack == AT_BAIR) {
    var jx = 0;
    if (!joy_pad_idle) jx = lengthdir_x(1, joy_dir);
    // looks like lisp code lmao
    if (window == 2) {
        //if (has_hit) {
            //if (vsp > -2) vsp -= 0.5;
            //if (vsp > -8) vsp -= 0.5;
        //}
        if (has_hit) {
            has_hit = false;
            vsp -= 1;
        }
    } else if (window == 3) { 
        if (window_timer >= 4 &&
            ( (spr_dir ==  1 && (left_strong_pressed  || (attack_pressed && jx < -0.5)))
            ||(spr_dir == -1 && (right_strong_pressed || (attack_pressed && jx >  0.5))))) {
            clear_button_buffer(PC_LEFT_STRONG_PRESSED);
            clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
            clear_button_buffer(PC_ATTACK_PRESSED);
            spr_dir *= -1;
            window = 4;
            window_timer = 0;
            sound_play(asset_get("sfx_swipe_medium2"));
        }
    }
}

// tilts cancel into nspecial on hit
if (has_hit && (attack == AT_JAB || attack == AT_DTILT || attack == AT_FTILT || attack == AT_UTILT)) {
    if (special_pressed && hitstop == 0 && joy_pad_idle) {
        window = 10;
    }
}

