// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++

if (state_timer == 1){
	state = 1;
}

if (state == 1){

 	if (image_angle >= 270 || image_angle <= 90){
		image_angle = 0;
		x = x + 5;
	}
	else {
		image_angle = 180;
		x = x - 5;
	}

	vsp = 0;
	hsp = 0;
	
	state = 2;	
}

if (state == 2){

	if (instance_exists(player_id.Box)){
		with (player_id.Box){
			if (place_meeting(x, y, other)){
				other.canmove = true;
				
				other.stored_x = x - other.x;
				other.stored_y = y - other.y + 1;
			}
		}
	}
			
	if (instance_exists(player_id.movingbox) && canmove == true){
		state = 3;
	}

	if (canmove && new_box){
		state = 4;
	}

	if (!place_meeting(x, y, asset_get("par_block"))){
		state = 4;
	}
}

if (state == 3){ // Moves with Box

	if (canmove && new_box){
		state = 4;
	}
	
	if (instance_exists(player_id.movingbox) && canmove == true){
		if (standing){
			with(oPlayer){
				if ((place_meeting(x, y - 3, other) && y < other.y + 10) || (point_distance( x, y, other.x, other.y) < 20 && y < other.y)){
					if (state_cat != SC_AIR_COMMITTED && !jump_pressed && other.vsp > -1){
						free = false;
						y = other.y - 5;
					}
					
					if ((state_cat != SC_AIR_COMMITTED)){
						if (other.image_angle == 0){
							x = other.x + 25;
						}
						if (other.image_angle == 180){
							x = other.x - 25;
						}
					}
					
				}
			}
		}	
		x = player_id.movingbox.x - stored_x;
		y = player_id.movingbox.y - stored_y;
	}
	
	if (!instance_exists(player_id.movingbox) && !instance_exists(player_id.Box)){
		state = 4;
	}
}


if (state == 4){
	sound_play(sound_get("needle1_sfx"));
	instance_destroy();
	exit;
}

if (state_timer == 990){
	sound_play(sound_get("needle1_sfx"));
	instance_destroy();
	exit;
}

if ((state_timer < 990 && state_timer > 985) || (state_timer < 980 && state_timer > 975) || (state_timer < 970 && state_timer > 965) || (state_timer < 960 && state_timer > 955) || (state_timer < 950 && state_timer > 945) || (state_timer < 940 && state_timer > 935)){
	image_alpha = 0;
}

if ((state_timer < 985 && state_timer > 980) || (state_timer < 975 && state_timer > 970) || (state_timer < 965 && state_timer > 960) || (state_timer < 955 && state_timer > 950) || (state_timer < 945 && state_timer > 940) || (state_timer < 935 && state_timer > 930)){
	image_alpha = 1;
}

if (y < 0 - 300 || y > room_height + 300 || x > room_width + 300 || x < - 300 ){
	sound_play(sound_get("needle1_sfx"));
	instance_destroy();
	exit;
}