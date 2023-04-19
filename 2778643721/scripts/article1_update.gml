
//Make time progress
state_timer++;

/*

//Gets destroyed on Clairen's Plasma Field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && state_timer > 0) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	state_timer = -40;
}

with (asset_get("pHitBox")){
	if (damage > 0 && kb_value > 0 && hit_priority > 0 && other.state_timer > 0){
		if (place_meeting(x,y,other.id) && other.player != player){
			if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
					if (other.whirlwind_second == false){
						other.whirlwind_active_hitbox.destroyed = true;	
					}
					else {
						other.whirlwind2_active_hitbox.destroyed = true;	
					}
				other.state_timer = -24;
		    }
		}
	}
}



//Creates the initial hitbox after 20 frames
if (state_timer == 20){
	if (whirlwind_second == false){
		whirlwind_active_hitbox = create_hitbox(AT_DSPECIAL, 1, 
		x+whirlwind_x_hitbox, y+whirlwind_y_hitbox-50);	
	}
	else {
		whirlwind2_active_hitbox = create_hitbox(AT_DSPECIAL, 10, 
		x+whirlwind_x_hitbox, y+whirlwind_y_hitbox-50);	
	}
	
}

//If the hitbox somohow gets destroyed or moved
if (state_timer > 20){
	if (whirlwind_second == false){
		
		if (!instance_exists(whirlwind_active_hitbox)){
			state_timer = -24;
		}
		if (instance_exists(whirlwind_active_hitbox) 
		&& (whirlwind_active_hitbox.y > y+50 || whirlwind_active_hitbox.y < y-50)){
			state_timer = -24;
		}
	}
	else {
		if (!instance_exists(whirlwind2_active_hitbox)){
			state_timer = -24;
		}
		if (instance_exists(whirlwind2_active_hitbox) 
		&& (whirlwind2_active_hitbox.y > y+50 || whirlwind2_active_hitbox.y < y-50)){
			state_timer = -24;
		}
	}
}

//Creates the Launch Hitbox
if (state_timer == -25){
	create_hitbox(AT_DSPECIAL, whirlwind_hitbox_num, x+whirlwind_x_hitbox, y+whirlwind_y_hitbox-50);
}

//Idle State
if (state_timer == -24 || state_timer == 470){
	state = 1;
	image_index = 0;
}



*/

//Should Die	This is just for testing
if (state_timer == 30 && state == 1){
	player_id.portal2.state_timer = player_id.portal1.state_timer;
}

if (state_timer > 800){
	shoulddie = true;
}

//State 0: Spawning
if (state == 0){
	if (state_timer == 1){
		sound_play(sound_get("sfx_open_big"));
	}
	//Spawns the portal and sets the sprite
	sprite_index = sprite_get("portal_open");
	image_index += .4;
	//Is this the first portal?
	if (state_timer == 1 && portal_number == 1){
		//Changes the direction and angle depending on the player choice
		switch (portal_direction){
			case 1:
		    image_angle = -90;
			y -= 100;
		    break;
		    case 2:
		    image_angle = 45;
		    spr_dir = -1;
		    x += 60;
			y -= 80;
		    break;
		    case 3:
		    x += 90;
		    spr_dir = -1;
		    image_angle = 0;
			y -= 20;
		    break;
		    case 4:
		    image_angle = -45;
		    spr_dir = -1;
		    x += 60;
			y += 50;
		    break;
		    case 5:
		    image_angle = -90;
		    spr_dir = -1;
			y += 40;
		    break;
		    case 6:
		    image_angle = 45;
		    spr_dir = -1;
		    x -= 60;
			y += 40;
		    break;
		    case 7:
		    image_angle = 0;
		    spr_dir = -1;
		    x -= 70;
			y -= 20;
		    break;
		    case 8:
		    image_angle = -45;
		    spr_dir = -1;
		    x -= 60;
			y -= 80;
		    break;
		}
	}
	//Is this the second portal?
	if (state_timer == 1 && portal_number == 2){
		//Changes the position on the first frame
		switch (portal_position){
			case 1:
			y -= 250;
		    break;
		    case 2:
		    x += 150;
			y -= 180;
		    break;
		    case 3:
		    x += 240;
			y -= 20;
		    break;
		    case 4:
		    x += 150;
			y += 140;
		    break;
		    case 5:
			y += 190;
		    break;
		    case 6:
		    x -= 150;
			y += 130;
		    break;
		    case 7:
		    x -= 220;
			y -= 20;
		    break;
		    case 8:
		    x -= 150;
			y -= 160;
		    break;
		}
	}
	if (portal_number == 2){
		//Changes the direction
		switch (portal_direction){
			case 1:
			spr_dir = -1;
		    image_angle = -90;
		    break;
		    case 2:
		    image_angle = 45;
		    break;
		    case 3:
		    image_angle = 0;
		    break;
		    case 4:
		    image_angle = -45;
		    break;
		    case 5:
		    image_angle = -90;
		    break;
		    case 6:
		    image_angle = 45;
		    break;
		    case 7:
		    image_angle = 0;
		    break;
		    case 8:
		    image_angle = -45;
		    break;
		}
	}
	//Goes to idle
	if (image_index > 12){
		state = 1;
		state_timer = 0;
	}
}

