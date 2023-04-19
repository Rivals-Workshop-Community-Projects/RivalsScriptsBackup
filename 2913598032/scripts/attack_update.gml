//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// New Item Loss Mechanic, don't lose item on startup
// Got_Hit.gml cannot properly access the window the player was on when they got hit,
// so here is my janky solution
switch (attack) {
    case AT_DTILT:
    case AT_DAIR:
    case AT_UTILT:
    case AT_UAIR:
    case AT_FTILT:
    case AT_FAIR:
    case AT_BAIR:
    case AT_JAB:
    case AT_DATTACK:
    case AT_NAIR:
        if (window == 1) can_drop_item = false;
        else if (window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            can_drop_item = false
        }
        else if (state == PS_ATTACK_GROUND || state == PS_ATTACK_GROUND) {
            can_drop_item = true;
        }
        break;
}

switch (attack) {
    case AT_EXTRA_1:
        if (window == 2 && window_timer == 1) {
            if (!therapy) therapy = true;
        }
        break;
    case AT_NSPECIAL:
        if (window == 2 && window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) && special_down) {
            window = 2;
            window_timer = 0;
        }
        if (window == 2 && window_timer == 1) {
            spawn_hit_fx( x, y - 42, vfx_coin_capture );
        } 
        if (window == 2) {
            for (var i = 0; i < 4; i++) {
                if (instance_exists(items[i])) items[i].recalled = true;
            }
        }
        else if (window == 3) {
            for (var i = 0; i < 4; i++) {
                if (instance_exists(items[i])) items[i].recalled = false;
            }
        }
        break;
    case AT_FSPECIAL:
        if (window == 1 && window_timer == 1) {
            if (instance_exists(wheel)) {
                wheel.destroy = true;
            }
        }
        if (window == 1 && window_timer == 2) {
            rmb_sound(sfx_spin_short);
        }
        if (window == 2 && window_timer == 1) {
            move_cooldown[AT_FSPECIAL] = 180;
        }
        break;

    case AT_DTILT:
        if (window == 2 && window_timer == 1) {
            if (place_meeting(x + 80 * spr_dir, y + 4, asset_get("par_block")) || place_meeting(x + 80 * spr_dir, y + 2, asset_get("par_jumpthrough"))){
                if (items_held[0]) { 
                    spawn_chest = true;
                    rmb_sound(sfx_treasure);
                }
                else {
                    spawn_chest = false;
                }
            }
            else {
                spawn_chest = false;
            }
            spawn_chest_timer = 0;
            // Check for ground in front of Rattle
        }
        if (window == 2 && window_timer == 3 && spawn_chest) {
            spawn_hit_fx( x + 40 * spr_dir, y, vfx_chest );
            spawn_chest_timer = 0;
        }
        if (spawn_chest_timer == 5 && spawn_chest) {
            var hbox = create_hitbox( AT_DTILT, 3, x + 44 * spr_dir, y - 40 )
        }
        break;
    case AT_DSPECIAL:
        if (window == 1 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)) {
            if (special_down && rattle_count < 7) {
                window = 1;
                window_timer = 0;
                rattle_count += 1;
            }
            else {
                var missing = 0;
                for (var i = 0; i < 4; i++) {
                    if (items_held[i] == false) missing++;
                }
                if (rattle_count == 7 && missing != 4) {
                    // Give an extra level for full length charge
                    missing += 1;
                }

                if (missing == 0) {
                    rmb_sound(sfx_rmb1);
                    window = 2;
                    window_timer = 0;
                }
                else if (missing == 1) {
                    rmb_sound(sfx_rmb1);
                    window = 4;
                    window_timer = 0;
                }
                else if (missing == 2) {
                    rmb_sound(sfx_rmb2);
                    window = 5;
                    window_timer = 0;
                }
                else if (missing == 3) {
                    rmb_sound(sfx_rmb3);
                    window = 6;
                    window_timer = 0;
                }
                else if (missing == 4) {
                    rmb_sound(sfx_rmb0);
                    window = 7;
                    window_timer = 0;
                }
            }
        }
        if (window != 3 && window != 1) {
            can_move = false;
            can_jump = false;
            can_shield = false;
            if (rattle_loop != 0 && window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH) && !hitstop && !hitpause){
                rattle_loop -= 1;
                window = window;
                window_timer = 0;
            }
            else if (rattle_loop == 0 && window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)){
                window = 3;
                window_timer = 0;
            }
        }

        break;
    case AT_FSTRONG:
        if (window == 2 && window_timer == get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)) {
            if (attack_down || attack_pressed || right_strong_pressed || right_strong_down || left_strong_pressed || left_strong_down) {
                window = 4;
                window_timer = 0;
                items_held[2] = false;
                var new_proj = create_hitbox( AT_FSTRONG, 3, x + 70 * spr_dir, y - 20 );
                sound_play(sfx_bonk)
            }
        }
        break;
    case AT_USTRONG:
        if (window == 4 && window_timer == get_window_value(AT_USTRONG, window, AG_WINDOW_LENGTH)) {
            if (attack_down || attack_pressed || up_strong_pressed || up_strong_down) {
                window = 6;
                window_timer = 0;
                items_held[1] = false;
                var new_proj = create_hitbox( AT_USTRONG, 3, x, y - 60 );
                //sound_play(sfx_bonk)
            }
        }
        break;
    case AT_DSTRONG:
        if (window == 6 && window_timer == get_window_value(AT_DSTRONG, window, AG_WINDOW_LENGTH)) {
            if (attack_down || attack_pressed || down_strong_pressed || down_strong_down) {
                window = 8;
                window_timer = 0;
                items_held[0] = false;
                var new_proj = create_hitbox( AT_DSTRONG, 5, x, y - 60 );
                //sound_play(sfx_bonk)
            }
        }
        break;
    case AT_DATTACK:
        if (window == 1 && window_timer == 1) {
            rmb_sound(sfx_trumpets);
        }
        break;

    case AT_USPECIAL:
        if (window == 2 && window_timer == 1) {
            var new_proj = create_hitbox( AT_USPECIAL, 1, x, y - 30 );
        }
        if (window != 5 && window != 1) {
            can_wall_jump = true;
        }
        break;
    case AT_NSPECIAL_2:
        can_move = false;
        vsp = 0;
        
    	switch(window) {
            case 1:
                rem_current = 0;
                hsp = 0;
                if (window_timer == get_window_value(AT_NSPECIAL_2, window, AG_WINDOW_LENGTH)) {
                    sound_play(sound_get("rattle_em_start"));
                }
                break;
            case 2:
                if (window_timer == get_window_value(AT_NSPECIAL_2, window, AG_WINDOW_LENGTH)) {
                    if (rem_current < rem_talk_loop) {
                        window = 2;
                        window_timer = 0;
                        rem_current++;
                    }
                    else {
                        rem_current = 0;
                        sound_play(sound_get("rattle_em_end"));
                    }
                }
                break;
    	    case 4:
    	        if (window_timer == 1) {
    	            spawn_hit_fx(x + 52 * spr_dir, y - 38, vfx_sonic).depth = depth - 1;
    	            //var new_hbox = create_hitbox(AT_NSPECIAL_2, 1, 0, -60);
    	        }
                if (window_timer == get_window_value(AT_NSPECIAL_2, window, AG_WINDOW_LENGTH)) {
                    if (rem_current < rem_shoot_loop) {
                        window = 4;
                        window_timer = 0;
                        rem_current++;
                    }
                }
    	    break;
    	}
        break;
    case AT_TAUNT:
        if ((window == 2 || window == 3) && window_timer == 1) {
            var new_hbox = create_hitbox( AT_TAUNT, 1, x, y - 30 )
            new_hbox.sprite_index = list_treasures[treas_cur];
            treas_cur++;
            if (treas_cur == treas_max) treas_cur = 0;
        }
        if (window == 3 && window_timer == get_window_value(AT_TAUNT, window, AG_WINDOW_LENGTH)) {
            if (taunt_down) {
                window = 2;
                window_timer = 0;
            }
        }
        break;
    
    case AT_TAUNT_2:
        if (window == 1 && window_timer == get_window_value(AT_TAUNT_2, window, AG_WINDOW_LENGTH)) {
            sound_play(sfx_lights_low);
        }
        if (window == 2 && window_timer == get_window_value(AT_TAUNT_2, window, AG_WINDOW_LENGTH)) {
            if (taunt_down) {
                window = 2;
                window_timer = 0;
            }
        }
        break;
}


if (attack == AT_DTILT) {
    spawn_chest_timer++;
}


#define rmb_sound(sound)
if (voices > 0 && !hitstop && !hitpause) {
    sound_play(sound);
} 