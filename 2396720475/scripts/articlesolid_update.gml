// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++

if (free){
	vsp += .5;
}

if (state_timer == 1){
	state = 1;
}

if (state == 1){ 
	if (hsp > 0){
		hsp -= .05;
	}

	if (hsp < 0){
		hsp += .05;
	}
	
	with (pHitBox){
		if (place_meeting(x, y, other)){
		
			other.player_id.create_moving = true;
			other.player_id.create_x = other.x;
			other.player_id.create_y = other.y;
	
		}
	}

}

if (state == 2){ // Box 2

	with (pHitBox){
		if (place_meeting(x, y, other)){
		
			other.player_id.create_moving = true;
			other.player_id.create_x = other.x;
			other.player_id.create_y = other.y;
	
			health_check = true;
		
		}
	}

}

if (state == 3){ // 

	var random_function = random_func(0, 2, true);
	if (random_function <= 0.5){
		random_function += 1;
	}
	if (random_function >= 1.75){
		random_function -= 0.25;
	}
	sound_play(sound_get("heartcollect"), false, noone, .3, random_function);
	player_id.Box = noone;
	instance_destroy();
	exit;
}

if (health_check){
	health_check = false;
	player_id.box_health = player_id.box_health - 1;
}


if (state_timer == 990 || y > room_height - 50){
	sound_play(sound_get("box3_sfx"));
	instance_destroy();
	player_id.trailer_effect = true;
//	player_id.Box = noone;
	exit;
}

if ((state_timer < 990 && state_timer > 985) || (state_timer < 980 && state_timer > 975) || (state_timer < 970 && state_timer > 965) || (state_timer < 960 && state_timer > 955) || (state_timer < 950 && state_timer > 945) || (state_timer < 940 && state_timer > 935)){
	image_alpha = 0;
}

if ((state_timer < 985 && state_timer > 980) || (state_timer < 975 && state_timer > 970) || (state_timer < 965 && state_timer > 960) || (state_timer < 955 && state_timer > 950) || (state_timer < 945 && state_timer > 940) || (state_timer < 935 && state_timer > 930)){
	image_alpha = 1;
}

if (y < 0 - 300 || y > room_height + 300 || x > room_width + 300 || x < - 300 ){
//	player_id.move_cooldown[AT_DSPECIAL] = 0;

	spawn_hit_fx(x, y, player_id.hit_small1);
	sound_play(sound_get("box3_sfx"));
	player_id.trailer_effect = true;
	instance_destroy();
//	player_id.Box = noone;
	exit;
}