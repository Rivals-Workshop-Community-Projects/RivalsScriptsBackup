//Article updating

state_timer++;
switch (state){
	
	case 0: //Foresight spawn
	sprite_index = asset_get("empty_sprite");
	mask_index = sprite_get("idle");
	is_hittable = true;
	uses_shader = true;
	
	if (hit_player_obj < 0){
	prev_hsp = player_id.hsp;
	prev_vsp = player_id.vsp;
	}
	
	if (state_timer > 6){ instance_destroy(); exit; }
	//if (place_meeting( x, y, asset_get("par_block"))){ player_id.cooldowntime = 100; }
	x = player_id.x; //set to 
	y = player_id.y; //always be
	hsp = player_id.hsp; //on top of
	vsp = player_id.vsp; //Mecha Sonic's body
	
	if (hit_player_obj > 0 && hit_player_obj != player_id){
		//player_id.invincible = true;
		//player_id.hitpause = false; player_id.hitstop = false;
		//player_id.y = player_id.y-2;
		player_id.state = PS_ATTACK_GROUND; player_id.attack = AT_EXTRA_1;
		player_id.window = 1; player_id.window_timer = 0;
		//other.go_through = true;
		if (get_player_color(player_id.player) != 8) { sound_play(sound_get("instanttransmission")); }
		if (get_player_color(player_id.player) == 8) { sound_play(sound_get("EA_instanttransmission")); }
		state = 1; state_timer = 0;
		player_id.hsp = prev_hsp * 3; 
		player_id.vsp = prev_vsp * 3;
	}
	//if (done == true && (player_id.state != PS_HITSTUN || player_id.state != PS_HITSTUN_LAND) ){ instance_destroy(); exit; }
	//if (player_id.state == PS_HITSTUN){ player_id.cooldowntime = 10; }
	break;
	
	case 1: //Foresight
	hsp = 0;
	vsp = 0;
	uses_shader = true;
	player_id.invincible = true;
	player_id.invince_time = 5;
	sprite_index = sprite_get("foresight");
	mask_index = sprite_get("idle");
	depth = -20;
	
	if (((state_timer mod 3) == 0)){
		image_index++;
	}
	if (image_index >= 7){
		instance_destroy();
		exit;
	}
	break;
	
	case 2:
	//Spawn platform emerald
	mask_index = asset_get("empty_sprite");
	sprite_index = sprite_get("plat");

	if (player_id.state == PS_RESPAWN && state_timer < 20){
		state_timer = 0; vsp = 0;
		if (player_id.spr_dir == 1){ image_xscale = 1; }
		if (player_id.spr_dir == -1){ image_xscale = -1; }
	}
	else
	if (state_timer > 20 || state_timer > 2 && !(player_id.state == PS_RESPAWN)){
		vsp -= 0.001 * state_timer;
	}
	if (state_timer > 250){ instance_destroy(); exit; }
	break;
	
	case 3: //Emeralds that fly out of enemies
	uses_shader = false;
	can_be_grounded = true;
	ignores_walls = false;
	
	//Emerald flying out after parrying or respawning
	sprite_index = sprite_get("emrl");
	mask_index = sprite_get("emrl_mask");
	
	if (state_timer <= 1){
    with (asset_get("oPlayer")){
    OverallEmeralds -= 1;
    	}
	}
	
	if (state_timer < 10){
	image_index = ChaosEmerald;
	}

	switch(image_index){
		case 0:
		with (asset_get("oPlayer")){
		if (Blue == 0 && other.state_timer > 19){ Blue = 1; }
		if (Blue > 0 && other.state_timer <= 19){ other.ChaosEmerald = random_func(0, 7, true); }
		}
		break;
		
		case 1:
		with (asset_get("oPlayer")){
		if (Red == 0 && other.state_timer > 19){ Red = 1; }
		if (Red > 0 && other.state_timer <= 19){ other.ChaosEmerald = random_func(0, 7, true); }
		}
		break;
		
		case 2:
		with (asset_get("oPlayer")){
		if (Pink == 0 && other.state_timer > 19){ Pink = 1; }
		if (Pink > 0 && other.state_timer <= 19){ other.ChaosEmerald = random_func(0, 7, true); }
		}
		break;
		
		case 3:
		with (asset_get("oPlayer")){
		if (Yellow == 0 && other.state_timer > 19){ Yellow = 1; }
		if (Yellow > 0 && other.state_timer <= 19){ other.ChaosEmerald = random_func(0, 7, true); }
		}
		break;
		
		case 4:
		with (asset_get("oPlayer")){
		if (Gray == 0 && other.state_timer > 19){ Gray = 1; }
		if (Gray > 0 && other.state_timer <= 19){ other.ChaosEmerald = random_func(0, 7, true); }
		}
		break;
		
		case 5:
		with (asset_get("oPlayer")){
		if (Green == 0 && other.state_timer > 19){ Green = 1; }
		if (Green > 0 && other.state_timer <= 19){ other.ChaosEmerald = random_func(0, 7, true); }
		}
		break;
		
		case 6:
		with (asset_get("oPlayer")){
		if (Cyan == 0 && other.state_timer > 19){ Cyan = 1; }
		if (Cyan > 0 && other.state_timer <= 19){ other.ChaosEmerald = random_func(0, 7, true); }
		}
		break;
	}
	
	if (state_timer > 20){
	if (free == true){ vsp += .3; } // image_angle += 2;
	if (vsp > 8){ vsp = 8; }
	}
	
	if (bounced > 0 && free == false){
	vsp = -bounced; hsp = hsp / 2; bounced -= 1; spawn_hit_fx(x+14, y+18, 259);
	sound_play(sound_get("emerald_bounce"));
	}
	
	if (abs(hsp) < 0.5){ hsp = 0; }
	
	if ((abs(vsp)) > 0 && state_timer > 190 && GiveBack == false){
	GiveBack = true;
	with (asset_get("oPlayer")){
	OverallEmeralds += 1;
		}
	}
	
	if (GiveBack == true){
	with (asset_get("oPlayer")){
	if (Blue == 1 && other.image_index == 0){ Blue = 0; }
	if (Red == 1 && other.image_index == 1){ Red = 0; }
	if (Pink == 1 && other.image_index == 2){ Pink = 0; } 
	if (Yellow == 1 && other.image_index == 3){ Yellow = 0; } 
	if (Gray == 1 && other.image_index == 4){ Gray = 0; }
	if (Green == 1 && other.image_index == 5){ Green = 0; }
	if (Cyan == 1 && other.image_index == 6){ Cyan = 0; }	
	}
	GiveBack = false;
	instance_destroy(); exit;
	//Kill it anyways
	}
	
	if (bounced <= 0){ vsp = 0; bounced = 0;
	//if (image_angle > 90 && image_angle < 180){ image_angle -= 1; }
	//if (image_angle > 90 && image_angle < 180){ image_angle = 135; }
	}
	
	if (state_timer > 21){
	with (asset_get("oPlayer")){
	if (place_meeting( x, y, other.id)){
		if (EmeraldAmount < 7 && OverallEmeralds < 8){
	with (other.id){ sound_play(sound_get("S3&K_emerald")); }
	if (EmeraldAmount == 0){ Emerald1 = other.ChaosEmerald; }
	if (EmeraldAmount == 1){ Emerald2 = other.ChaosEmerald; }
	if (EmeraldAmount == 2){ Emerald3 = other.ChaosEmerald; }
	if (EmeraldAmount == 3){ Emerald4 = other.ChaosEmerald; }
	if (EmeraldAmount == 4){ Emerald5 = other.ChaosEmerald; }
	if (EmeraldAmount == 5){ Emerald6 = other.ChaosEmerald; }
	if (EmeraldAmount == 6){ Emerald7 = other.ChaosEmerald; }
	spawn_hit_fx(x+8, y-18, 310);
	EmeraldAmount += 1;
	if (Blue == 1 && other.image_index == 0){ Blue = 2; }
	if (Red == 1 && other.image_index == 1){ Red = 2; }
	if (Pink == 1 && other.image_index == 2){ Pink = 2; } 
	if (Yellow == 1 && other.image_index == 3){ Yellow = 2; } 
	if (Gray == 1 && other.image_index == 4){ Gray = 2; }
	if (Green == 1 && other.image_index == 5){ Green = 2; }
	if (Cyan == 1 && other.image_index == 6){ Cyan = 2; }
	instance_destroy(); exit;
				}
			}
		}
	}
	
	/*
	if (place_meeting( x, y, asset_get("oPlayer"))){
	with (asset_get("oPlayer")){
		 if (player == other.player){
	if (player.EmeraldAmount == 0){ player.Emerald1 = other.ChaosEmerald; }
	if (player.EmeraldAmount == 1){ player.Emerald2 = other.ChaosEmerald; }
	if (player.EmeraldAmount == 2){ player.Emerald3 = other.ChaosEmerald; }
	if (player_id.EmeraldAmount == 3){ player.Emerald4 = other.ChaosEmerald; }
	player.EmeraldAmount += 1;
	sound_play(sound_get("S3&K_emerald"));
	instance_destroy(); exit;
		 }
	}
	with (asset_get("oPlayer")){
		 if (player != other.player){
	if (EmeraldAmount == 0){ Emerald1 = other.ChaosEmerald; }
	if (EmeraldAmount == 1){ Emerald2 = other.ChaosEmerald; }
	if (EmeraldAmount == 2){ Emerald3 = other.ChaosEmerald; }
	if (EmeraldAmount == 3){ Emerald4 = other.ChaosEmerald; }
	EmeraldAmount += 1;
	sound_play(sound_get("S3&K_emerald"));
	instance_destroy(); exit;
				}
			}
		}
	}
	*/
	break;
	
	
	case 4: //Respawning article body
	
	//if (player_id.state == PS_IDLE || player_id.hsp > abs(hsp) ){ instance_destroy(); exit; }
	//initial_invince = 1;
	//sprite_index = sprite_get("hurt");
	//mask_index = asset_get("empty_sprite");
	
	uses_shader = true;
	spr_dir = player_id.spr_dir;
	if (instance_exists(player_id) && !(player_id.state == PS_DEAD || player_id.state == PS_SPAWN 
	|| player_id.state == PS_RESPAWN)){
	//sprite_index = asset_get("empty_sprite");
	x = player_id.x;
	y = player_id.y;
	//hsp = player_id.hsp;
	//vsp = player_id.vsp;
	}

	if (player_id.state == PS_RESPAWN && player_id.state_timer < 120){
	sprite_index = sprite_get("hurt");
	mask_index = asset_get("empty_sprite");
	x = lerp(x, player_id.x, 0.05);
	y = lerp(y, player_id.y, 0.05);
	
	player_id.emerald_platform = true;
	
	//var fly_speed = 0.5;
	//var mecha_dir = point_direction(player_id.x, player_id.y, x, y);
	//var mecha_dist = point_distance(player_id.x, player_id.y, x, y);
	//var drag_speed = max(sqrt(mecha_dist) * fly_speed / 1, fly_speed);
	//hsp = lengthdir_x(drag_speed, mecha_dir + 180);
	//vsp = lengthdir_y(drag_speed, mecha_dir + 180);
	
	ignores_walls = true;
	through_platforms = 2;
	}
	if (player_id.state_timer >= 120 && player_id.state == PS_RESPAWN
	|| !(player_id.state == PS_RESPAWN) ){
	sprite_index = asset_get("empty_sprite");
	player_id.emerald_platform = false;
	//x = player_id.x+5;
	//y = player_id.y-10;
	}
	
	break;
	
	case 5: //Timestop background

		if (state_timer < 3){ depth = depth+16; }
		if (instance_exists(asset_get("camera_obj"))){
			
		if (x-15 > get_instance_x(asset_get("camera_obj")) ){
			x = x-5;
			//spr_dir = -1;
		}
		if (x+15 < get_instance_x(asset_get("camera_obj")) ){
			x = x+5;
			//spr_dir = 1;
		}
		if (y-50 > get_instance_y(asset_get("camera_obj")) ){
			y = y-5;
		}
		if (y+50 < get_instance_y(asset_get("camera_obj")) ){
			y = y+5;
			}
		}
		
		sprite_index = sprite_get("timestop_BG");
		mask_index = sprite_get("timestop_BG");
		image_speed = 0.7;
		image_xscale = 3.2;
		image_yscale = 3;
		//image_alpha = 1;
		//if (player_id.timestop_amount < 35){ image_alpha -= 0.1; }
		//hsp = 4
		//x = 200;
		//y = 200;
		if (player_id.timestop == false){ instance_destroy(); exit; }
	
	break;
	
	case 6:
	//Teleporting back
	uses_shader = true;
	sprite_index = sprite_get("airdodge_ai");
	image_index = 2;
	image_alpha = 1;
	
	if (teleporting_amount <= -1){ destroyed = true; }
	if (destroyed == true){ image_speed = 0.1; instance_destroy(); exit; }
	break;
}