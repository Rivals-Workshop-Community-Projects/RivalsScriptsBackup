//ai_update

if (ai_not_init && temp_level != 0) {
    if (temp_level == 1) temp_level = 11;
    dumbness = (9 - temp_level) / (temp_level + 7);
    ai_not_init = false;
}
if (temp_level = 1) ai_attack_timer = ai_attack_time + 1;

target_dist = distance_to_object(ai_target);
target_xdiff = ai_target.x - x;
target_ydiff = ai_target.y - y;
facing_target = target_xdiff * spr_dir > 0;

attacking = (state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND);

dumb_this_frame = random_func(0, 1, false) < dumbness;

if (state == PS_DASH_START && (ai_going_left || ai_going_right)) {
    if (abs(target_xdiff) > 60 && random_func(0, 1, false) >= dumbness + 0.65) {
        jump_pressed = true;
        if (temp_level == 1 && random_func(5, 1, false) > 0.85) ai_wavedashing = false;
        else ai_wavedashing = true;
    }
}
if (state == PS_FIRST_JUMP) {
    if (ai_wavedashing) {
        shield_pressed = true;
    }
}
if (state == PS_AIR_DODGE) {
    if (ai_wavedashing) {
        if (temp_level == 1 && random_func(5, 1, false) < 0.5) {
            dash_dir = ai_going_right ? (180 + dash_steepness * 85) :
                ai_going_left ? (0 - dash_steepness * 85) : 90;
        }
        else {
            dash_dir = ai_going_left ? (180 + dash_steepness * 85) :
                ai_going_right ? (0 - dash_steepness * 85) : 90;
        }
        dash_steepness = 1 - (abs(target_xdiff) / 40) / (abs(target_xdiff) / 40 + 1);
        joy_pad_idle = false;
        joy_dir = dash_dir;
        ai_wavedashing = false;
    }
}
/*
if (ai_target.state == PS_HITSTUN && target_dist > 30) {
    x = ai_target.x + sign(target_xdiff) * 50;
    y = ai_target.y - 60;
    hsp = ai_target.hsp;
    vsp = ai_target.vsp;
    spr_dir = -sign(target_xdiff);
    set_attack(AT_DSTRONG);
    window = 2;
    window_timer = 5;
}
*/

if (target_ydiff > 20 && ai_attack_timer >= ai_attack_time - 2) {
    ai_attack_timer = ai_attack_time - 2;
}


if (state_cat == SC_GROUND_NEUTRAL && ready_to_attack) {
    if (abs(target_xdiff) < 70 && abs(target_ydiff + 40) <= 40
            && facing_target) {
        set_attack(AT_JAB);
    }
    else if (!dumb_this_frame) {
        if ((target_xdiff) > 300) {
            set_attack(random_func(1, 1, false) > 0.5 ? AT_NSPECIAL : AT_DSPECIAL);
        } else {
            ai_use_tech = random_func(1, 100, true) <= 3 - dumbness * 4;
            if (get_player_damage( player ) >= 100
                    && ai_use_tech) {
                super_parried = false;
                set_attack(AT_EXTRA_1);
                spr_dir = sign(target_xdiff);
            }
        }
    }
}
if (state_cat == SC_AIR_NEUTRAL && !ai_recovering) {
    if (ready_to_attack && !dumb_this_frame && abs(target_xdiff) > 200
            && target_ydiff < -60) {
        set_attack(random_func(1, 1, false) > 0.5 ? AT_NSPECIAL : AT_NSPECIAL);
    }
}


if (attacking) {
// just ignore this indentation

if (attack == AT_NSPECIAL) {
    if (ai_recovering) shield_down = true;
    target_in_range = 
        target_dist < 300 * ((nspecials_held / 8) / (nspecials_held / 8 + 1) + 1)
        && abs(40 + target_ydiff) < 70
        && facing_target;
    target_closing = ai_target.hsp * 35 / target_xdiff < -1 && !dumb_this_frame;
//    set_player_damage(player, target_in_range ? 200 : 0);
    
    if (target_closing && window <= 3) {
        if (target_in_range && random_func(2, 1, false) > dumbness)
            cycle_special_down = false;
        else if (window != 4 && window_timer <= 2)
            shield_down = true;
    }
    
    if (window == 1 && window_timer == 1) {
        if (target_in_range)
            cycle_special_down = random_func(2, 1, false) < 0.8;
        else cycle_special_down = random_func(2, 5, false) > dumbness;
    }
    special_down = cycle_special_down;
    
    if (window == 3 && window_timer <= 2) {
        if (random_func(3, 100, false) >=
                85 - (facing_target ? 0 : 10)) {
            shield_down = true;
        }
    }
    if (window == 5 && window_timer <= 2) {
        if (random_func(4, 100, false) >=
                98 - ((target_in_range || !ai_target || abs(target_xdiff) > 250) ? 0 : 8)) {
            shield_down = true;
        }
    }
}

if (attack == AT_JAB) {
    if (facing_target
            && !dumb_this_frame
            && target_xdiff * spr_dir < 45
            && abs(20 + target_ydiff) <= 20) {
        attack_pressed = true;
        attack_down = true;
    }
}

if (attack == AT_DATTACK) {
    if (window == 2
        && window_timer <= get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH) * 0.7
        && window_timer >= get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH) * 0.65) {
    
        if (!dumb_this_frame) {
            target_in_range = 
                target_dist < (90 + dumbness * 300)
                && target_ydiff > (-30 - dumbness * 250)
                && facing_target;
            if (!target_in_range) {
                jump_pressed = true;
            }
        }
    }
    if (window == 3 && window_timer >= 3) jump_pressed = !dumb_this_frame;
}
}
