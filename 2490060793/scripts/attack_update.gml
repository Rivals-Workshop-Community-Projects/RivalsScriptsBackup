// attack_update

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_DATTACK {
    //polevault frame stuff
    if window == 1 && window_timer == window_length {
        x += spr_dir*10
    } else if window == 2 && (window_timer == window_length/2 || window_timer == window_length) {
        x += spr_dir*24
    }
    
    if window != 1 off_edge = true;
    
    //grounded endlag
    if window == 4 || window == 3 {
        if !free && was_parried set_state(PS_PRATLAND)
        else if !free set_state(PS_LANDING_LAG)
    }
}

if attack == AT_UAIR {
    if window == 1 && window_timer == 6 {
        //sound_play(asset_get("sfx_ice_shieldup"))
    }
}

if attack == AT_USTRONG {
    if window >= 2 height_timer++;
    else height_timer = 0;
}

if attack == AT_NSPECIAL {
    if window == 3 && window_timer == 1 {
        meter_prev = meter_cur;
        meter_cur -= gun_value;
        meter_flash_timer = meter_flash_val;
    }
    
    if window == 2 {
        can_shield = true;
        if special_down strong_down = true;
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 15 + floor(strong_charge/4));
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8 + floor(strong_charge/12));
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3 + floor(strong_charge/8));
        /*
        if !special_down && window_timer > 3 {
            window++;
            window_timer = 0;
        }
        */
    }
}

if attack == AT_DSPECIAL {
    if window_timer == 3 {
        meter_flipped = !meter_flipped;
        with obj_article1 {
            if player_id == other.id && pulse_cooldown == 0 {
                pulse = true;
            }
        }
    }
}

if attack == AT_FSPECIAL {
    if window == 1 && window_timer == window_length {
        var spawn_x = x + spr_dir*60;
        var orb = instance_create(spawn_x, y - 40, "obj_article1");
            orb.hsp = spr_dir*15;
        meter_prev = meter_cur;
        meter_cur -= orb_value;
        meter_flash_timer = meter_flash_val;
        //var col_r = get_color_profile_slot_r(alt_cur, 3);
        //var col_g = get_color_profile_slot_g(alt_cur, 3);
        //var col_b = get_color_profile_slot_b(alt_cur, 3);
        //set_article_color_slot(3, col_r, col_g, col_b, 1);
    }
}

/*
if hitstop == hitstop_full-1 {
    meter_cur += hit_value;
}
*/

if attack == AT_USPECIAL {
    if state_timer == 1 upb_coords = [x, y - 100];
    else if window == 1 {
        if up_down && !down_down upb_coords[1] -= 3;
        else if down_down && !up_down upb_coords[1] += 3;
        
        if left_down && !right_down {
            upb_coords[0] -= 3;
        } else if right_down && !left_down {
            upb_coords[0] += 3;
        }
    }
    
    
    
    if window == 1 {
        if window_timer > 4 && meter_cur <= 0 {
            window++;
            window_timer = 0;
        }
        
        hsp = clamp(hsp, -4, 4)
        vsp = clamp(vsp, -4, 4)
        if strong_charge != 0 && strong_charge mod 2 == 0 {
            meter_cur -= upb_value;
        }
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 15 + floor(strong_charge/4));
    }
    can_move = false;
    can_wall_jump = true
    if special_down && meter_cur > 0 strong_down = true;
    
    if window == 3 && window_timer == window_length-1 {
        x = upb_coords[0]
        y = upb_coords[1]
        //x -= spr_dir*50
    }
    
    if window == 1 || (window == 2 && window_timer == window_length) {
        if left_down && !right_down {
            spr_dir = -1;
        } else if right_down && !left_down {
            spr_dir = 1;
        }
    }
    
    if window == 5 && window_timer == 1 {
        hsp *= 0.2
    }
    
    if window == 6 {
        if !free || has_hit set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
        else reset_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE);
    }
}

if attack == 49 {
    if window == 1 {
        hurtboxID.sprite_index = sprite_get("fs_hurt")
        has_hit_player = false;
        meter_cur = clamp(meter_cur - 10, 0 , meter_max)
    }
    
    if window == 4 {
        meter_cur = clamp(meter_cur + 10, 0 , meter_max)
    }
    
    if window >= 2 {
        hsp = 0
        vsp = 0
    }
    
    if window == 3 && window_timer == window_length && !has_hit_player {
        if free set_state(PS_IDLE_AIR)
        else set_state(PS_IDLE)
    }
    
    if window == 6 && window_timer == 1 {
        sound_play(asset_get("sfx_charge_blade_ready"))
    }
    
    if window == 5 && window_timer == window_length {
        x -= spr_dir*50
    }
    
    if window == 8 {
        meter_cur = clamp(meter_cur - 10, 0, meter_max)
    }
    
    if window == 8 && window_timer == window_length {
        if free set_state(PS_IDLE_AIR)
        else set_state(PS_LANDING_LAG)
    }
}

if window <= 2 user_event(0)