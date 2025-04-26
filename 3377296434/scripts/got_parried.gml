if (state == (PS_ATTACK_GROUND || PS_ATTACK_AIR) && attack == AT_DSPECIAL_2){
    window = 3;
    window_timer = 0;
}

if (my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack ==  AT_DSPECIAL_2){
    if (brick.state == 0 || brick.state == 3){
    brick.state = 2;
    brick.state_timer = 0;
    brick.hsp = 0;
    brick.vsp = -8;
    }
}