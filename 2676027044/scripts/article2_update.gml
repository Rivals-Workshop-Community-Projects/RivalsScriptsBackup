// article2_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++

if (state == 1){
	if (state_timer == 1){
		random_life = clamp(random_func( 2, 2, true), 15, 30);
	}

	if (state_timer == random_life){
		instance_destroy();
		exit;
	}
}


if (state == 0){
	if (state_timer == 18){
		instance_destroy();
		exit;
	}
}

if (state == 2){
	if (instance_exists(player_id.special_shadowball)){
		if (player_id.special_shadowball.hsp < 0){
			x = player_id.special_shadowball.x - 7;
		}
		else {
			x = player_id.special_shadowball.x + 7;		
		}
		y = player_id.special_shadowball.y;
	}
	else {
		instance_destroy();
		exit;
	}
}