//State 1: Idle
if (state == 1){
		if (portal_cooldown < 5){
			effect_played = false;
		}
		if (portal_cooldown >= 5 && effect_played == false){
			sound_play(asset_get("sfx_ori_bash_launch"), false, noone, .5, 1);
			spawn_hit_fx(x, y + 12, 111);
			effect_played = true;
		}
	//Changes the sprite
	sprite_index = sprite_get("portal_idle");
	image_index += .2;
	
	
	//Cooldown
	if (portal_cooldown > 0){
		arrow_color = c_gray;
		portal_cooldown--;
	} else arrow_color = c_white;
	
	//Teleport Player during USpecial
		if (portal_cooldown == 0 && state_timer > 30 && state_timer <= 70 && state == 1){
			if (hsp > 0){
				player_hsp = player_id.hsp;
			}
			else {
				player_hsp = player_id.hsp*-1;
			}
			if (vsp > 0){
				player_vsp = player_id.vsp;
			}
			else {
				player_vsp = player_id.vsp*-1;
			}
				if (player_hsp != 0 && player_vsp != 0){
					player_speed = player_hsp + player_vsp;
					player_speed = player_speed/1.25;
					player_speed_less = player_speed/1.75;
				}
				if (player_hsp == 0 && player_vsp != 0){
					player_speed = player_vsp;
					player_speed_less = player_vsp;
				}
				if (player_hsp != 0 && player_vsp == 0){
					player_speed = player_hsp;
					player_speed_less = player_hsp;
				}
				
		}
		
		if (portal_number == 1 && portal_cooldown == 0 && state_timer > 30 && state_timer <= 70 && state == 1){
			if (place_meeting(x, y, player_id)){
				player_id.x = player_id.portal2_x;
				player_id.y = player_id.portal2_y;
				switch (player_id.portal2.portal_direction){
					case 1:
					player_id.hsp = 0;
					player_id.vsp = player_speed*-1;
				    break;
				    case 2:
				    player_id.hsp = player_speed_less;
				    player_id.vsp = player_speed_less*-1;
				    break;
				    case 3:
				    player_id.hsp = player_speed;
				    player_id.vsp = 0;
				    break;
				    case 4:
				    player_id.hsp = player_speed_less;
				    player_id.vsp = player_speed_less;
				    break;
				    case 5:
					player_id.hsp = 0;
					player_id.vsp = player_speed;
				    break;
				    case 6:
				    player_id.hsp = player_speed_less*-1;
				    player_id.vsp = player_speed_less;
				    break;
				    case 7:
				    player_id.hsp = player_speed*-1;
				    player_id.vsp = 0;
				    break;
				    case 8:
				    player_id.hsp = player_speed_less*-1;
				    player_id.vsp = player_speed_less*-1;
				    break;
				}
				portal_cooldown = 50;
				player_id.portal2.portal_cooldown = 50;
				if (player_id.portal1.state_timer < 590 && player_id.portal2.state_timer < 590){
					player_id.portal1.state_timer += 200;
					player_id.portal2.state_timer += 200;
				}
			}
		}
		
		if (portal_number == 2 && portal_cooldown == 0 && state_timer > 30 && state_timer <= 70 && state == 1){
			if (place_meeting(x, y, player_id)){
				player_id.x = player_id.portal1_x;
				player_id.y = player_id.portal1_y;
				switch (player_id.portal1.portal_direction){
					case 1:
					player_id.hsp = 0;
					player_id.vsp = player_speed;
				    break;
				    case 2:
				    player_id.hsp = player_speed_less*-1;
				    player_id.vsp = player_speed_less;
				    break;
				    case 3:
				    player_id.hsp = player_speed*-1;
				    player_id.vsp = 0;
				    break;
				    case 4:
				    player_id.hsp = player_speed_less*-1;
				    player_id.vsp = player_speed_less*-1;
				    break;
				    case 5:
					player_id.hsp = 0;
					player_id.vsp = player_speed*-1;
				    break;
				    case 6:
				    player_id.hsp = player_speed_less;
				    player_id.vsp = player_speed_less*-1;
				    break;
				    case 7:
				    player_id.hsp = player_speed;
				    player_id.vsp = 0;
				    break;
				    case 8:
				    player_id.hsp = player_speed_less;
				    player_id.vsp = player_speed_less;
				    break;
				}
				portal_cooldown = 50;
				player_id.portal1.portal_cooldown = 50;
				if (player_id.portal1.state_timer < 590 && player_id.portal2.state_timer < 590){
					player_id.portal1.state_timer += 200;
					player_id.portal2.state_timer += 200;
				}
			}
		}
	
	
	// Teleport Players
	with (oPlayer){
		if (other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (hsp > 0){
				other.player_hsp = hsp;
			}
			else {
				other.player_hsp = -hsp;
			}
			if (vsp > 0){
				other.player_vsp = vsp;
			}
			else {
				other.player_vsp = -vsp;
			}
				if (other.player_hsp != 0 && other.player_vsp != 0){
					other.player_speed = other.player_hsp + other.player_vsp;
					other.player_speed = other.player_speed/1.25;
					other.player_speed_less = other.player_speed/1.75;
				}
				if (other.player_hsp == 0 && other.player_vsp != 0){
					other.player_speed = other.player_vsp;
					other.player_speed_less = other.player_vsp;
				}
				if (other.player_hsp != 0 && other.player_vsp == 0){
					other.player_speed = other.player_hsp;
					other.player_speed_less = other.player_hsp;
				}
				
		}
		
		if (other.portal_number == 1 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				x = other.player_id.portal2_x;
				y = other.player_id.portal2_y;
				switch (other.player_id.portal2.portal_direction){
					case 1:
					hsp = 0;
					vsp = other.player_speed*-1;
					fspecial_portal = 11;
				    break;
				    case 2:
				    hsp = other.player_speed_less;
				    vsp = other.player_speed_less*-1;
				    fspecial_portal = 12;
				    break;
				    case 3:
				    hsp = other.player_speed;
				    vsp = 0;
				    fspecial_portal = 13;
				    break;
				    case 4:
				    hsp = other.player_speed_less;
				    vsp = other.player_speed_less;
				    fspecial_portal = 14;
				    break;
				    case 5:
					hsp = 0;
					vsp = other.player_speed;
					fspecial_portal = 15;
				    break;
				    case 6:
				    hsp = other.player_speed_less*-1;
				    vsp = other.player_speed_less;
				    fspecial_portal = 16;
				    break;
				    case 7:
				    hsp = other.player_speed*-1;
				    vsp = 0;
				    fspecial_portal = 17;
				    break;
				    case 8:
				    hsp = other.player_speed_less*-1;
				    vsp = other.player_speed_less*-1;
				    fspecial_portal = 18;
				    break;
				}
				if (player == other.portal_owner or state_cat == SC_HITSTUN){
				other.portal_cooldown = 50;
				other.player_id.portal2.portal_cooldown = 50;
				} else {
				other.portal_cooldown = 80;
				other.player_id.portal2.portal_cooldown = 80;
				}
				if (other.player_id.portal1.state_timer < 590 && other.player_id.portal2.state_timer < 590){
					other.player_id.portal1.state_timer += 200;
					other.player_id.portal2.state_timer += 200;
				}
			}
		}
		
		if (other.portal_number == 2 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				x = other.player_id.portal1_x;
				y = other.player_id.portal1_y;
				switch (other.player_id.portal1.portal_direction){
					case 1:
					hsp = 0;
					vsp = other.player_speed;
					fspecial_portal = 21;
				    break;
				    case 2:
				    hsp = other.player_speed_less*-1;
				    vsp = other.player_speed_less;
				    fspecial_portal = 22;
				    break;
				    case 3:
				    hsp = other.player_speed*-1;
				    vsp = 0;
				    fspecial_portal = 23;
				    break;
				    case 4:
				    hsp = other.player_speed_less*-1;
				    vsp = other.player_speed_less*-1;
				    fspecial_portal = 24;
				    break;
				    case 5:
					hsp = 0;
					vsp = other.player_speed*-1;
					fspecial_portal = 25;
				    break;
				    case 6:
				    hsp = other.player_speed_less;
				    vsp = other.player_speed_less*-1;
				    fspecial_portal = 26;
				    break;
				    case 7:
				    hsp = other.player_speed;
				    vsp = 0;
				    fspecial_portal = 27;
				    break;
				    case 8:
				    hsp = other.player_speed_less;
				    vsp = other.player_speed_less;
				    fspecial_portal = 28;
				    break;
				}
				if (player == other.portal_owner or state_cat == SC_HITSTUN){
				other.portal_cooldown = 50;
				other.player_id.portal1.portal_cooldown = 50;
				} else {
				other.portal_cooldown = 80;
				other.player_id.portal1.portal_cooldown = 80;
				}
				if (other.player_id.portal1.state_timer < 590 && other.player_id.portal2.state_timer < 590){
					other.player_id.portal1.state_timer += 200;
					other.player_id.portal2.state_timer += 200;
				}
			}
		}
	}
	
	//Teleports projectiles
	with (asset_get("pHitBox")){
		if (type == 2 && effect != 420 && throws_rock != 2 && other.portal_number == 1 && other.portal_cooldown == 0 
		&& other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				hitbox_timer = 3;
				x = other.player_id.portal2_x;
				y = other.player_id.portal2_y;
				switch (other.player_id.portal2.portal_direction){
					case 1:
					vsp = -5;
					hsp = 0;
					portal_proj_angle = 21;
				    break;
				    case 2:
				    spr_dir = 1;
				    hsp += 3;
				    vsp += -3;
				    portal_proj_angle = 22;
				    break;
				    case 3:
				    spr_dir = 1;
				    hsp += 5;
				    vsp = 0;
				    portal_proj_angle = 23;
				    break;
				    case 4:
				    spr_dir = 1;
				    hsp += 3;
				    vsp += 3;
				    portal_proj_angle = 24;
				    break;
				    case 5:
					vsp += 5;
					hsp = 0;
					portal_proj_angle = 25;
				    break;
				    case 6:
				    spr_dir = -1;
				    hsp += -3;
				    vsp += 3;
				    portal_proj_angle = 26;
				    break;
				    case 7:
				    spr_dir = -1;
				    hsp += -5;
				    vsp = 0;
				    portal_proj_angle = 27;
				    break;
				    case 8:
				    spr_dir = -1;
				    hsp += -3;
				    vsp += -3;
				    portal_proj_angle = 28;
				    break;
				}
				other.portal_cooldown = 50;
				other.player_id.portal2.portal_cooldown = 50;
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
		
		if (type == 2 && effect != 420 && throws_rock != 2 && other.portal_number == 2 && other.portal_cooldown == 0 
		&& other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				hitbox_timer = 3;
				x = other.player_id.portal1_x;
				y = other.player_id.portal1_y;
				switch (other.player_id.portal1.portal_direction){
					case 1:
					vsp += 5;
					portal_proj_angle = 11;
				    break;
				    case 2:
				    spr_dir = -1;
				    hsp += -3;
				    vsp += 3;
				    portal_proj_angle = 12;
				    break;
				    case 3:
				    hsp += -5;
				    portal_proj_angle = 13;
				    break;
				    case 4:
				    spr_dir = -1;
				    hsp += -3;
				    vsp += -3;
				    portal_proj_angle = 14;
				    break;
				    case 5:
					vsp += -5;
					portal_proj_angle = 15;
				    break;
				    case 6:
				    spr_dir = 1;
				    hsp += 3;
				    vsp += -3;
				    portal_proj_angle = 16;
				    break;
				    case 7:
				    spr_dir = 1;
				    hsp += 5;
				    portal_proj_angle = 17;
				    break;
				    case 8:
				    spr_dir = 1;
				    hsp += 3;
				    vsp += 3;
				    portal_proj_angle = 18;
				    break;
				}
				other.portal_cooldown = 50;
				other.player_id.portal1.portal_cooldown = 50;
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
	}	//place_meeting(x,y,other.id
	
	//Teleports the Apple
	if (instance_exists(player_id.apple) || instance_exists(player_id.apple2) || instance_exists(player_id.apple3)){
	with (player_id.apple){
	
	if (apple_health < 100)	{
		if (place_meeting(x, y, other)){
			if (hsp > 0){
				apple_hsp = hsp;
			}
			else {
				apple_hsp = -hsp;
			}
			if (vsp > 0){
				apple_vsp = vsp;
			}
			else {
				apple_vsp = -vsp;
			}
				if (apple_hsp != 0 && apple_vsp != 0){
					apple_speed = apple_hsp + apple_vsp;
					apple_speed = apple_speed/1.1;
					apple_speed_less = apple_speed/1.25;
				}
				if (apple_hsp == 0 && apple_vsp != 0){
					apple_speed = apple_vsp;
					apple_speed_less = apple_vsp;
				}
				if (apple_hsp != 0 && apple_vsp == 0){
					apple_speed = apple_hsp;
					apple_speed_less = apple_hsp;
				}
				
		}

		
		if (other.portal_number == 1 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				teleported = true;
				x = other.player_id.portal2_x;
				y = other.player_id.portal2_y;
				charge += 40;
				other.portal_cooldown = 50;
				other.player_id.portal2.portal_cooldown = 50;
				switch (other.portal2_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed*-1.2;
				    break;
				    case 2:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 3:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 6:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 7:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				}
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
		
		if (other.portal_number == 2 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				teleported = true;
				x = other.player_id.portal1_x;
				y = other.player_id.portal1_y;
				charge += 40;
				other.portal_cooldown = 50;
				other.player_id.portal1.portal_cooldown = 50;
				switch (other.portal1_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 2:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 3:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed*-1;
				    break;
				    case 6:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 7:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				}
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
		
	
	}
	}
	with (player_id.apple2){
	
	if (apple_health < 100)	{
		if (place_meeting(x, y, other)){
			if (hsp > 0){
				apple_hsp = hsp;
			}
			else {
				apple_hsp = -hsp;
			}
			if (vsp > 0){
				apple_vsp = vsp;
			}
			else {
				apple_vsp = -vsp;
			}
				if (apple_hsp != 0 && apple_vsp != 0){
					apple_speed = apple_hsp + apple_vsp;
					apple_speed = apple_speed/1.1;
					apple_speed_less = apple_speed/1.25;
				}
				if (apple_hsp == 0 && apple_vsp != 0){
					apple_speed = apple_vsp;
					apple_speed_less = apple_vsp;
				}
				if (apple_hsp != 0 && apple_vsp == 0){
					apple_speed = apple_hsp;
					apple_speed_less = apple_hsp;
				}
				
		}

		
		if (other.portal_number == 1 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				teleported = true;
				x = other.player_id.portal2_x;
				y = other.player_id.portal2_y;
				charge += 40;
				other.portal_cooldown = 50;
				other.player_id.portal2.portal_cooldown = 50;
				switch (other.portal2_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed*-1.2;
				    break;
				    case 2:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 3:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 6:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 7:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				}
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
		
		if (other.portal_number == 2 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				teleported = true;
				x = other.player_id.portal1_x;
				y = other.player_id.portal1_y;
				charge += 40;
				other.portal_cooldown = 50;
				other.player_id.portal1.portal_cooldown = 50;
				switch (other.portal1_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 2:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 3:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed*-1;
				    break;
				    case 6:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 7:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				}
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
		
	
	}
	}
	with (player_id.apple3){
	
	if (apple_health < 100)	{
		if (place_meeting(x, y, other)){
			if (hsp > 0){
				apple_hsp = hsp;
			}
			else {
				apple_hsp = -hsp;
			}
			if (vsp > 0){
				apple_vsp = vsp;
			}
			else {
				apple_vsp = -vsp;
			}
				if (apple_hsp != 0 && apple_vsp != 0){
					apple_speed = apple_hsp + apple_vsp;
					apple_speed = apple_speed/1.1;
					apple_speed_less = apple_speed/1.25;
				}
				if (apple_hsp == 0 && apple_vsp != 0){
					apple_speed = apple_vsp;
					apple_speed_less = apple_vsp;
				}
				if (apple_hsp != 0 && apple_vsp == 0){
					apple_speed = apple_hsp;
					apple_speed_less = apple_hsp;
				}
				
		}

		
		if (other.portal_number == 1 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				teleported = true;
				x = other.player_id.portal2_x;
				y = other.player_id.portal2_y;
				charge += 40;
				other.portal_cooldown = 50;
				other.player_id.portal2.portal_cooldown = 50;
				switch (other.portal2_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed*-1.2;
				    break;
				    case 2:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 3:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 6:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 7:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				}
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
		
		if (other.portal_number == 2 && other.portal_cooldown == 0 && other.state_timer > 70 && other.state == 1){
			if (place_meeting(x, y, other)){
				teleported = true;
				x = other.player_id.portal1_x;
				y = other.player_id.portal1_y;
				charge += 40;
				other.portal_cooldown = 50;
				other.player_id.portal1.portal_cooldown = 50;
				switch (other.portal1_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 2:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 3:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed*-1;
				    break;
				    case 6:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 7:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				}
				if (other.player_id.portal1.state_timer < 690 && other.player_id.portal2.state_timer < 690){
					other.player_id.portal1.state_timer += 100;
					other.player_id.portal2.state_timer += 100;
				}
			}
		}
		
	
	}
	}
	}
	
	/*
	with (asset_get("pHitBox")){
	if (attack == AT_NSPECIAL){
		if ((place_meeting(x, y, other.id)) 
		&& (other.portal_number == 1 && other.state == 1 && other.state_timer == 0) 
		&& (other.portal_number == 2 && other.state == 1 && other.state_timer == 0)){
        if (state != 2){
        state = 1;
        state_timer = 0;
        }
        if (other.portal_number == 2 && other.portal_direction == 1){
            vsp = -10;
            hsp = 0;
            proj_angle = 90;
        }
        if (other.portal_number == 2 && other.portal_direction == 2){
            spr_dir = 1;
            vsp = -10;
            hsp = 10;
            proj_angle = 45;
        }
        if (other.portal_number == 2 && other.portal_direction == 3){
            spr_dir = 1;
            vsp = 0;
            hsp = 10;
            proj_angle = 0;
        }
        if (other.portal_number == 2 && other.portal_direction == 4){
            spr_dir = 1;
            vsp = 8;
            hsp = 8;
            proj_angle = -45;
        }
        if (other.portal_number == 2 && other.portal_direction == 5){
            vsp = 10;
            hsp = 0;
            proj_angle = -90;
        }
        if (other.portal_number == 2 && other.portal_direction == 6){
            spr_dir = -1;
            vsp = 8;
            hsp = -8;
            proj_angle = -45;
        }
        if (other.portal_number == 2 && other.portal_direction == 7){
            spr_dir = -1;
            vsp = 0;
            hsp = -10;
            proj_angle = 0;
        }
        if (other.portal_number == 2 && other.portal_direction == 8){
            spr_dir = 1;
            vsp = -8;
            hsp = -8;
            proj_angle = 45;
        }
        teleported = true;
    }
    if ((place_meeting(x, y, other.id)) 
		&& (other.portal_number == 1 && other.state == 1 && other.state_timer == 0) 
		&& (other.portal_number == 2 && other.state == 1 && other.state_timer == 0)){
        if (state != 2){
        state = 1;
        state_timer = 0;
        }
        if (other.portal_number == 1 && other.portal_direction == 5){
            vsp = -10;
            hsp = 0;
            proj_angle = 90;
        }
        if (other.portal_number == 1 && other.portal_direction == 6){
            spr_dir = 1;
            vsp = -10;
            hsp = 10;
            proj_angle = 45;
        }
        if (other.portal_number == 1 && other.portal_direction == 7){
            spr_dir = 1;
            vsp = 0;
            hsp = 10;
            proj_angle = 0;
        }
        if (other.portal_number == 1 && other.portal_direction == 8){
            spr_dir = 1;
            vsp = 8;
            hsp = 8;
            proj_angle = -45;
        }
        if (other.portal_number == 1 && other.portal_direction == 1){
            vsp = 10;
            hsp = 0;
            proj_angle = -90;
        }
        if (other.portal_number == 1 && other.portal_direction == 2){
            spr_dir = -1;
            vsp = 8;
            hsp = -8;
            proj_angle = -45;
        }
        if (other.portal_number == 1 && other.portal_direction == 3){
            spr_dir = -1;
            vsp = 0;
            hsp = -10;
            proj_angle = 0;
        }
        if (other.portal_number == 1 && other.portal_direction == 4){
            spr_dir = 1;
            vsp = -8;
            hsp = -8;
            proj_angle = 45;
        }
        teleported = true;
    }

	}
	
} */
	

}





//Dying
if (shoulddie == true && state != 2){
	player_id.killarticles = false;
	state = 2;
	state_timer = 0;
	image_index = 0;
}

//State 2: Dying
if (state == 2){
	sprite_index = sprite_get("portal_close");
	image_index += .2;
	if (state_timer == 25){
    instance_destroy();
    exit;
	}
}



