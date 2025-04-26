if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num = 3){
    x -= 3*spr_dir;
}

if (my_hitboxID.attack == AT_NSPECIAL){
    if (my_hitboxID.hbox_num == 1){
        
    if (instance_exists(cannonball)){
        with cannonball{
        active_time = 0;
        state = 1;
        state_timer = 0;
        vsp = -6;
        hsp *= -0.5;
    }
    }
    }
}

if (my_hitboxID.attack == AT_USPECIAL){
    if (my_hitboxID.hbox_num == 1){
        clowncar.vsp = -6;
    }
}

if (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1){
    sound_play(asset_get("sfx_blow_medium1"));
}