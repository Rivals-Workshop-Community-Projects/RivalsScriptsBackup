//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL
    || attack == AT_USPECIAL || attack = AT_EXTRA_1){
    trigger_b_reverse();
}

//Kara cancel???
if (super_eligible
    && window == 1 && window_timer <= 8
    && attack != AT_EXTRA_1) {
    super_parried = false;
    attack = AT_EXTRA_1;
    window = 1;
    window_timer = 0;
    if (joy_pad_idle) spr_dir = super_input_dir;
    else spr_dir = lengthdir_x(1, joy_dir) > 0 ? 1 : -1;
}

//Jab
if (attack == AT_JAB) {
    was_parried = false;
    if (window == 3) {
        if(window_timer > 1 && attack_pressed) set_attack(AT_JAB);
        if(window_timer > 2) can_attack = true;
        if(window_timer > 3 && attack_down) set_attack(AT_JAB);
    }
}

else if (attack == AT_DATTACK) {
    
    set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
    if (window >= 2) { 
        set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
    }
    
    if (window == 1) {
        air_hit = false;
    }
    
    if (window >= 3 && free) {
        air_hit = true;
        window = 3;
        window_timer = 0;
    }
    
    if (air_hit && !free) {
        air_hit = false;
        window = 5;
        window_timer = -5;
    }
    
    
    if ((window == 2
            && window_timer <= get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH) * 0.9
            && window_timer >= get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH) * 0.5)
            || (window == 3 && has_hit)){
        can_jump = true;
    }
}

else if (attack == AT_UTILT){
    if (window >= 4 && has_hit){
        can_jump = true;
    }
}

/*
//Fair
else if (attack == AT_FAIR && false) {
    if (window == 1) {
        set_window_value(AT_FAIR, 3, AG_WINDOW_VSPEED, 0);
    }
    if (window == 2 && has_hit) {
        set_window_value(AT_FAIR, 3, AG_WINDOW_VSPEED, -7.2);
    }
}
*/

else if (attack == AT_NSPECIAL) {
    if (window == 2 && window_timer <= 1) {
        nspecials_held++;
    }
    if ((window == 2 || window == 3) && !special_down) {
        window = 4;
        window_timer = 0;
    }
    if (window == 3 && window_timer >= get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH) / (1 + nspecials_held / 6)) {
        if (special_down) {
            window = 1;
//            window_timer = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)
//                * nspecials_held / (nspecials_held + 1);
            window_timer = 0;
        }
    }
    if (window == 4 && nspecials_held > 0) {
        /*
        if (free) {
            attack = AT_NSPECIAL_AIR;
            window = 0;
            window_timer = 0;
            nspecials_burst = nspecials_held;
            nspecials_held--;
        }
        else {
            nspecials_burst = nspecials_held;
            nspecials_held = 0;
        }*/
        
        nspecials_burst = nspecials_held;
        nspecials_held = 0;
    }
    
    /*
    if (window == 4 && window_timer == 0) {
        nspecial_cast_anim += 1 + random_func(12, 0, true);
        nspecial_cast_anim %= 5;
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START,
            6 + nspecial_cast_anim * 3);
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START,
            8 + nspecial_cast_anim * 3);
    }
    */
        
    if (window == 4 && window_timer == get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH)) {
        h_chaos = (nspecials_burst / 8) / (nspecials_burst / 8 + 1);
        v_chaos = (nspecials_burst / 50) / (nspecials_burst / 50 + 1);
        hsp_roll = random_func(2, 1, false) * h_chaos;
        vsp_roll = (random_func(3, 1, false) - 0.5) * v_chaos;
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED,
            hsp_roll * 8 + h_chaos * 12 + 10);
        while (vsp_roll * 55 >= 12) vsp_roll /= 2;
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED,
            vsp_roll * 55);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY,
            -vsp_roll * 5);
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE,
            5 - h_chaos * 3.2);
    }
    if (window == 5 && window_timer >= get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH) / (nspecials_burst / 4 + 1)
        && nspecials_burst > 1) {
            if (shield_down) {
                window = 6;
                window_timer = 0;
            } else {
                nspecials_burst--;
                window = 4;
                window_timer = 0;
                
                /*
                nspecial_cast_anim += 1 + random_func(12, 0, true);
                nspecial_cast_anim %= 5;
                set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START,
                    6 + nspecial_cast_anim * 3);
                set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START,
                    8 + nspecial_cast_anim * 3);
                    */
            }
        }
    
    if (shield_down && window < 6) {
        window = 6;
        window_timer = 0;
    }
}

