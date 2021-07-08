// parried

if my_hitboxID.attack = AT_NSPECIAL && my_hitboxID.hit_priority == 7{
    // my_hitboxID.destroyed = true
    // if has_rune("H") exit; //If FSpecial cooldown is turned off
    // move_cooldown[AT_FSPECIAL] = 420;
    // grov_wandparried = 1
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.vsp *= 1.5;
}
if my_hitboxID.attack = AT_FSPECIAL{
    my_hitboxID.destroyed = true
}