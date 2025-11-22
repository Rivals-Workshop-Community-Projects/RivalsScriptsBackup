//when parried

if (attack == AT_FSPECIAL && attacking_now != 0){
    hsp = 0;
    vsp = -8;
    destroy_hitboxes();
    attack_end();
    set_state(PS_PRATFALL);
}