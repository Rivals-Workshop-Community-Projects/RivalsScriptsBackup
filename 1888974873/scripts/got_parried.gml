if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.parry_thing == false){
    my_hitboxID.grounds = 2;
    my_hitboxID.hsp = my_hitboxID.hsp*2;
    my_hitboxID.vsp = my_hitboxID.vsp*.75;
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.parry_thing = true;
}

if (has_rune("O")){
    if (random_func(1,2,true) == 1){
        sound_play (sound_get("night_walk_wot"));
        y -= 750;
    }
}