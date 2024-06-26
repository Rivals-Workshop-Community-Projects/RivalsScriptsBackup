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
	x = player_id.x; //basically 
	y = player_id.y; //always
	hsp = player_id.hsp; //on top of
	vsp = player_id.vsp; //Mecha Sonic's body
	
	if (hit_player_obj > 0){
		player_id.foresight = 50; player_id.invincible = true;
		player_id.hitpause = false; player_id.hitstop = false;
		//player_id.y = player_id.y-2;
		player_id.state = PS_ATTACK_GROUND; player_id.attack = AT_EXTRA_1;
		player_id.window = 1; player_id.window_timer = 0;
		//other.go_through = true;
		sound_play(sound_get("instanttransmission"));
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
	if (player_id.state == PS_RESPAWN){ sprite_index = asset_get("empty_sprite"); }
	else
	{ sprite_index = sprite_get("plat"); }
	if (state_timer > 20 || state_timer > 2 && !(player_id.state == PS_RESPAWN)){
		vsp -= 0.001 * state_timer;
	}
	if (state_timer > 150){ instance_destroy(); exit; }
	break;
	
	case 3:
	uses_shader = false;
	ChaosEmerald = player_id.ChaosEmerald;
	
	//Emerald flying out after parrying or respawning
	sprite_index = sprite_get("emrl");
	//sprite_index = sprite_get("emrl_mask");
	mask_index = sprite_get("emrl_mask");
	//if (state_timer < 1){ hit_wall = false; free = true; ignores_walls = false; can_be_grounded = true; }
	
	if (state_timer < 10){
	switch(ChaosEmerald){
		case 0:
		image_index = 0;
		break;
		
		case 1:
		image_index = 1;
		break;
		
		case 2:
		image_index = 2;
		break;
		
		case 3:
		image_index = 3;
		break;
		
		case 4:
		image_index = 4;
		break;
		
		case 5:
		image_index = 5;
		break;
		
		case 6:
		image_index = 6;
		break;
		
		case 7:
		image_index = 7;
		break;
		
		case 8:
		//Dunno
		break;
		}
	}
	
	if (state_timer > 20){
	if (free == true && bounced > 0){ vsp += .3; } // image_angle += 2;
	if (vsp > 8){ vsp = 8; }
	}
	
	if (bounced > 0 && free == false){ vsp = -bounced; bounced -= 1; spawn_hit_fx(x-12, y-10, 251);  }
	
	if (bounced <= 0){ vsp = 0; bounced = 0;
	//if (image_angle > 90 && image_angle < 180){ image_angle -= 1; }
	//if (image_angle > 90 && image_angle < 180){ image_angle = 135; }
	}
	
	if (state_timer > 21){
	if ((place_meeting( x, y, player_id))){ emerald_grabbed = true; }
	if (emerald_grabbed == true){ player_id.ChaosEmerald += 1; instance_destroy(); exit; }
	}
	break;
	
	case 4: //Respawning back
	//if (player_id.state == PS_IDLE || player_id.hsp > abs(hsp) ){ instance_destroy(); exit; }
	//initial_invince = 1;
	//sprite_index = sprite_get("hurt");
	//mask_index = asset_get("empty_sprite");
	uses_shader = true;
	ChaosEmerald = player_id.ChaosEmerald;
	//set_article_color_slot(0, 1, 1, 15, 0.1);
	switch(ChaosEmerald){
		case 0:
		break;
		
		case 1:
		break;
		
		case 2:
		break;
		
		case 3:
		break;
	}
	
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