else if (attack == AT_NSPECIAL_AIR) {
    
    if (window == 2 && window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)) {
        charge_power = (nspecials_burst / 8) / (nspecials_burst / 8 + 1);
        /*
        set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE,
            charge_power * 100);
        set_num_hitboxes(AT_NSPECIAL_AIR,
            1 + charge_power * 6);
        set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED,
            charge_power * -10);
        set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED,
            charge_power * -12);
        */
        h_chaos = (nspecials_burst / 8) / (nspecials_burst / 8 + 1);
        v_chaos = (nspecials_burst / 8) / (nspecials_burst / 8 + 1);
        hsp_roll = random_func(2, 1, false) * h_chaos;
        vsp_roll = (random_func(3, 1, false) - 0.5) * v_chaos;
        while (vsp_roll * 55 >= 12) vsp_roll /= 2;
        set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED,
            hsp_roll * 8 + h_chaos * 12 + 10);
        set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED,
            vsp_roll * 8 + h_chaos * 12 + 10);
        nspecials_burst = 0;
    }
}

else if (attack == AT_FSPECIAL) {
    can_fast_fall = false;
    
    // Whiff handle
    if (window == 3 &&
    window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)) {
        iasa_script();
        set_state(PS_IDLE);
    }
    // Reel-in
    if (window == 4) {
        // Reel-in code
        var target_pos = get_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X)
        * (1 - window_timer / get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH))
         + 40;
        with (asset_get("oPlayer")) {
            if (hit_player_obj == other.id && other.grabbed_player_id == id
            && state != PS_FROZEN) {
                hitstop = 1;
                x += (other.x+target_pos*other.spr_dir - x)/5;
                y += (other.y - y) / 10;
            }
        }
    }
    
    // Throwing
    if (window == 5) {
        var throw_end = get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);
        if (free && window_timer >= throw_end - 1) window_timer = throw_end - 1;
        with (asset_get("oPlayer")) {
            if (hit_player_obj == other.id && other.grabbed_player_id == id) {
                hitstop = 1;
                x += (other.x +
                ease_backInOut(-40, 30, other.window_timer, throw_end + 8, 1)
                * other.spr_dir - x) / 2;
                y += (other.y +
                ease_backIn(-5, 0, other.window_timer, throw_end + 8, 60)
                - y) / 2;
            }
        }
    }
    
    // Final hit
    if (window == 6 && window_timer <= 6) {
        with (asset_get("oPlayer")) {
            if (hit_player_obj == other.id && other.grabbed_player_id == id){
                x = other.x + 40*other.spr_dir;
                y = other.y;
                grabbed_by_id = -1;
            }
        }
    }
}

else if (attack == AT_USPECIAL){
    
    can_fast_fall = false;
    
    if (window == 3 && window_timer == 1) {
        if (!joy_pad_idle) {
            // some fiddling for the easing function
            travel_dir = (joy_dir + 90) % 360 - 180;
            xmag = lengthdir_x(1, joy_dir);
            ymag = lengthdir_y(1, joy_dir);
        } else {
            travel_dir = 0;
            xmag = 0;
            ymag = -1;
        }
    }
    
    if (window == 3 && window_timer >= get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH) / 2) {
        spr_angle = ease_linear(0, travel_dir, window_timer - get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH) / 2,
            get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH) / 2);
    }
    if (window == 4) {
        if (window_timer == 1) {
            set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_HSPEED, -9 * xmag * spr_dir);
            set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_VSPEED, -9 * ymag);
        }
        x += 14*xmag;
        if (ymag < 0 || !position_meeting(x, y+16 + 14 * ymag, asset_get("par_block")))
            y += 14*ymag;
        else {
            ymag *= -1;
            spr_angle = point_direction(0, 0, xmag, ymag) - 90;
        }
        if (window_timer >= get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH))
            spr_angle = 0;
    }
    if (window == 6 && window_timer >= get_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH)) {
        y += 32;
    }
}

