if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    cannonball.state_timer = 0;
    cannonball.hsp *= -1;
    cannonball.vsp *= -1;
    cannonball.spr_dir *= -1;
    cannonball.owner = hit_player;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && attack == AT_FSPECIAL && window == 2){
    window = 3;
    window = 0;
}
if (my_hitboxID.attack == AT_USPECIAL){
    set_state(PS_PRATFALL);
}
cannonball_charge = 0;