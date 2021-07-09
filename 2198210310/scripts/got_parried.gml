//got-parried

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
    my_hitboxID.can_hit_self = true;
    my_hitboxID.hsp *= -1;
    my_hitboxID.vsp *= -1;
    my_hitboxID.spr_dir*=-1
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
    my_hitboxID.hitbox_timer = 0;
    fspecCooldown = 180;
}