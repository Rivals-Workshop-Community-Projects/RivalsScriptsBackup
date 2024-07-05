/*switch (player_id.mode)
{
	case 0:
		switch(attack)
		{
			case AT_FSTRONG_2:
			case AT_NSPECIAL:
				if (hitbox_timer <= 1)
				{
					old_dir = player_id.spr_dir;
				}
				if ((instance_exists(player_id.stopwatch) and !place_meeting(x,y,player_id.stopwatch)) or !instance_exists(player_id.stopwatch))
				{
					var blue = spawn_hit_fx(x + (11 * spr_dir), y, player_id.trail1);
					blue.spr_dir = old_dir;
				}
				if (hitbox_timer > 1)
				{
					if (attack == AT_NSPECIAL)
					{
						var trail = spawn_hit_fx(x, y, player_id.trail);
						trail.spr_dir = spr_dir;
						if (was_parried)
						{
							if (parried == 0)
							{
								draw_xscale *= -1;;
							}
							trail.x += 6 * (spr_dir)
							parried = 1;
						}
					}
					else if (attack == AT_FSTRONG_2)
					{
						var trail2 = spawn_hit_fx(x, y, player_id.trail2);
						trail2.spr_dir = spr_dir;
						if (was_parried)
						{
							if (parried == 0)
							{
								draw_xscale *= -1;;
							}
							trail2.x += 6 * (spr_dir)
							parried = 1;
						}
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					stun = 1;
					projectile_parry_stun = true;
					if (player_id.stopwatch.cooldown == 1)
					{
						setup = 1;
					}
					if (player_id.stopwatch.cooldown != 1)
					{
						if (setup == 0 and no_stopwatch == 0)
						{
							switch(hbox_num)
							{
								case 1:
									x = player_id.stopwatch.x 
									y = player_id.stopwatch.y + 4 
									break;
								case 2:
									x = player_id.stopwatch.x + (33 * spr_dir);
									y = player_id.stopwatch.y - 11;
									break;
								case 3:
									x = player_id.stopwatch.x - (37 * spr_dir)
									y = player_id.stopwatch.y - 4
									break;
							}
							setup = 1;
							walls = 1;
							grounds = 1;
						}
						else if (setup == 1)
						{
							walls = 0;
							grounds = 0;
						}
					}
				}
				break;
			case AT_FSPECIAL:
				if (vsp == 0)
				{
					destroyed = 1;
				}
				if (hitbox_timer > 1)
				{
					var trail3 = spawn_hit_fx(x, y, player_id.trail3);
					trail3.spr_dir = spr_dir;
					trail3.draw_angle = proj_angle;
					if (was_parried)
					{
						if (parried == 0)
						{
							draw_xscale *= -1;;
						}
						trail3.x -= 2 * (spr_dir)
						parried = 1;
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					stun = 1;
					projectile_parry_stun = true;
					if (player_id.stopwatch.cooldown == 1)
					{
						setup = 1;
					}
					if (player_id.stopwatch.cooldown != 1)
					{
						if (setup == 0 and no_stopwatch == 0)
						{
							switch(hbox_num)
							{
								case 1:
									x = player_id.stopwatch.x 
									y = player_id.stopwatch.y
									break;
								case 2:
									x = player_id.stopwatch.x
									y = player_id.stopwatch.y
									break;
								case 3:
									x = player_id.stopwatch.x
									y = player_id.stopwatch.y
									break;
							}
							setup = 1;
							walls = 1;
							grounds = 1;
						}
						else if (setup == 1)
						{
							walls = 0;
							grounds = 0;
						}
					}
				}
				else if (!instance_exists(player_id.stopwatch) or instance_exists(player_id.stopwatch) and player_id.stopwatch.cooldown == 1)
				{
					walls = 0;
					grounds = 0;
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
		if (!instance_exists(player_id.stopwatch))
		{
			no_stopwatch = 1;
		}
		break;
	case 1:
		switch(attack)
		{
			case AT_FSTRONG_2:
				if (hitbox_timer > 1 and frozen != 1)
				{
					var trail2 = spawn_hit_fx(x, y, player_id.trail2);
					trail2.spr_dir = spr_dir;
					if (was_parried)
					{
						if (parried == 0)
						{
							draw_xscale *= -1;;
						}
						trail2.x += 6 * (spr_dir)
						parried = 1;
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2)
					{
						projectile_parry_stun = true;
						stored_hsp = hsp;
						frozen = 0;
						freeze_lockout = 0;
						player_id.stopwatch.sound = 1;
						if (frozen == 0)
						{
							hsp = 0;
							image_xscale = 0;
							image_yscale = 0;
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
						if (player_id.stopwatch.dead = 1)
						{
							destroyed = 1;
						}
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
				if (hitbox_timer > 1 and frozen != 1)
				{
					var trail = spawn_hit_fx(x, y, player_id.trail);
					trail.spr_dir = spr_dir;
					if (was_parried)
					{
						if (parried == 0)
						{
							draw_xscale *= -1;;
						}
						trail.x += 6 * (spr_dir)
						parried = 1;
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2)
					{
						projectile_parry_stun = true;
						stored_hsp = hsp;
						frozen = 0;
						freeze_lockout = 0;
						player_id.stopwatch.sound = 1;
						if (frozen == 0)
						{
							hsp = 0;
							image_xscale = 0;
							image_yscale = 0;
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
						if (player_id.stopwatch.dead = 1)
						{
							destroyed = 1;
						}
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
				if (hitbox_timer > 1 and frozen != 1)
				{
					var trail3 = spawn_hit_fx(x, y, player_id.trail3);
					trail3.spr_dir = spr_dir;
					trail3.draw_angle = proj_angle;
					if (was_parried)
					{
						if (parried == 0)
						{
							draw_xscale *= -1;;
						}
						trail3.x -= 2 * (spr_dir)
						parried = 1;
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2)
					{
						projectile_parry_stun = true;
						stored_hsp = hsp;
						stored_vsp = vsp;
						frozen = 0;
						freeze_lockout = 0;
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
						if (player_id.stopwatch.dead = 1)
						{
							destroyed = 1;
						}
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
		break;
}*/
switch(attack)
		{
			case AT_FSTRONG_2:
				if (hitbox_timer > 1 and frozen != 1)
				{
					var trail2 = spawn_hit_fx(x, y, player_id.trail2);
					trail2.spr_dir = spr_dir;
					if (was_parried)
					{
						if (parried == 0)
						{
							draw_xscale *= -1;;
						}
						trail2.x += 6 * (spr_dir)
						parried = 1;
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2 and player_id.stopwatch.cooldown == 0)
					{
						projectile_parry_stun = true;
						stored_hsp = hsp;
						frozen = 0;
						freeze_lockout = 0;
						player_id.stopwatch.sound = 1;
						if (frozen == 0)
						{
							hsp = 0;
							image_xscale = 0;
							image_yscale = 0;
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
						if (player_id.stopwatch.dead = 1)
						{
							destroyed = 1;
						}
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
				if (hitbox_timer > 1 and frozen != 1)
				{
					var trail = spawn_hit_fx(x, y, player_id.trail);
					trail.spr_dir = spr_dir;
					if (was_parried)
					{
						if (parried == 0)
						{
							draw_xscale *= -1;;
						}
						trail.x += 6 * (spr_dir)
						parried = 1;
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2 and player_id.stopwatch.cooldown == 0)
					{
						projectile_parry_stun = true;
						stored_hsp = hsp;
						frozen = 0;
						freeze_lockout = 0;
						player_id.stopwatch.sound = 1;
						if (frozen == 0)
						{
							hsp = 0;
							image_xscale = 0;
							image_yscale = 0;
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
						if (player_id.stopwatch.dead = 1)
						{
							destroyed = 1;
						}
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
				if (hitbox_timer > 1 and frozen != 1)
				{
					var trail3 = spawn_hit_fx(x, y, player_id.trail3);
					trail3.spr_dir = spr_dir;
					trail3.draw_angle = proj_angle;
					if (was_parried)
					{
						if (parried == 0)
						{
							draw_xscale *= -1;;
						}
						trail3.x -= 2 * (spr_dir)
						parried = 1;
					}
				}
				if (instance_exists(player_id.stopwatch))
				{
					if (place_meeting(x,y,player_id.stopwatch) and freeze_lockout != 2 and player_id.stopwatch.cooldown == 0)
					{
						projectile_parry_stun = true;
						stored_hsp = hsp;
						stored_vsp = vsp;
						frozen = 0;
						freeze_lockout = 0;
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
						if (player_id.stopwatch.dead = 1)
						{
							destroyed = 1;
						}
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

if (instance_exists(player_id.stopwatch))
{
	if (place_meeting(x,y,player_id.stopwatch))
	{
		stun = 1;
	}
	if (stun == 1)
	{
		projectile_parry_stun = true;
		player_id.stun = 1;
	}
	if (was_parried)
	{
		destroyed = 1;
	}
}
if (!instance_exists(player_id.stopwatch))
{
	no_stopwatch = 1;
}