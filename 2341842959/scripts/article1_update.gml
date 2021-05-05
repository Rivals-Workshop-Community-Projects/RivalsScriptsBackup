//article1_update - runs every frame the article exists
//if (replacedcount > maxarticles){
//    shoulddie = true;
//}


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)


//Make time progress

state_timer++;

if (state_timer > 435){
	image_index = 1;
	state = 3;
}

with (asset_get("pHitBox")){
	
if (damage > 0 && kb_value > 0){
	if (place_meeting(x,y,other.id) && other.player != player){
		if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
			other.state_timer = 451;
			other.image_index = 1;
			other.state = 3;
    	}
	}
}

}

if (player_id.state == PS_RESPAWN || player_id.state == PS_DEAD){
	state_timer = 436;
	image_index = 1;
	state = 3;
}

if (player_id.levei_parry == true){
	state_timer = 451;
	image_index = 1;
	state = 3;
}

//depth = -99;

//if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
//	sound_play(asset_get("sfx_clairen_hit_med"));
//	spawn_hit_fx(floor(x),floor(y),256);
//	shoulddie = true;
//}

with (asset_get("pHitBox")){
	if ((attack == AT_NSPECIAL || attack == AT_DSPECIAL) 
	&& (place_meeting(x,y,other.id) && other.player_id = player_id) && other.state != 2){
		other.image_index = 0;
		other.state = 2;
		other.state_timer = 0;
	}
}


//State 0: Spawning
if (state == 0){
	sprite_index = sprite_get("CloudSpawn");
	if (state_timer <= 15){
		image_index += .15;	
	}
	if (state_timer > 15){
		state = 1;
	}
    hsp = 0;
	vsp = 0;
}

//State 1: Idle
if (state == 1){
	sprite_index = sprite_get("cloud");
	image_index += .1;	
    hsp = 0;
	vsp = 0;
}

//State 2: Blow up
if (state == 2){
	sprite_index = sprite_get("Cloud_Explode");
	image_index += .15;	
    hsp = 0;
	vsp = 0;
	if (state_timer == 9){
		player_id.explosion_cont++;
		sound_play(asset_get("sfx_ell_fist_explode"));
		create_hitbox( AT_DSPECIAL, 1, x, y-30);
	}
	if (state_timer == 45){
		shoulddie = true;
	}
}

//State 3: Despawning
if (state == 3){
	sprite_index = sprite_get("CloudSpawn");
	image_index -= .15;	

	if (state_timer >= 450){
		shoulddie = true;
	}
    hsp = 0;
	vsp = 0;
}


if (shoulddie == true){
        player_id.killarticles = false;
        instance_destroy();
        exit;
}


