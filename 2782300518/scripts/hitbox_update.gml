switch(attack)
{
	case 40:
	case AT_DSPECIAL_AIR:
		if (!free)
		{
			player_id.bikeExplosion = true;
    		var bikeExplode = spawn_hit_fx(x, y , 271);
		    bikeExplode.depth = -100;
    		destroyed = true;
		}
	break;
	case AT_FSPECIAL:
		if (hbox_num == 1)
		{
			//Makes Jump Disc multi hit
			for (var p = 0; p < array_length(can_hit); p++)
			{ 
				if (hitbox_timer % 10 == 0 && hitbox_timer !=0)
				{
					can_hit[p] = true;
				}
			}
			stop_effect = false;
			if (hsp == 0 && hitbox_timer >0)
			{
				player_id.Fspecial_positionX = x;
				player_id.Fspecial_positionY = y;
				destroyed = false;
			}
			//This code governs the movement of the jump disc
			if (hitbox_timer == 1)
			{
				hsp=lengthdir_x(18, player_id.dst);
				vsp=lengthdir_y(18, player_id.dst);
			}
			if ((has_hit && player_id.moveDisc == true) || hitbox_timer == 12 )
			{
				hit_flipper = 4;
				player_id.Fspecial_positionX = x;
				player_id.Fspecial_positionY = y;
				if (hitbox_timer < 33)
				{
					hsp = 0;
					vsp = 0;
				}
				if (player_id.moveDisc == true && hitbox_timer < 12)
				{
					hitbox_timer = 12;
				}
			}
			if (hitbox_timer == 33 && player_id.moveDisc == true)
			{
				hit_flipper = 0;
				kb_angle = 135;
				grounds = 1;
				var disc_direction = point_direction(x, y, player_id.x, player_id.y);
				var disc_distance = point_distance(x, y, player_id.x, player_id.y);
				
				hsp = lengthdir_x(disc_distance, disc_direction) / 14;
				vsp = lengthdir_y(disc_distance, disc_direction) / 14;
			}
			if (hitbox_timer >= 59)
			{
				hit_flipper = 0;
	
				var predictPosX = player_id.x;
				if (player_id.right_down == true)
				{
					predictPosX = player_id.x + 80;
				}
				else if (player_id.left_down == true)
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
				grounds = 1;
			}
			if (hitbox_timer == 65)
			{
				kb_angle = 45;
			}
		}
		if (player_id.moveDisc == false)
		{
			length = 65;
		}
	break;
	case 43:
		if (hbox_num == 1)
		{
			if !(instance_exists(player_id.thrownBike))
			{
				player_id.thrownBike = self;
			}
			player_id.move_cooldown[AT_FSPECIAL] = 60;
			player_id.move_cooldown[AT_DSPECIAL] = 60;
			for (var p = 0; p < array_length(can_hit); p++)
			{ 
				if (hitbox_timer % 5 == 0 && hitbox_timer !=0)
				{
			    	can_hit[p] = true;
				}
			}
			stop_effect = false;
			if (hitbox_timer >= 2)
			{
				can_hit_self = true;
			}
			if (hitbox_timer == 12)
			{
				hit_flipper = 4;
				hsp = 0;
			}
			if (hitbox_timer >=16)
			{
				hit_flipper = 0;
				kb_angle = 135;
				var predictPosX = player_id.x - (40 * spr_dir);
				var actualPosY = player_id.y - 20;
				var bike_direction = point_direction(x, y, predictPosX, actualPosY);
				var bike_distance = point_distance(x, y, predictPosX, actualPosY);

				hsp = lengthdir_x(bike_distance, bike_direction) / 12;
				vsp = lengthdir_y(bike_distance, bike_direction) / 12;
	
				if (x <= player_id.x + 140 && x >= player_id.x - 140 && y <= player_id.y + 160 && y >= player_id.y - 160)
				{
					kb_angle = 45;
				}
			}
			if (hitbox_timer >= 30 && player_id.returnBike)
			{
				length = 30;
			}
		}
	break;
	default:
	break;
}


