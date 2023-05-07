//got_parried
if (my_hitboxID.attack == AT_NSPECIAL){
    if (window < 4){
		window = 4
		window_timer = 0
	}
}

if (my_hitboxID.attack == AT_DATTACK){
    if (window < 4){
		window = 4
		window_timer = 0
	}
}

with obj_article1 if player_id == other.id {
    state = 2
	state_timer = 0
}