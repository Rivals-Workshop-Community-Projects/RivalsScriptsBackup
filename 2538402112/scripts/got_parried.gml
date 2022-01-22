// parried

if my_hitboxID.attack = AT_FTILT{
    was_parried = true
}

if my_hitboxID.attack = AT_FTHROW && my_hitboxID.hit_priority == 7{
    // my_hitboxID.destroyed = true
    // if has_rune("H") exit; //If FSpecial cooldown is turned off
    // move_cooldown[AT_FSPECIAL] = 420;
    // grov_wandparried = 1
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.vsp *= 1.5;
    proj_angle = point_direction(0,0,abs(hsp),sign(hsp)*vsp);
}
if my_hitboxID.attack = AT_FSPECIAL{
    my_hitboxID.destroyed = true
}
if my_hitboxID.attack = AT_DSPECIAL && (my_hitboxID.hbox_num == 4){
    state = PS_PRATFALL
}
// if my_hitboxID.attack = AT_DSPECIAL && (my_hitboxID.hbox_num != 4){
//     grov_dspecial_parryed = true
// }
if my_hitboxID.attack = AT_DTHROW{
    my_hitboxID.destroyed = true
    move_cooldown[AT_DTHROW] = 150
}