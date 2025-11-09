switch(attack)
{
	case AT_DSPECIAL_AIR:
		if (!free)
		{
			player_id.bikeExplosion = true;
    		var bikeExplode = spawn_hit_fx(x, y , player_id.explosion);
		    bikeExplode.depth = -100;
    		destroyed = true;
		}
	break;
	case AT_NSPECIAL:
		if (hbox_num == 3 && hitbox_timer == 1)
		{
			player_id.bikeExplosion = true;
    		var bikeExplode = spawn_hit_fx(x, y , player_id.explosion);
		    bikeExplode.depth = -100;			
		}
	break;
	case AT_FSPECIAL:
		if (place_meeting(x, y, player_id.bike))
		{
			changeSprite = true;
			player_id.thrownBike = self;
		}
		if (changeSprite = true)
		{
			sprite_index = sprite_get("fspecial_air_proj");
			mask_index = sprite_get("fspecial_air_proj");
			if (hitbox_timer == 27 && player_id.moveDisc == true && !get_match_setting(SET_TEAMS))
			{
				can_hit_self = true;
			}
			if (hitbox_timer == 37 && player_id.moveDisc == true && get_match_setting(SET_TEAMS))
			{
				with (player_id)
				{
					move_cooldown[AT_DSPECIAL] = 0;
					invince_time = 0;
					invincible = 0;
					hsp = 0;
					vsp = 0;
					tsprite_index = -1;
					thrownBike = noone;
    				set_attack(AT_DSPECIAL);
				}
			}
			if (hitbox_timer == 60 && player_id.moveDisc = false)
			{
				player_id.bike_stored = true;
			}
		}
	case AT_FSPECIAL_AIR:
		if (hbox_num == 1)
		{
			//Makes Jump Disc multi hit
			/*for (var p = 0; p < array_length(can_hit); p++)
			{ 
				if (hitbox_timer % 10 == 0 && hitbox_timer !=0)
				{
					can_hit[p] = true;
				}
			}
			stop_effect = false;*/
			if (hsp == 0 && hitbox_timer >0)
			{
				player_id.Fspecial_positionX = x;
				player_id.Fspecial_positionY = y;
				destroyed = false;
			}
			//This code governs the movement of the jump disc
			if (hitbox_timer == 1 && !was_parried)
			{
				hsp=lengthdir_x(18, player_id.dst);
				vsp=lengthdir_y(18, player_id.dst);
			}
			if (was_parried)
			{
				hsp=lengthdir_x(x - player_id.x, player_id.dst + 180);
				vsp=lengthdir_y(y - player_id.y, player_id.dst + 180);
			}
			if ((has_hit && player_id.moveDisc == true) || hitbox_timer == 12 )
			{
				player_id.Fspecial_positionX = x;
				player_id.Fspecial_positionY = y;
				if (hitbox_timer < 27)
				{
					hsp = 0;
					vsp = 0;
				}
				if (player_id.moveDisc == true && hitbox_timer < 12)
				{
					hitbox_timer = 12;
				}
			}
			if (hitbox_timer == 27 && player_id.moveDisc == true)
			{
				sprite_index = sprite_get("fspecial_proj")
				grounds = 1;
				walls = 1;
				var disc_direction = point_direction(x, y, player_id.x, player_id.y - player_id.char_height/2);
				var disc_distance = point_distance(x, y, player_id.x, player_id.y - player_id.char_height/2);
				
				hsp = lengthdir_x(disc_distance, disc_direction) / 12;
				vsp = lengthdir_y(disc_distance, disc_direction) / 12;
			}
			if (hitbox_timer == 27 && player_id.bikeWarp = true && player_id.moveDisc = false)
			{
				destroyed = true;
			}
			if (hitbox_timer >= 59)
			{
				grounds = 1;
				walls = 1;
				var predictPosX = player_id.x;
				if (player_id.right_down == true && player_id.hsp > 0.5)
				{
					predictPosX = player_id.x + 80;
				}
				else if (player_id.left_down == true && player_id.hsp < -0.5)
				{
					predictPosX = player_id.x - 80;		
				}
				else
				{
					predictPosX = player_id.x;
				}
				var predictPosY = player_id.y - 80;
	
				var disc_direction2 = point_direction(x, y, predictPosX, predictPosY);
				var disc_distance2 = point_distance(x, y, predictPosX, predictPosY);
	
				hsp = lengthdir_x (disc_distance2, disc_direction2) /6;
				vsp = lengthdir_y(disc_distance2, disc_direction2) /6;
			}
		}
		if (player_id.moveDisc == false)
		{
			length = 65;
			can_hit_self = false;
		}
	break;
	case AT_USPECIAL:
		if (hbox_num == 2)
		{
			if (instance_exists(player_id.bike))
			{	
				hsp = player_id.bike.hsp;
				vsp = player_id.bike.vsp;
				if (hitbox_timer > 5 && player_id.bike.state == 0)
				{
					destroyed = true;
				}
			}
			else
			{
				destroyed = true;
			}
			//Makes Bike multi hit
			for (var p = 0; p < array_length(can_hit); p++)
			{ 
				if (hitbox_timer % 10 == 0 && hitbox_timer !=0)
				{
					can_hit[p] = true;
				}
			}
			stop_effect = false;
		}
	break;
	case 49:
		if (hbox_num == 1)
		{
			if (has_hit_player && times_hit = 1 && hitbox_timer <27)
			{
				length = 202;
				for (var p = 0; p < array_length(can_hit); p++)
				{ 
					can_hit[p] = false;
				}				
			}
			if (hitbox_timer == 1 && !was_parried)
			{
				hsp=lengthdir_x(50, player_id.dst);
				vsp=lengthdir_y(50, player_id.dst);
			}
			if (hitbox_timer == 12)
			{
				player_id.Fspecial_positionX = x;
				player_id.Fspecial_positionY = y;
				hsp = lengthdir_x(2, player_id.dst);
				vsp = lengthdir_y(2, player_id.dst);
				for (var p = 0; p < array_length(can_hit); p++)
				{ 
					can_hit[p] = false;
				}
			}
			if (times_hit > 0)
			{
				if (x <= get_stage_data(SD_LEFT_BLASTZONE_X) + 15 || x >= get_stage_data(SD_RIGHT_BLASTZONE_X) - 15
				|| y <= get_stage_data(SD_TOP_BLASTZONE_Y) + 15 || y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 15)
				{
					player_id.Fspecial_positionX = x;
					player_id.Fspecial_positionY = y;
					hsp = 0;
					vsp = 0;
				}
				if (hitbox_timer == 39 || hitbox_timer == 64 || hitbox_timer == 93 || hitbox_timer == 120 || hitbox_timer == 147)
				{
					player_id.Fspecial_positionX = x;
					player_id.Fspecial_positionY = y;
					hsp = lengthdir_x(2, flight_direction);
					vsp = lengthdir_y(2, flight_direction);
				}
				if (hitbox_timer == 27 || hitbox_timer == 52 || hitbox_timer == 81 || hitbox_timer == 108 || hitbox_timer == 135)
				{
					if (times_hit < 6)
					{
						for (var p = 0; p < array_length(can_hit); p++)
						{ 
							if (p == player_id.final_smash_player.player) can_hit[p] = true;
							else can_hit[p] = false;
						}
						stop_effect = false;
					}
					flight_direction = point_direction(x, y, player_id.final_smash_player.x, player_id.final_smash_player.y - player_id.final_smash_player.char_height);

					hsp = lengthdir_x(80, flight_direction);
					vsp = lengthdir_y(80, flight_direction);
				}
			}
			if ((hitbox_timer == 27 && times_hit = 0) || hitbox_timer >= 190)
			{
				print_debug(times_hit);
				var return_direction = point_direction(x, y, player_id.x, player_id.y - player_id.char_height);
				var return_distance = point_distance(x, y, player_id.x, player_id.y - player_id.char_height);
				
				if (hitbox_timer < 190)
				{
					hsp = lengthdir_x(return_distance, return_direction) / 10;
					vsp = lengthdir_y(return_distance, return_direction) / 10;
				}
				else
				{
					hsp = lengthdir_x(return_distance, return_direction) / (202 - hitbox_timer);
					vsp = lengthdir_y(return_distance, return_direction) / (202 - hitbox_timer);
				}
				for (var p = 0; p < array_length(can_hit); p++)
				{ 
					can_hit[p] = false;
				}
			}
		}
	break;
	default:
	break;
}


