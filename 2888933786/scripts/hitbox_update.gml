if attack == AT_DATTACK && hbox_num == 1 {
spr_dir = player_id.spr_dir * -1;
}

if (attack == AT_DSPECIAL){
    no_absorb = true;
    proj_reflectable = 0;
}

if (attack == AT_NSPECIAL or attack == AT_DATTACK){
    if (type == 2){
        proj_reflectable = 1 ;
        MattCanGrab = true;
        MorshuCanGrab = true;
    }
}