///

hit_player_obj.ANwounded = 0

if my_hitboxID.effect != 9 && my_hitboxID.type == 2{
    parry_lag = 90
}

if my_hitboxID.effect == 9 && my_hitboxID.type == 2{
    parry_lag = 0
}