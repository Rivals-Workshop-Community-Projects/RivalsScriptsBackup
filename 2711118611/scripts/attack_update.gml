//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer == 1){
        move_cooldown[AT_NSPECIAL] = 180;
    }
}

if (attack == AT_NSPECIAL_2){
    can_move = false;
    switch(window) {
        case 3:
            if (window_timer == 1) {
                spawn_hit_fx(x + 52 * spr_dir, y - 38, fx_sonic).depth = depth - 1;
                move_cooldown[AT_NSPECIAL_2] = 30;
            }     
        break;
    }
}


if (attack == AT_UAIR) {
    if (window == 3 && window_timer == 1) {
        uair_height += stale_amount;
        set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, uair_height);
    }
}

if (attack == AT_USPECIAL){
    if (window == 2){
        vsp = 0;
    }
    if (window == 2 && window_timer == 2) {
        var destination = noone;
        x_offset = 0;
        y_offset = 0;

        if (instance_exists(sword_one)) {
            hsp = sword_one.hsp;
            if (hsp < -5) hsp = -5;
            else if (hsp > 5) hsp = 5;
            y_offset = 0;
            destination = sword_one;
        }
        else if (instance_exists(sword_two)) {
            hsp = 0;
            destination = sword_two;
        }
        else if (instance_exists(sword_three)) {
            hsp = 0;
            destination = sword_three;
            y_offset = 0;
        }

        if (destination != noone) {
            x = destination.x + x_offset;
            y = destination.y + y_offset;
        }
        
        if (destination == sword_one && instance_exists(sword_one)){
            instance_destroy(sword_one.hbox);
            sword_one = noone;
        }
        if (destination == sword_two && instance_exists(sword_two)) sword_two = noone;
        if (destination == sword_three && instance_exists(sword_three)) sword_three = noone;
        if (instance_exists(destination)){
            instance_destroy(destination);
        }
        
    }

    if (window == 2 && window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)){
        if (special_down) {
            window = 5;
            window_timer = 0;
        }
        
    }
    if (window == 5 && window_timer == get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH)) {
        window = 6;
        window_timer = 0;
    }

    if (window == 6 && window_timer == 1) {
        hsp += 10 * spr_dir;
    }

    if (window == 3 || window == 4 || window == 5) {
        can_move = false;
        hbox = noone;
        hsp = 0;
        vsp = 0;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 1) dspecial_hit = false;
    //sword = instance_create(x, y, "obj_artice1");
    if (window == 1 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) && !free){
        window = 3;
        window_timer = 0;
    }
    if (window == 2 && window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) && free){
        window = 4;
        window_timer = 0;
    }

    if ((window == 2 && window_timer == ceil(get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) / 2)) || (window == 3 && window_timer == ceil(get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH) / 2))) {
        if (sword_three != noone) {
            instance_destroy(sword_three)
        }
        sword_three = instance_create(x, y, "obj_article1"); //COME BACK HERE
    }
    can_fast_fall = false;
    //can_move = false
}

if (attack == AT_NSPECIAL) {
    if (window == 2 && window_timer == 1) {
        if (sword_one != noone){
            instance_destroy(sword_one.hbox);
            instance_destroy(sword_one);
        }
        sword_one = instance_create(x + (15 * spr_dir), y - 4, "obj_article2");
        sword_one.hsp = 18 * spr_dir;
        sword_one.hsp_mod = sword_one.hsp_mod * spr_dir;
    }
}

if (attack == AT_DATTACK) {
    if (has_hit && (window == 2 || window == 3)) {
        can_jump = true;
        djump_speed = 7;
    }
}

if (attack == AT_FSPECIAL) {
    can_move = false;

    if (window == 2 || window == 4 || window == 5) {
        can_jump = true;
    }

    if (window == 1 && free && window_timer == 1) {
        window = 6;
        window_timer = 0;
    }
    if (window == 6 && hsp != 0 && window_timer == 1) {
        hsp_storage = hsp;
        vsp_storage = vsp;
        ease_timer = 0;
    }
    else if (window == 6 && hsp != 0 && window_timer != 0) {
        hsp = ease_sineIn(ceil(hsp_storage), 0, ease_timer, 9);
        vsp = ease_sineIn(ceil(vsp_storage), 0, ease_timer, 9);
        ease_timer++;
    }

    if (window == 1 && window_timer == 5) {
        vsp -= 3;
        hsp -= 3 * spr_dir;
    }

    if ((window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)) || (window == 6 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH))) {
        //if (special_down and fspecial_hold_loop < 1) {
        //    window_timer = 2;
        //    fspecial_hold_loop++;
        //}
        if (spr_dir == -1){
            if (joy_dir >= 90 && joy_dir < 155) {
                window = 4;
                window_timer = 0;
                move_cooldown[AT_FSPECIAL] = 240;
            }
            else if (joy_dir <= 270 && joy_dir > 205) {
                window = 5;
                window_timer = 0;
                move_cooldown[AT_FSPECIAL] = 240;
            }
            else {
                window = 2;
                window_timer = 0;
                move_cooldown[AT_FSPECIAL] = 240;
            }
        }
        else if (spr_dir == 1){
            if (joy_dir <= 90 && joy_dir > 25) {
                window = 4;
                window_timer = 0;
                move_cooldown[AT_FSPECIAL] = 240;
            }
            else if (joy_dir >= 270 && joy_dir < 335) {
                window = 5;
                window_timer = 0;
                move_cooldown[AT_FSPECIAL] = 240;
            }
            else {
                window = 2;
                window_timer = 0;
                move_cooldown[AT_FSPECIAL] = 240;
            }
        }
        
    }
    
    if (window == 4 && window_timer == get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH)) {
        window = 3;
        window_timer = 0;
    }
    if (window == 5 && window_timer == get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)) {
        window = 3;
        window_timer = 0;
    }

    if (window == 3){
        
        fspecial_hold_loop = 0;
    }
}

if (attack == AT_DAIR) {
    can_move = false;
    if (window == 1) {
        dair_loop = 0;
    }
    if (window == 3 && window_timer == get_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH)) {
        dair_loop += 1;
    }

    if (dair_loop >= 3) {
        can_jump = true;
        can_shield = true;
    }
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT && window == 2) {
    if (window_timer == 1) {
		str_line_one_text = "";
		str_line_two_text = "";
        int_text_pos = 0;
    }
    if (window_timer > 1 && window_timer mod 2 == 0) {
        if (int_text_pos < int_total_length){
			if (int_text_pos < int_line_one_length) {
				str_line_one_text += string_char_at(str_taunt_text_one, int_text_pos+1);
			}
			else {
				str_line_two_text += string_char_at(str_taunt_text_two, int_text_pos + 1 - int_line_one_length);
			}
            int_text_pos++;
			sound_play(sfx_msg);
		}
    }

	if (window_timer > 20) {
		can_jump = true;
	}

}

if (attack == AT_JAB && bigiron) {
    if (window == 1 && (special_pressed || special_down)) {
        attack = AT_NSPECIAL_2;
    }
}