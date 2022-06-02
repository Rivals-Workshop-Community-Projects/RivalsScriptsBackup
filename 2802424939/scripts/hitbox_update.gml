switch(attack)
{
	case AT_BAIR:
		if (instance_exists(player_id.stopwatch))
		{
			if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2 and player_id.player == player)
			{
				stored_hsp = hsp;
				frozen = 0;
				freeze_lockout = 0;
				knife_set = 1;
				player_id.stopwatch.trigger = 1;
				player_id.stopwatch.sound = 1;
				if (frozen == 0)
				{
					hsp = 0;
					image_xscale = 0;
					image_yscale = 0;
					projectile_parry_stun = true;
					locked_x = player_id.stopwatch.x - x;
					locked_y = player_id.stopwatch.y - y;
					frozen = 1;
					sprite_index = sprite_get("knife_r2");
				}
			}
			if (frozen == 1)
			{
				x = player_id.stopwatch.x - locked_x;
				y = player_id.stopwatch.y - locked_y;
				length += 1;
				freeze_lockout = 1;
			}
			else if (freeze_lockout == 2)
			{
				player_id.stopwatch.sound = 0;
				hsp = stored_hsp;
				image_xscale = 0.2;
				image_yscale = 0.2;
				sprite_index = sprite_get("knife_r");
			}
			
			if (player_id.stopwatch.unfreeze == 1)
			{
				frozen = 2;
				if (freeze_lockout == 1)
				freeze_lockout = 2;
			}
		}
		break;
	case AT_NSPECIAL:
		if (instance_exists(player_id.stopwatch))
		{
			if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2 and player_id.player == player)
			{
				stored_hsp = hsp;
				frozen = 0;
				freeze_lockout = 0;
				knife_set = 1;
				player_id.stopwatch.trigger = 1;
				player_id.stopwatch.sound = 1;
				if (frozen == 0)
				{
					hsp = 0;
					image_xscale = 0;
					image_yscale = 0;
					projectile_parry_stun = true;
					locked_x = player_id.stopwatch.x - x;
					locked_y = player_id.stopwatch.y - y;
					frozen = 1;
					sprite_index = sprite_get("knife2");
				}
			}
			if (frozen == 1)
			{
				x = player_id.stopwatch.x - locked_x;
				y = player_id.stopwatch.y - locked_y;
				length += 1;
				freeze_lockout = 1;
			}
			else if (freeze_lockout == 2)
			{
				player_id.stopwatch.sound = 0;
				hsp = stored_hsp;
				image_xscale = 0.2;
				image_yscale = 0.2;
				sprite_index = sprite_get("knife");
			}
			
			if (player_id.stopwatch.unfreeze == 1)
			{
				frozen = 2;
				if (freeze_lockout == 1)
				freeze_lockout = 2;
			}
		}
		break;
	case AT_FSPECIAL:
		if (vsp == 0)
		{
			destroyed = 1;
		}
		if (instance_exists(player_id.stopwatch))
		{
			if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2 and player_id.player == player)
			{
				stored_hsp = hsp;
				stored_vsp = vsp;
				frozen = 0;
				freeze_lockout = 0;
				knife_set = 1;
				player_id.stopwatch.trigger = 1;
				player_id.stopwatch.sound = 1;
				if (frozen == 0)
				{
					hsp = 0;
					image_xscale = 0;
					image_yscale = 0;
					locked_x = player_id.stopwatch.x - x;
					locked_y = player_id.stopwatch.y - y;
					proj_angle = spr_dir == 1? point_direction(0, 0, stored_hsp, stored_vsp): 180+point_direction(0, 0, stored_hsp, stored_vsp);;
					frozen = 1;
					sprite_index = sprite_get("knife_g2");
				}
			}
			if (frozen == 1)
			{
				x = player_id.stopwatch.x - locked_x;
				y = player_id.stopwatch.y - locked_y;
				length += 1;
				through_platforms += 5;
				freeze_lockout = 1;
			}
			else if (freeze_lockout == 2)
			{
				through_platforms = 0;
				player_id.stopwatch.sound = 0;
				if (lock2 == 0)
				{
					hsp = stored_hsp;
					vsp = stored_vsp;
					lock2 = 1;
				}
				image_xscale = 0.2;
				image_yscale = 0.2;
				sprite_index = sprite_get("knife_g");
			}
			if (player_id.stopwatch.unfreeze == 1)
			{
				frozen = 2;
				if (freeze_lockout == 1)
				freeze_lockout = 2;
			}
		}
		if (frozen == 0)
		{
			proj_angle = spr_dir == 1? point_direction(0, 0, hsp, vsp): 180+point_direction(0, 0, hsp, vsp);
			stored_angle = proj_angle;
		}
		sound_lockout--;
		prev_vsp = vsp;
		prev_hsp = hsp;
		if(spr_dir > 0){
			if(hsp > 0){
				kb_angle = 45;
			} else {
				kb_angle = 135;
			}
		} else {
			if(hsp > 0){
				kb_angle = 135;
			} else {
				kb_angle = 45;
			}
		}
		//print_debug(kb_angle);
		break;
}