//Article updating

state_timer++;
switch (state){
	
	case 0: //Foresight
	sprite_index = asset_get("empty_sprite");
	mask_index = sprite_get("idle");
	
	if (state_timer > 8){ instance_destroy(); exit; }
	//if (place_meeting( x, y, asset_get("par_block"))){ player_id.cooldowntime = 100; }
	x = player_id.x;
	y = player_id.y;
	hsp = player_id.hsp;
	vsp = player_id.vsp;
	if (place_meeting( x, y, asset_get("pHitBox"))){ player_id.foresight = 50; player_id.move_cooldown[AT_EXTRA_2] = 20; done = true; }
	if (done == true && (player_id.state != PS_HITSTUN || player_id.state != PS_HITSTUN_LAND) ){ instance_destroy(); exit; }
	//if (player_id.state == PS_HITSTUN){ player_id.cooldowntime = 10; }
	break;
	
	case 1: //Foresight
	sprite_index = sprite_get("foresight");
	mask_index = sprite_get("idle");
	depth = -100;
	if (player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND){ player_id.attack = AT_EXTRA_1; window = 1; window_timer = 0; }
	if (((state_timer mod 3) == 0)){
		image_index++;
	}
	if (image_index >= 7){
		instance_destroy();
		exit;
	}
	if (state_timer >= 15){
		instance_destroy();
		exit;
	}
	break;
	
	case 2:
	//Spawn platform emerald 
	mask_index = asset_get("empty_sprite");
	if (player_id.state == PS_RESPAWN){ sprite_index = asset_get("empty_sprite"); } else {  sprite_index = sprite_get("plat"); }
	if (state_timer > 20 || state_timer > 2 && !(player_id.state == PS_IDLE)){ vsp -= 0.005 * state_timer; }
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
	
	initial_invince = 1;
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
	if (player_id.state != PS_RESPAWN){
	sprite_index = asset_get("empty_sprite");
	
	x = player_id.x+15;
	y = player_id.y-20;
	}
	
	if (player_id.state == PS_RESPAWN){
		if (player_id.state_timer < 122 ){
	sprite_index = sprite_get("hurt");
	mask_index = sprite_get("hurt");
	var fly_speed = 0.5;
	var mecha_dir = point_direction(player_id.x, player_id.y, x, y);
	var mecha_dist = point_distance(player_id.x, player_id.y, x, y);
	var drag_speed = max(sqrt(mecha_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, mecha_dir + 180);
	vsp = lengthdir_y(drag_speed, mecha_dir + 180);
	ignores_walls = true;
	through_platforms = 2;
		}
	if (player_id.state_timer >= 122 || player_id.state_timer > 122 && mecha_dist < 20 && place_meeting(x, y, player_id) ){
	sprite_index = asset_get("empty_sprite");
	
	x = player_id.x+5;
	y = player_id.y-10;
		}
	}
	
	break;
	
	case 5:

		if (state_timer < 3){ depth = depth+16; }
		if (instance_exists(asset_get("camera_obj"))){
			
		if (x-15 > get_instance_x(asset_get("camera_obj")) ){
			x = x-15;
			//spr_dir = -1;
		}
		if (x+15 < get_instance_x(asset_get("camera_obj")) ){
			x = x+15;
			//spr_dir = 1;
		}
		if (y-400> get_instance_y(asset_get("camera_obj")) ){
			y = y-15;
		}
		if (y+400 < get_instance_y(asset_get("camera_obj")) ){
			y = y+15;
			}
		}
		
		sprite_index = sprite_get("timestop_BG");
		mask_index = sprite_get("timestop_BG");
		image_speed = 0.8;
		image_xscale = 1.7;
		image_yscale = 1.5;
		image_alpha = player_id.timestop_amount / 90;
		//if (player_id.timestop_amount < 35){ image_alpha -= 0.1; }
		//hsp = 4
		//x = 200;
		//y = 200;
		if (player_id.timestop == false){ instance_destroy(); exit; }
	
	break;
	
	case 6:
	//Somethin'
	break;
}