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
			sprite_index = sprite_get("bike_spin");
			if (hitbox_timer == 27 && player_id.moveDisc == true)
			{
				can_hit_self = true;				
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
			if (hitbox_timer == 27 && player_id.moveDisc == true)
			{
				sprite_index = sprite_get("fspecial_proj")
				grounds = 1;
				var disc_direction = point_direction(x, y, player_id.x, player_id.y);
				var disc_distance = point_distance(x, y, player_id.x, player_id.y);
				
				hsp = lengthdir_x(disc_distance, disc_direction) / 12;
				vsp = lengthdir_y(disc_distance, disc_direction) / 12;
			}
			if (hitbox_timer == 27 && player_id.bikeWarp = true && player_id.moveDisc = false)
			{
				destroyed = true;
			}
			if (hitbox_timer >= 59)
			{
				hit_flipper = 0;
				walls = 1;
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
			//Makes Jump Disc multi hit
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
	default:
	break;
}


