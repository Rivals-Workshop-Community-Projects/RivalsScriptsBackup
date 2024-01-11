//got_parried
if my_hitboxID.attack = AT_FTILT{
    was_parried = true;
}
if my_hitboxID.attack = AT_FSPECIAL{
    my_hitboxID.destroyed = true;
}
if my_hitboxID.attack = AT_DSPECIAL && (my_hitboxID.hbox_num >= 4){
    state = PS_PRATFALL;
}
if my_hitboxID.attack = AT_DTHROW{
    my_hitboxID.destroyed = true;
    if !has_rune("O") move_cooldown[AT_DTHROW] = 150;
}