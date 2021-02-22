if (my_hitboxID.attack == AT_USTRONG){
    has_hit = true;
    has_hit_player = true;
}

if (my_hitboxID.attack == AT_DSPECIAL){
    has_hit = true;
    has_hit_player = true;
    my_hitboxID.destroyed = true;
}

if (my_hitboxID.attack == AT_FAIR){
    sound_play(asset_get("sfx_boss_fireball_land"));
}

if (my_hitboxID.attack == AT_DAIR){
    if (my_hitboxID.hbox_num == 4 && !down_down){
        old_vsp = -6;
    }
}