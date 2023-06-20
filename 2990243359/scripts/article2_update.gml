
//Make time progress
state_timer++;

//State 0 - Spawn Cloud and initial strike
if (state == 0){
	sprite_index = sprite_get("thunder_start"); 
	image_index += 0.6;
	print(image_index)
	if (image_index >= 7.2){
		if (image_index == 7.2){
			if (player_id.attack == AT_DSPECIAL_2) tipper_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
			else {
				if (instance_exists(player_id.trident) && player_id.trident.state == 7) tipper_hitbox = create_hitbox(AT_DSPECIAL, 3, x, y);
				else tipper_hitbox = create_hitbox(AT_DSPECIAL, 4, x, y);
			}
		}
		if (image_index == 9){
			if (instance_exists(player_id.trident) && player_id.trident.state == 7){
				tipper_hitbox.image_xscale = 40/200;
				tipper_hitbox.image_yscale = 100/200;
			}
			else {
				tipper_hitbox.kb_value = 7;
				tipper_hitbox.kb_scale = .7;
				tipper_hitbox.damage = 5;
				tipper_hitbox.kb_angle = 60;
				tipper_hitbox.extra_hitpause = 9;
				tipper_hitbox.sound_effect = asset_get("sfx_absa_harderhit");
				tipper_hitbox.image_xscale = 40/200;
				tipper_hitbox.image_yscale = 100/200;
			}
		}
		if (image_index == 10.8){
			tipper_hitbox.y += -10;
			tipper_hitbox.image_xscale = 43/200;
			tipper_hitbox.image_yscale = 150/200;
		}
		if (image_index == 11.4){
			tipper_hitbox.y += 50;
			tipper_hitbox.image_yscale = 200/200;
		}
		if (image_index == 12){
			tipper_hitbox.y += 10;
			tipper_hitbox.image_yscale = 280/200;
		}
		if (image_index <= 9){
			tipper_hitbox.y += 10;	
		}
	}
	
	if (player_id.trident_opponent_hit == true){
		spawn_hit_fx( x, y-30, player_id.cloud_effect);
		spawn_hit_fx( player_id.trident_opponent.x, player_id.trident_opponent.y-30, 306);
		image_index = 0;
		state = 1;
	}
	
	if (image_index >= 12.2 && player_id.attack == AT_DSPECIAL_2 && player_id.window == 3 
	&& place_meeting(x, y+60, player_id)){
		spawn_hit_fx( x, y-30, player_id.cloud_effect);
		player_id.window = 4;
		player_id.window_timer = 0;
		image_index = 0;
		state = 1;
	}
	
	if (image_index >= 12.2 && instance_exists(player_id.trident) 
	&& place_meeting(x, y+60, player_id.trident)){
		create_hitbox(AT_DSPECIAL_2, 3, player_id.trident.x, player_id.trident.y-30);
		create_hitbox(AT_DSPECIAL_2, 4, player_id.trident.x, player_id.trident.y+12);
		sound_play(asset_get("sfx_absa_uair"));
		spawn_hit_fx( x, y-30, player_id.cloud_effect);
		player_id.trident.image_index = 0;
		player_id.trident.state = 8;
		image_index = 0;
		state = 1;
	}
	
	if (image_index >= 12.2){
		spawn_hit_fx( x, y-30, player_id.cloud_effect);
		tail_hitbox = tipper_hitbox;
		tail_hitbox.length = 180;
		state = 2;
		image_index = 0;
		vsp = 12;
	}
}

//State 1 - Strikes Trident
if (state == 1){
	sprite_index = sprite_get("thunder_strike");  
	image_index += 0.3;
	if (image_index >= 5){
		shoulddie = true;
	}
}

//State 2 - Misses Trident and Continues
if (state == 2){
	sprite_index = sprite_get("thunder_projectile_full");  
	mask_index = sprite_get("thunder_projectile_full");
	image_index += 0.3;
	tail_hitbox.y = y+100;
	vsp += .5;
	if (y > room_height + 200){
		shoulddie = true;
	}
	if (place_meeting(x, y-20, asset_get("par_block"))){
		if (instance_exists(tail_hitbox)){
			instance_destroy(tail_hitbox)
		};
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		vsp = 0;
		image_index = 0;
		state = 1;
	}
	if (player_id.attack == AT_DSPECIAL_2 && player_id.window == 3 && place_meeting(x, y+60, player_id)){
		if (instance_exists(tail_hitbox)){
			instance_destroy(tail_hitbox)
		};
		vsp = 0;
		player_id.window = 4;
		player_id.window_timer = 0;
		image_index = 0;
		state = 1;
	}
}

//Dying
if (shoulddie == true){
	if (instance_exists(tail_hitbox)){
			instance_destroy(tail_hitbox)
		};
	player_id.killarticles = false;
    instance_destroy();
    exit;
}





