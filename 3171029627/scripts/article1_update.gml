
spr_dir = player_id.torment_opponent.spr_dir;

//State 0: One Spear
if (state == 0){
	sprite_index = sprite_get("torment_range1");
	x = player_id.torment_opponent.x;
	y = player_id.torment_opponent.y-30;
}

//State 1: Two Spears
if (state == 1){
	sprite_index = sprite_get("torment_range2");
	x = player_id.torment_opponent.x;
	y = player_id.torment_opponent.y-30;
}

//State 2: Three Spears
if (state == 2){
	sprite_index = sprite_get("torment_range3");
	x = player_id.torment_opponent.x;
	y = player_id.torment_opponent.y-30;
}


//Dying
if (shoulddie == true){
	player_id.killarticles = false;
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;

//Adding potential % damage
if(state_timer >= 90/(state+1)){
	state_timer = 0;
	if(number_ones >= 9){
        if(number_tens >= 9){
        	//Maximum time
            state_timer = 0;
            number_ones = 9;
            number_tens = 9;
        } else {
        	number_ones = 0;
        	if (!player_id.dspecial_grab && number_tens < 2){
            number_tens++;
        	}
        }
    } else {
    	if (!player_id.dspecial_grab && number_tens < 2){
        number_ones++;
    	}
    }
}