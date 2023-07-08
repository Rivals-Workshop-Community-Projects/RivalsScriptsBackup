
//Make time progress
state_timer++;

//State 0 - Travelling NSpecial
if (state == 0){
	ignores_walls = true;
	starts_moving = true;
	sprite_index = sprite_get("trident_spin"); 
	mask_index = sprite_get("trident_spin_mask");
	image_index += 0.25;
	if (state_timer <= 15) hsp = 12*spr_dir;
	if (state_timer > 15 && state_timer <= 30) hsp -= 0.75*spr_dir;
	if (state_timer > 30 && state_timer <= 45) hsp += 1*spr_dir;
	if (!instance_exists(spinning_hitbox)){
		spinning_hitbox = create_hitbox(AT_NSPECIAL, 1, x+15*spr_dir, y);
	}
	if (image_index == 2){
		sound_play(asset_get("sfx_spin"));
	}
	if (state_timer >= 30){
		if (state_timer == 30){
			spr_dir *= -1;
		}
		if (place_meeting(x, y, player_id)){
			shoulddie = true;
		}
		//hsp = 10*spr_dir;
		if (state_timer > 45){
			trident_dir = point_direction(player_id.x, player_id.y-20, x, y);
			trident_hsp = lengthdir_x(14, trident_dir);
			trident_vsp = lengthdir_y(14, trident_dir);
			hsp = -trident_hsp;
			vsp = -trident_vsp;
		}
	}
}

//State 1 - Stops spinning
if (state == 1){
	ignores_walls = true;
	prev_state = 5;
	sprite_index = sprite_get("trident_stall");  
	mask_index = sprite_get("trident_stall");
	image_index += 0.25;
	if (hsp != 0){
		hsp *= 0.75;
	}
	if (image_index == 1.5){
		vsp = 0;
	}
	if (image_index == 4.5){
		vsp = -5.5;
	}
	if (image_index == 6){
		drop_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y+20);
	}
	if (image_index == 6.5){
		state = 2;
		image_index = 0;
		vsp = 0;
	}
}

//State 2 - Starts dropping
if (state == 2){
	ignores_walls = true;
	sprite_index = sprite_get("trident_drop");  
	mask_index = sprite_get("trident_mask");
	image_index += 0.25;
	if (instance_exists(drop_hitbox)){
		drop_hitbox.y = y+50;
	}
	hsp = 0;
	y += 20; 
	if (!free || (place_meeting(x,y+6,asset_get("par_block")) || place_meeting(x,y+6,asset_get("par_jumpthrough")))){
		if (instance_exists(drop_hitbox)){
			instance_destroy(drop_hitbox);
		}
		state = 3;
		image_index = 0;
		sprite_index = sprite_get("trident_crash");
		sound_play(asset_get("sfx_fishing_rod_land"));
	}
}

//State 3 - Crash and Idle
if (state == 3){
	ignores_walls = false;
	if (sprite_index = sprite_get("trident_crash")){  
	image_index += 0.3;
	hsp = 0;
	vsp = 0; 
		if (image_index >= 3){
			sprite_index = sprite_get("trident_idle");  
			image_index = 0;
			if (!place_meeting(x,y+6,asset_get("par_block")) && !place_meeting(x,y+6,asset_get("par_jumpthrough"))){
				state = 2;
			}
		}
	}
}

//State 4 - Recall Start
if (state == 4){
	ignores_walls = true;
	if (player_id.x >= x){
		spr_dir = 1;
	}
	if (player_id.x < x){
		spr_dir = -1;
	}
	if (prev_state == 7){
		x = player_id.trident_opponent.x;
		y = player_id.trident_opponent.y;
	}
	if (instance_exists(drop_hitbox)) instance_destroy(drop_hitbox);
	sprite_index = sprite_get("trident_recall_start"); 
	mask_index = sprite_get("trident_recall_start");
	vsp -= 0.2; 
	if (vsp <= 1.2){
		sprite_index = sprite_get("trident_recall_active");  
		state = 5;
	}
}

//State 5 - Recalling
if (state == 5){
	ignores_walls = true;
	if (prev_state == 7){
		x = player_id.trident_opponent.x;
		y = player_id.trident_opponent.y;
	}
	image_index += 0.25;
	if (image_index >= 4.3){
		if (image_index >= 6.3){
			state = 6;
			sprite_index = sprite_get("trident_spin"); 
			mask_index = sprite_get("trident_spin_mask");
		}
	}
}

//State 6 - Moving Back
if (state == 6){
	starts_moving = true;
	ignores_walls = true;
	image_index += 0.25;
	if (!instance_exists(spinning_hitbox)){
		spinning_hitbox = create_hitbox(AT_NSPECIAL, 1, x+15*spr_dir, y);
	}
		if (image_index == 2){
			sound_play(asset_get("sfx_spin"));
		}
		trident_dir = point_direction(player_id.x, player_id.y-10, x, y);
		trident_hsp = lengthdir_x(13, trident_dir);
		trident_vsp = lengthdir_y(13, trident_dir);
		hsp = -trident_hsp;
		vsp = -trident_vsp;
		if (place_meeting(x, y, player_id)){
			player_id.window = 3;
			player_id.window_timer = 0;
			shoulddie = true;
		}
}

//State 7 - Stuck
if (state == 7){
	prev_state = 7;
	sprite_index = asset_get("empty_sprite"); 
	mask_index = asset_get("empty_sprite"); 
	hsp = 0;
	vsp = 0;
	x = player_id.trident_opponent.x;
	y = player_id.trident_opponent.y;
}

//State 8 - Thunderstrike
if (state == 8){
	ignores_walls = false;
	sprite_index = sprite_get("trident_strike")  
	image_index += 0.25;
	hsp = 0;
	vsp = 0; 
	if (image_index >= 4.5){
		sprite_index = sprite_get("trident_idle");  
		image_index = 3;
		state = 3;
	}
}

if ((state == 0 || state == 6) && place_meeting(x,y,asset_get("par_block"))){
	inside_ground = true;
}
else inside_ground = false; 


if (y > room_height + 200 && state == 2){//x > room_width or 
	shoulddie = true;
	player_id.move_cooldown[AT_NSPECIAL] = 120;
	player_id.move_cooldown[AT_DSPECIAL] = 120;
	player_id.move_cooldown[AT_DSPECIAL_2] = 120;
}

//Dying
if (shoulddie == true){
	player_id.killarticles = false;
    instance_destroy();
    exit;
}





