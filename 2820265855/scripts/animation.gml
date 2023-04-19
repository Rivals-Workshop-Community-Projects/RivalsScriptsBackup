if(state == PS_SPAWN){
    sprite_index = sprite_get("intro");
}

if(state == PS_SPAWN){
    if(state_timer < 30){
        visible = false;
    } else {
        visible = true;
    }
    image_index = floor(image_number*(state_timer - 30)/(image_number*4));
    if(state_timer == 22 && !hitpause){
        var hfx = spawn_hit_fx(x - 160 * spr_dir, y-170, fx_portal);
        hfx.depth = depth - 1;
    }
    if(state_timer > 80){
        image_index = 20;
    }
    if(state_timer > 120){
        image_index = 21;
    }
    switch(state_timer){
        case 31:
        {
            sound_play(asset_get("sfx_ori_seinhit_heavy"));
            sound_play(asset_get("sfx_ice_dspecial_form"))
            var hfx = spawn_hit_fx(x - 168 * spr_dir, y-170, 67);
        }
        break;
        case 58:
        {
            sound_play(asset_get("sfx_zetter_downb"));
            sound_play(asset_get("sfx_ice_dspecial_ground"));
            sound_play(asset_get("sfx_blow_heavy1"));
            sound_play(asset_get("sfx_blow_heavy2"));
            shake_camera(2, 12)
            var hfx = spawn_hit_fx(x-15, y-10, 13);
            hfx.spr_dir = 1;
            var hfx = spawn_hit_fx(x+15, y-10, 13);
            hfx.spr_dir = -1;
            // var hfx = spawn_hit_fx(x - 160 * spr_dir, y-170, 112);
        }
        break;
    }
}

if((((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && hitpause && taunt_pressed) || drippy) && get_player_color(player) == 29){
    if(taunt_pressed){
    sound_play(sound_get("drip"));
    }
    sprite_index = sprite_get("drip");
    clear_button_buffer(PC_TAUNT_PRESSED);
    drippy = true;
}

if(!hitpause){
    drippy = false;
    if(attack == AT_FSTRONG_2 + AT_NTHROW && window_timer == 4){
        released = true;
    }
}