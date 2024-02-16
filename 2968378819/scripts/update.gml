//
stock_number = get_player_stocks(player)
if (state == PS_RESPAWN){
    i_died = true;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_RESPAWN){
    i_died = false;
}

if state == PS_WAVELAND{
    if state_timer <= uptilt_buff_window{
        uptilt_buffed = true;
    }
    else{
        uptilt_buffed = false;
    }
}
if (state != PS_WAVELAND && state != PS_ATTACK_GROUND){
    uptilt_buffed = false;
}