else if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    
    if (free && window == 1 && window_timer >=
            get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) - 1) {
        window_timer = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) - 1;
        vsp = 28;
    }
    
    if (window == 2 && window_timer == 4) {
        var place_far = spr_dir < 0 && left_down || spr_dir > 0 && right_down;
        var place_near = spr_dir > 0 && left_down || spr_dir < 0 && right_down;
        var temp_x = 32;
        var max_temp_x = place_far ? 480 : 340;
        while (temp_x < max_temp_x
        && (position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_block"))
        || position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_jumpthrough")))
        && !position_meeting(x+temp_x*spr_dir, y-2, asset_get("par_block"))){
            temp_x++;
        }
        var spawn_dist = place_far ? temp_x - 16 :
            place_near ? min(temp_x - 96, 162) :
            temp_x - 32;
        var head = instance_create(x + spawn_dist*spr_dir, y, "obj_article1");
        head.player_id = id;
        head.player = player;
        head.spr_dir = spr_dir;
        
        move_cooldown[AT_DSPECIAL] = 95;
        move_cooldown[AT_DSPECIAL_AIR] = 95;
    }
}

/*
if (attack == AT_EXTRA_1){
    if (window == 2) {
        super_timer = 60;
    }
    
    if (window == 3 && window_timer == 1 && super_timer >= 0) {
        var randx = random_func(1, 370, true);
        set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, randx);
        window_timer = 0;
        super_timer--;
        
        var temp_x = 32;
        var max_temp_x = randx;
        while (temp_x < max_temp_x
        && (position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_block"))
        || position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_jumpthrough")))
        && !position_meeting(x+temp_x*spr_dir, y-2, asset_get("par_block"))){
            temp_x++;
        }
        var head = instance_create(x+(temp_x - 16)*spr_dir, y, "obj_article1");
        head.player_id = id;
        head.player = player;
        head.spr_dir = spr_dir;
    }
}
*/

else if (attack == AT_USTRONG) {
    if (window == 3 && free) {
        if (has_hit) {
            with (asset_get("oPlayer")) {
                if (hit_player_obj == other.id && other.grabbed_player_id == id){
                    //state = PS_HITSTUN;
                    hitstop = 1;
                    x = (other.x);
                    y = (other.y - 40);
                }
            }
        }
    }
    if (window == 4 && airpin && has_hit) {
        window = 4;
        window_timer = 0;
        attacker_joydir_x = joy_pad_idle ? 0 : lengthdir_x(1, joy_dir);
        hit_player_obj.x = x;
        hit_player_obj.y = y - 40;
        hit_player_obj.hitstop = 1;
        hit_player_obj.old_vsp = 10;
        hit_player_obj.old_hsp = 20 * attacker_joydir_x;
        
        if (jump_pressed) {
            djumps = -1;
            set_state(PS_FIRST_JUMP);
        }
    }
    if (airpin && !free) {
        attack = AT_DATTACK;
        window = 4;
        window_timer = 6;
        if (!joy_pad_idle) spr_dir = lengthdir_x(1, joy_dir) > 0 ? -1 : 1;
    }
}

else if (attack == AT_EXTRA_1) {
    can_move = false;
    
    if (super_parried) {
        spr_dir *= -1;
        window = 6;
        window_timer = 0;
        old_hsp = -13 * spr_dir;
        old_vsp = -16;
        airspinloops = 9;
        super_parried = false;
    }
        
    // Whiff handle
    if (window == 2 &&
    window_timer >= get_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH)) {
        window = 7;
        window_timer = 0;
        spr_dir *= -1;
        hsp = -11 * spr_dir;
    }
    
    // Throwing
    if (window == 3 || window == 4) {
        with (asset_get("oPlayer")) {
            if (hit_player_obj == other.id && other.grabbed_player_id == id){
                //state = PS_HITSTUN;
                hitstop = 1;
                x = (other.x + 40 * other.spr_dir);
                y = (other.y);
            }
        }
    }
    
    // Final hit
    if (window == 5 && window_timer <= 6) {
        with (asset_get("oPlayer")) {
            if (hit_player_obj == other.id && other.grabbed_player_id == id){
                x = other.x + 40*other.spr_dir;
                y = other.y;
            }
        }
        airspinloops = 2;
    }
    
    // Recoil
    if (window == 6) {
        if (!free && window_timer > 1) {
            window = 7;
            window_timer = 0;
            hsp = -11 * spr_dir;
        }
        if (window_timer >= get_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH)
        && airspinloops > 0) {
            window_timer = 0;
            airspinloops -= 1;
        }
    }
}
