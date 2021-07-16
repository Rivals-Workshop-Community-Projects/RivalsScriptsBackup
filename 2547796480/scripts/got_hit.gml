///



move_cooldown[AT_USPECIAL] = 0 
move_cooldown[AT_DSPECIAL] = 0 

if move_cooldown[AT_EXTRA_3] = 0 && enemy_hitboxID.type == 1 {
	move_cooldown[AT_EXTRA_3] = 30
	if hit_player_obj.ANwounded > 0 {
	   hit_player_obj.ANwounded -= 1
	}
}

if drop == 0 {
	ntarget = 0
}

if  cheapmode = 1{
    set_attack (AT_EXTRA_2)
    window = 4
    window_timer = 0
    inloop = 1
}
