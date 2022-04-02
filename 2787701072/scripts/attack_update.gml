// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_NSPECIAL {
    if window == 1 && window_timer == 1 {
        wt_hitbox_size = 0;
    }
    if window == 1 && window_timer == 6 && special_down {
        set_attack(AT_NSPECIAL_2);
        hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE);
    }
    
    if window == 1 && !special_down {
        window = 2;
        window_timer = 0;
    }
    
    if window == 2 && window_timer == 1 {
        wt_hitbox_size = 1;
    } else {
        wt_hitbox_size = 0;
    }
    
    if window == 2 && window_timer == 0 && !hitpause {
        sound_play(honk_sfx, 0, false, 0.6);
    }
}

if attack == AT_NSPECIAL_2 {
    can_move = false;
    if special_down {
        strong_down = true;
    } else {
        strong_down = false;
        attack_down = false;
    }
    
    if window == 2 && window_timer == 1 {
        wt_hitbox_size = 2;
    } else {
        wt_hitbox_size = 0;
    }
    
    if window == 2 && window_timer == 1 && !hitpause {
        sound_play(honk_sfx, 0, false, 0.7 + 0.3*(strong_charge/60));
        var mult = 3;
        set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_HITPAUSE, floor(strong_charge/mult));
    }
}

if attack == AT_DATTACK {
    can_move = false;
}

if attack == AT_JAB {
    if was_parried {
        was_parried = false;
    }
}

if attack == AT_NAIR {
    if window == 2 && attack_down && nair_boost {
        vsp -= 0.5;
    } else if window == 3 && nair_boost {
        nair_boost = false;
    }
}

if attack == AT_DAIR {
    can_move = false;
    if window == 2 && state_timer >= 45 {
        can_jump = true;
    }
    
    if window == 2 && window_timer == get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH) {
        attack_end();
    }
    
    if window == 3 && window_timer == 0 && !hitpause {
        destroy_hitboxes();
        sound_play(asset_get("sfx_bird_upspecial"))
    }
}

if attack == AT_USPECIAL {
    can_wall_jump = true;
    if window <= 3 {
        can_move = false;
    }
    
    if window == 1 {
        hsp *= 0.97;
        vsp *= 0.95;
    }
    
    if vsp < 0 && vsp > -7 && window >= 3 {
        destroy_hitboxes();
    }
}

if attack == AT_FSPECIAL {
    can_wall_jump = true;
    
    if (window == 4 || window == 5) && free {
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    
    if window == 2 && !free {
        window = 4;
        window_timer = 0;
    }
    
    
    if window == 1 {
        can_move = false;
    }
    
    if window == 3 {
        if state_timer >= 60 {
            can_jump = true;
            can_airdodge = true;
        }
    }
}


if attack == AT_TAUNT {
    if get_player_color(player) == 11 { //sans
        if window == 1 && window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH) {
            window = 5;
            window_timer = 0;
            sound_play(sound_get("sans_earrape"), true, 0, 0.5);
        }
        
        if window == 5 {
            if get_gameplay_time() mod 4 >= 1 {
                var xMod = 20*(random_func_2(get_gameplay_time() mod 200, 2, false) - 1);
                var yMod = 20*(random_func_2((get_gameplay_time()*7)mod 177, 2, false) - 1);
                set_view_position(view_get_wview()/2 + view_get_xview() + xMod, view_get_hview()/2 + view_get_yview() + yMod)
            }
            
            if window_timer == get_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH) {
                window_timer = 0;
            }
            
            if taunt_pressed || attack_pressed || special_pressed || shield_pressed {
                window++;
                window_timer = 0;
                sound_stop(sound_get("sans_earrape"));
            }
        }
    }
}

if attack == AT_USPECIAL_2 {
    goose_id.used_uspec = false
    goose_id.state_timer = state_timer
    goose_id.window_timer = window_timer
    goose_id.window = window
    goose_id.attack = AT_USPECIAL_2
    goose_id.x = lerp(goose_id.x, x, 0.2)
    goose_id.y = lerp(goose_id.y, y, 0.2)
    if window == 1 && window_timer == 4 sound_play(asset_get("sfx_bird_downspecial"))
    goose_id.hitpause = hitpause
}