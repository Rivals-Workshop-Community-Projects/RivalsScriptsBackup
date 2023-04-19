
//State 0 - Initial Spawn
if (state == 0){
	image_index += 0.25;
	if (state_timer > 5){
		vsp += .25;
	}
	if (state_timer > 25){
		vsp = 3;
	}
}

//Touches the player
if(place_meeting(x, y, player_id)){
		player_id.move_cooldown[AT_FSPECIAL] = 0;
		player_id.fspecial_used = false;
		spawn_hit_fx(x, y, player_id.hfx_wind_small);
		sound_play(asset_get("mfx_coin"));
		shoulddie = true;
	}


if (x > room_width or y > room_height + 200){
	shoulddie = true;
}

//Dying
if (shoulddie == true){
	player_id.move_cooldown[AT_FSPECIAL] = 0;
	player_id.fspecial_used = false;
	player_id.killarticles = false;
    instance_destroy();
    exit;
}


//Make time progress
state_timer++;





