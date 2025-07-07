if grabbed_player_obj != noone && ( state == PS_HITSTUN || state == PS_HITSTUN_LAND ){
    grabbed_player_obj.visible = true;
    grabbed_player_obj = noone;
}