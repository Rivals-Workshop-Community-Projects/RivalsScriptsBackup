//State 0 - Initial Spawn
if (state == 0){
	image_index += 0.25;
	if (image_index > 4.5){
		sprite_index = sprite_get("point_idle"); 
		image_index = 0;
		state = 1;
	//	point_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
	}
}

if (state_timer < 440){
		player_id.move_cooldown[AT_NSPECIAL] = 71;
	}

//State 1 - Idle
if (state == 1){
	image_index += 0.25;
	//Point Lifetime
	if (state_timer > 420){
		sprite_index = sprite_get("point_die"); 
		image_index = 0;
		state = 3;
	}
	//If Uysal Airdodges into the Point
	if(place_meeting(x, y, player_id) && player_id.state == PS_AIR_DODGE && player_id.state_timer > 5){
		player_id.hurtboxID.sprite_index = sprite_get("airdash_hurt");
		player_id.hurtboxID.dodging = false;
		player_id.state = PS_ATTACK_AIR;
		player_id.state_timer = 1;
		player_id.attack = AT_EXTRA_1;
		state_timer = 425;
	}
	//If an enemy player is throw into a point
	if(place_meeting(x, y, oPlayer) && player_id.enemy_state == PS_HITSTUN){
		if(place_meeting(x, y, player_id)){}
		else {
			sprite_index = sprite_get("point_burst"); 
			image_index = 0;
			state = 2;	
			point_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
		}
	}
	//If an enemy player hits the point with a hitbox
	with (asset_get("pHitBox")){
		if (damage > 0 && kb_value > 0 && hit_priority > 0 && type == 1 && other.state_timer > 0){
			if (place_meeting(x,y,other.id) && other.player != player){
				if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
					other.state_timer = 425;
					other.article_was_hit = true;
			    }
			}
		}
	}
	//If FSpecial touches the Point
	if(place_meeting(x, y, player_id.bead_proj)){
		fspecial_colision = create_hitbox(AT_FSPECIAL, 2, x, y);
		instance_destroy(player_id.bead_proj);
		player_id.fspecial_used = false;
		player_id.move_cooldown[AT_FSPECIAL] = 120;
		spawn_hit_fx(x, y, player_id.hfx_wind_large);
		sound_play(asset_get("sfx_clairen_nspecial_grab_success"));
		fspecial_active = true;
		state_timer = 425;
	}
	//If the DSpecial Hitbox touches the point
	if(place_meeting(x, y, player_id.dspecial_hitbox)){
		player_id.dspecial_hit = true;
		instance_destroy(player_id.dspecial_hitbox);
		spawn_hit_fx(x, y, player_id.hfx_wind_large);
		sound_play(asset_get("sfx_forsburn_disappear"));
		sprite_index = sprite_get("point_burst"); 
		image_index = 0;
		state = 4;	
	}
}

//State 2 - Burst (Bounced enemy off of it)
if (state == 2){
	image_index += 0.3;
	//Pulls the enemy to the center of the point
	if (point_pull == true){
		enemy_caught.x = lerp(enemy_caught.x, x, 0.2);
		enemy_caught.y = lerp(enemy_caught.y, y+30, 0.2);
	}
	if (image_index == 4.2){
		point_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
	}
	if (image_index > 6.3){
		shoulddie = true;
	}
}
//State 3 - Despawn Animation
if (state == 3){
	image_index += 0.2;
	
	//If the Point "captured" an FSpecial projectile (lots of stuff in this lol)
	if (fspecial_active){
		if (instance_exists(fspecial_colision)){
			fspecial_colision.image_xscale += 0.8;
			fspecial_colision.image_yscale += 0.8;
			with (oPlayer){
				if (place_meeting(x, y, other.fspecial_colision) && player != other.player_id.player){
					other.target_x = x;
					other.target_y = y;
					instance_destroy(other.fspecial_colision);
				}	
			}
		}
		if (state_timer == 440){
			player_id.fspecial_homing = create_hitbox(AT_FSPECIAL, 1, x, y);
			player_id.fspecial_homing.length = 300;
			player_id.fspecial_homing.grounds = 1;
			player_id.fspecial_homing.walls = 1;
			homing_dir = point_direction(target_x, target_y-30, x, y);
			homing_hsp = lengthdir_x(18, homing_dir);
			homing_vsp = lengthdir_y(18, homing_dir);
			player_id.fspecial_homing.proj_angle = homing_dir;

			if ((player_id.fspecial_spr_dir == 1 && spr_dir == 1) || (player_id.fspecial_spr_dir == 1 && spr_dir == -1)) 
			player_id.fspecial_homing.proj_angle = homing_dir-180;
			
			player_id.fspecial_homing.hsp = -homing_hsp;
			player_id.fspecial_homing.vsp = -homing_vsp; 
		}
	}
	if (image_index > 6){
		shoulddie = true;
	}
}

//State 4 - DSpecial Explosion
if (state == 4){
	image_index += 0.25;
	if (image_index == 1.5){
		create_hitbox(AT_DSPECIAL, 2, x, y);
	}
	if (image_index > 6.3){
		shoulddie = true;
	}
}

if (x > room_width or y > room_height + 200){
	shoulddie = true;
}

//Dying
if (shoulddie == true){
	if (article_was_hit){
		player_id.move_cooldown[AT_NSPECIAL] = 120;
	}
	player_id.killarticles = false;
    instance_destroy();
    exit;
}


//Make time progress
state_timer++;





