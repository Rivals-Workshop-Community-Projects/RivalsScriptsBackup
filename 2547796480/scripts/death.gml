///


with pHitBox {
    if player_id = other.id {
    destroyed = true 
    }
}


if get_gameplay_time() <= 2 {
 cheapmode = 1   
}


if  cheapmode = 1   {
    set_attack (AT_EXTRA_2)
    window = 4
    window_timer = 0
}

batt = 5

