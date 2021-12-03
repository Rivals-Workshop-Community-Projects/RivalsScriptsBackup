//hit-player

if my_hitboxID.effect == 99 || my_hitboxID.effect == 11 {
    //sound_play(asset_get("sfx_clairen_hit_strong"))
    switch my_hitboxID.attack {
        case AT_JAB: case AT_UTILT: case AT_NAIR: case AT_FTILT: case AT_UAIR: case AT_USPECIAL:
        sound_play(sound_get("bar_hit"))
        break;
        
        case AT_FSPECIAL_2:
        if my_hitboxID.hbox_num < 5 {
            sound_play(sound_get("bar_hit"))
        } else {
            sound_play(sound_get("bar_sweetspot_hit"))
        }
        has_reduced = true
        break;
        
        default:
        sound_play(sound_get("bar_sweetspot_hit"))
        break;
    }
    
    if !has_reduced && !break_active {
        meter_prev = meter_cur;
        meter_cur -= reduce_value;
        meter_flash_timer = 30;
        has_reduced = true;
    } else if break_active && meter_cur == meter_max {
        meter_cur -= 1
    }
} else if hit_player_obj != id && meter_cur != meter_max && my_hitboxID.type == 1 {
    meter_prev = meter_cur;
    /*
    if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
        meter_cur = clamp(meter_cur + hit_value*2, 0, meter_max)
    } else {
        meter_cur = clamp(meter_cur + hit_value, 0, meter_max)
    }
    */
    
    if !has_increased || (my_hitboxID.attack != AT_NAIR && my_hitboxID.attack != AT_USPECIAL) {
        meter_cur = clamp(meter_cur + hit_value, 0, meter_max)
        meter_flash_timer = meter_flash_val;
        spark_timer = spark_val;
        spark_sprite = sprite_get("sparks" + string((timer mod 2) + 1));
        has_increased = true;
    }
    
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3 {
    spawn_hit_fx(my_hitboxID.x + my_hitboxID.hsp, my_hitboxID.y + my_hitboxID.vsp, 304)
}

if my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3) {
    hit_player_obj.hsp = 0;
    hit_player_obj.old_hsp = 0;
}

//xslash
if my_hitboxID.attack == AT_FSPECIAL_2 {
    if my_hitboxID.hbox_num != 5 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
        hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x, 0.4)
        hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y+(hit_player_obj.char_height/2), 0.4)
    }
    switch my_hitboxID.hbox_num {
        case 1: sound_play(sound_get("xslash_hit1")) break;
        case 2: sound_play(sound_get("xslash_hit2")) break;
        case 3: sound_play(sound_get("xslash_hit3")) break;
        case 4: sound_play(sound_get("xslash_hit4")) break;
        case 5: sound_play(sound_get("xslash_hit5")) break;
    }
}