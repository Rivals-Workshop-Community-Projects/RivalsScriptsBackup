//no. 1 article updating

lifetime -= 1

if (telecooldown > 0){
    telecooldown -= 1;
}

if (instance_exists(player_id.window_art[0]) && instance_exists(player_id.window_art[1]) || player_id.has_a_window){
    otherside_exists = 1
} else{
    otherside_exists = 0
}

if (telecooldown != 0 || otherside_exists = 0){
    if (sprite_index == sprite_get("window_active")){
        sprite_index = sprite_get("window_inactive");
    }
} else{
    if (sprite_index != sprite_get("window_active")){
        sprite_index = sprite_get("window_active");
    }
}

if (free == true){
    if (vsp <= win_fallspd - win_grav){
        vsp += win_grav;
    }
    if (hsp != 0){
        hsp = (clamp(hsp * sign(hsp) - win_grn_fric, 0, 1000)) * sign(hsp);
    }
    telecooldown = 10;
}

if (free == false){
    vsp = 0;
    if (hsp != 0){
        hsp = (clamp(hsp * sign(hsp) - win_grn_fric, 0, 1000)) * sign(hsp);
    }
}

if (sprite_index == sprite_get("window_land")){
    if (image_index > image_number - 1){
        sprite_index = sprite_get("window_inactive");
        image_speed = 0.1;
    }
}

if (window_0_or_1 == 0){
    tele_to_x = player_id.window_x[1];
    tele_to_y = player_id.window_y[1];
}

if (window_0_or_1 == 1){
    tele_to_x = player_id.window_x[0];
    tele_to_y = player_id.window_y[0];
}

if (telecooldown == 0 && otherside_exists == 1){
    with (oPlayer){
        if (place_meeting(x, y, other) && vsp > 0){
            x = other.tele_to_x + x - other.x + hsp;
            y = other.tele_to_y + y - other.y - vsp;
            vsp = vsp * -0.8;
            with (other.player_id){
                sound_play(sfx_bom)
                if (instance_exists(window_art[0])){
                    window_art[0].telecooldown = 60;    
                }
                if (instance_exists(window_art[1])){
                    window_art[1].telecooldown = 60;    
                }
            }
        }
    }
    with (pHitBox){
        if (place_meeting(x, y, other) && vsp > 0 && type == 2 && grounds != 1 && hit_priority > 0 && does_not_reflect == false){
            x = other.tele_to_x + y - other.y + hsp;
            y = other.tele_to_y + y - other.y - vsp;
            vsp = vsp * -0.8;
            with (other.player_id){
                sound_play(sfx_bom)
                if (instance_exists(window_art[0])){
                    window_art[0].telecooldown = 12;    
                }
                if (instance_exists(window_art[1])){
                    window_art[1].telecooldown = 12;    
                }
            }
        }
    }
}

if (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) || player_id.window_art[0] != id && player_id.window_art[1] != id || player_id.has_a_window == true && player_id.window_rot == window_0_or_1 || lifetime <= 0){
    should_be_destroyed = 1
}

if (should_be_destroyed == 1){
    spawn_hit_fx(x, y, player_id.vfx_ify);
    instance_destroy();
}