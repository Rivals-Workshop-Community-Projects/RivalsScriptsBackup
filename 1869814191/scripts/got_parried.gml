//got_parried.gml

with (hit_player_obj) {
	sansKR = 0;
	sansKR_timer = 0;
	sansKR_player = noone;
}

if (instance_exists(gasterBlaster)) {
    //gasterBlaster.state_timer = 0;
	gasterBlaster.state = 10;
}

// If FSPECIAL bone was parried, reset the timer. 
if my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num < 3 {
	my_hitboxID.hitbox_timer = 0
}