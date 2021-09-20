
//Make time progress
state_timer++;

//Gets destroyed on Clairen's Plasma Field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && state_timer > 0) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	state_timer = -40;
}

//Destroyed by enemy hits
with (asset_get("pHitBox")){
	if (damage > 0 && kb_value > 0 && hit_priority > 0 && other.state_timer > 0){
		if (place_meeting(x,y,other.id) && other.player != player){
			if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
				other.arrow_active_hitbox.destroyed = true;	
				other.state_timer = -24;
		    }
		}
	}
}

//Creates the initial hitbox after 20 frames
if (state_timer == 20){
	arrow_active_hitbox = create_hitbox(AT_USPECIAL, 1, x, y-40);	
}

//If the hitbox somehow gets destroyed or moved
if (state_timer > 20){
		if (!instance_exists(arrow_active_hitbox)){
			state_timer = -24;
		}
		if (instance_exists(arrow_active_hitbox) 
		&& (arrow_active_hitbox.y > y+50 || arrow_active_hitbox.y < y-50)){
			state_timer = -24;
		}
}

//Creates the Launch Hitbox
if (state_timer == -25){
	create_hitbox(AT_USPECIAL, arrow_hitbox_num, x, y-50);
}

//Idle State
if (state_timer == -24 || state_timer == 470){
	state = 1;
//	image_index = 0;
}

//Should Die
if (state_timer == -4 || state_timer > 490){	//Destroys the arrow after 490 frames
	shoulddie = true;
}

//Changes the sprite
if (state_timer == -39){
	sprite_index = sprite_get("arrow_on");
}

//State 0: Idle
if (state == 0){
//	sprite_index = sprite_get("arrow_idle");
	image_index = arrow_hitbox_num-2;
}




//Dying
if (shoulddie == true){
//	sound_play(asset_get("mfx_player_ready"));	
	spawn_hit_fx( x, y-20, 194);
	player_id.killarticles = false;
    instance_destroy();
    exit;
}



