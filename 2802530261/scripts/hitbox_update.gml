//hitbox_update
if(place_meeting(x, y, player_id) && attack == AT_DSTRONG && y > 0){
    if(hbox_num == 1){
        player_id.hsp = 8;
    }else if(hbox_num == 2){
        player_id.vsp = -8;
    }else if(hbox_num == 3){
        player_id.hsp = -8;
    }else if(hbox_num == 4){
        player_id.vsp = 8;
    }
}

if(attack == AT_FSPECIAL && destroyed == true){
    switch(missile_sprite){
        case 0:
        sound_play(sound_get("missile_hit"));
        break;
        case 1:
        sound_play(sound_get("super_hit"));
        break;
        case 2:
        sound_play(sound_get("ice_hit"));
        break;
    }
}

if(attack == AT_FSPECIAL){
    hsp = (4 + (hitbox_timer < 60? hitbox_timer/60 * 10: 10)) * spr_dir;
}

if(type == 2 && was_parried && rotated_p == 0){
    rotated_p = 1;
    spr_dir *= -1;
}