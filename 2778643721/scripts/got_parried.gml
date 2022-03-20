nspecial_gague = 0;
nspecial_charge = 0;
if (my_hitboxID.type == 1 or my_hitboxID.type == 2 && my_hitboxID.projectile_parry_stun = 1){
if (instance_exists(portal1) && instance_exists(portal2)){
    portal1.shoulddie = true;
    portal2.shoulddie = true;
}
}
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 4){
    apple.owner = hit_player_obj.player;
    apple.spr_dir *= -1;
    apple.hsp = 8*apple.spr_dir;
    apple.vsp = -8;
}