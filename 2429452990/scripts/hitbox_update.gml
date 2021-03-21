//hitbox_update




if (attack == AT_NSPECIAL && hbox_num = 2){
    if (!free){
        hsp = 0;
        rockgroundtimerstart = 1;
    }

    if (rockgroundtimerstart = 1){
    rockgroundtimer = rockgroundtimer + 1;
}

    if (rockgroundtimer = 1){
    sound_play(player_id.rockhitgroundsfx)
    image_xscale = 0;
    image_yscale = 0;
}

    if (rockgroundtimer = 15){
    length = 0;
    rockgroundtimer = 0;
}

}

