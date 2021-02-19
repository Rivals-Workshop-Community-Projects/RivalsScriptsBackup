if (attack == AT_TAUNT && secretpalette){
    attack = AT_TAUNT_2;
}

if (attack == AT_FSPECIAL){
    whip_tether = false;
    whip_cancel = false;
    whip_player = false;
    fspecial_point[0] = x;
    fspecial_point[1] = y - 70;
    point_hsp = 0;
    point_vsp = 0;
}
