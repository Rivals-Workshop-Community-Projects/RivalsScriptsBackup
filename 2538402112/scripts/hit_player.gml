//hit_player
if my_hitboxID.attack = AT_FSPECIAL{
    grov_pouncex = hit_player_obj.x;
    grov_pouncey = hit_player_obj.y;
    if free grov_pouncey -= 32;
    grov_fspecial_airuse = false;
    grov_pounce_foe_id = hit_player_obj;
    my_hitboxID.should_pounce = true;
    // destroyed_next = true;
}

if my_hitboxID.attack = AT_DAIR && my_hitboxID.hbox_num < 6{
    hit_player_obj.should_make_shockwave = false;
}
if my_hitboxID.attack = AT_DSPECIAL && my_hitboxID.hbox_num >= 4{
    hit_player_obj.should_make_shockwave = false;
}