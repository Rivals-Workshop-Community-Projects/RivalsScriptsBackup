if (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_FSPECIAL ){
    sound_play(sound_get("sfx_punch"), false, noone, 1, 1);
}

if (my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_USTRONG_2 && my_hitboxID.hbox_num == 2 || my_hitboxID.attack == AT_NSPECIAL_AIR){
    sound_play(sound_get("kick"), false, noone, 0.7, 1);
}

if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 2 || my_hitboxID.attack == AT_FSTRONG_2 && my_hitboxID.hbox_num == 1 ){
    sound_play(sound_get("kick2"), false, noone, 0.7, 1);
}

if (my_hitboxID.attack == AT_DSPECIAL){
    sound_play(asset_get("sfx_blow_medium1"));
}

if (instance_exists(brick)){
    if (my_hitboxID.attack == AT_DSPECIAL && brick.state == 0){
        brick.state = 2;
        brick.state_timer = 0;
        brick.y -= 4;
        brick.vsp = -8;
        brick.hsp = -4*brick.spr_dir;
    }
    if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2 && brick.state == 4){
        brick.state = 2;
        brick.state_timer = 0;
        brick.y -= 4;
        brick.vsp = -8;
        brick.hsp = 0;
    }
}