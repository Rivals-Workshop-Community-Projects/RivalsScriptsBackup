//got-parried

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
    my_hitboxID.can_hit_self = true;
    my_hitboxID.hsp *= -1;
    my_hitboxID.vsp *= -1;
}