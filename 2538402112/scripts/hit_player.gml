//hitbox_init
if has_rune("G"){
    if my_hitboxID.attack = AT_FSPECIAL{
        grov_pouncex = hit_player_obj.x
        grov_pouncey = hit_player_obj.y
        if free grov_pouncey -= hit_player_obj.char_height/2
        grov_fspecial_airuse = false
        grov_pounce_foe_id = hit_player_obj
    }
}

if my_hitboxID.attack = AT_DAIR && my_hitboxID.hbox_num < 6{
    hit_player_obj.should_make_shockwave = false;
}