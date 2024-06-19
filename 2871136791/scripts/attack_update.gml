// attack_update
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	case AT_BAIR: 
	if window == 1 && window_timer == 1 {
		sound_play(asset_get("sfx_swipe_medium1"), 0, noone, .8, .7) //idk if i like this
	}
	case AT_JAB:
		if (state_timer == 1) clear_button_buffer(PC_ATTACK_PRESSED);
		break;

	case AT_DATTACK:
		if (runeD && window == 3 && window_timer == get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH) && attack_down && !has_hit_player)
		{
			window_timer = 0;
		}
		else if (window < 3)
		{
			if (window == 2 && reverseDir)
			{
				spr_dir *= -1;
				reverseDir = false;
			}
			if (strong_down || down_stick_down)
			{
				set_attack(AT_DSTRONG);
				hsp *= 1.2;
			}
			else if ((attack_down && up_down) || up_stick_down)
			{
				set_attack(AT_UTILT);
				hsp *= 1.4;
			}
		}
		break;
		
	case AT_DAIR:
		if (window == 1) dairID = noone;
		else if (window == 2)
		{
			if (free && (y < room_height-20 || !has_hit_player) /*&& dairOffStage != 0*/)
			{
				can_wall_jump = true;
				can_jump = runeA;
				if (has_hit_player && instance_exists(dairID))
				{
					//if (dairOffStage == 0) // let go of them offstage
					//{
					//	window = 3;
					//	move_cooldown[attack] = 30;
					//	dairID.invincible = true;
					//	dairID.invince_time = 10;
					//	dairID.vsp = -4;
					//	can_fast_fall = true;
					//	with (dairID)
					//	{
					//		if (state != PS_RESPAWN && state != PS_DEAD && state != PS_IDLE_AIR)
					//			set_state(PS_IDLE_AIR);
					//	}
					//}
					//else
					if (dairID.state != PS_RESPAWN && dairID.state != PS_DEAD) // main loop (make sure you don't take more than 1 stock)
					{
						fall_through = (down_down||down_stick_down);
						can_wall_jump = false;
						++dairDamageTimer;
						var stage_x = get_stage_data( SD_X_POS );
						var stage_y = get_stage_data(SD_Y_POS);
						if (x < stage_x || x > room_width - stage_x || y > stage_y + 10)
						{
							//--dairOffStage;
							dairID.y = y + 30;
							//if (y > stage_y + (get_stage_data(SD_BOTTOM_BLASTZONE)/2)) dairID.y = y - 10;
						}
						else
						{
							if (fall_through?!dairID.freemd:dairID.free)
								dairID.y = min(y + 30,stage_y);
						}
						dairID.x = x;
						with (dairID)
						{
							set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
						}
					}
				}
			}
			else // landing
			{
				if (window != 3) sound_play(asset_get("sfx_land_heavy"));
				window = 3;
				move_cooldown[attack] = 30;
				dairID = noone;
				if (has_hit_player)
				{
					var hbox = create_hitbox(AT_DAIR, 2, x, y);
					hbox.damage = min(round(dairDamageTimer/2)+3, 20);
					can_fast_fall = true;
				}
			}
		}
		break;
		
	case AT_DTILT:
		down_down = true;
		move_cooldown[AT_DTILT] = 2;
		if (window == 1 && window_timer == 10) sound_play(asset_get("sfx_bite"));
		break;
		
	case AT_NSPECIAL_2:
			move_cooldown[AT_NSPECIAL_2] = 30
		if (window_timer == 1)
		{
			puul.spr_dir = spr_dir;
			birdOut = true;
			puul.state = (runeN&&hit_player_obj!=-1?5:1);
			puul.state_timer = 0;
			puul.temp_x = x;
			puul.temp_y = y;
		}
		break;
		
	case AT_USPECIAL_2:
		if (window == 1 && window_timer == 1)
		{
			puul.state = 3;
			puul.state_timer = 0;
		}
		else if (runeE && window == 2 && window_timer == 1 && special_down)
		{
			puul.state = 6;
			window_timer = 0;
			//puul.state_timer = 0;
		}
		break;
		
	case AT_USPECIAL:
		if (window == 1)
		{
			if (window_timer == 1)
			{
				puul.state = 2;
				puul.state_timer = 0;
				puul.spr_dir = spr_dir;
			}
			if (!joy_pad_idle) puul.joy = joy_dir;
			var newDir = sign(lengthdir_x(1,joy_dir));
			if (newDir != 0) spr_dir = newDir;
			if (!special_down || state_timer >= 30)
			{
				window = 2;
				window_timer = 0;
				if (free) vsp = -4;
			}
			else window_timer = min(get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)-1, window_timer);
		}
		else if (window > 2 && special_pressed && move_cooldown[AT_NSPECIAL] == 0)
		{
			set_attack(AT_NSPECIAL);
			attack = AT_NSPECIAL;
		}
		break;
		
	case AT_NSPECIAL:
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					puul.sprite_index = sprite_get("puul_pull");
					puul.image_index = 0;
				}
				break;
			case 2:
				if (window_timer == 1)
				{
					var tempx = puul.x;
					var tempy = puul.y - 14;
					with (oPlayer)
					{
						if (id == other || other.runeL)
						{
							if (point_distance(x, y - 34, tempx, tempy) < other.puul.radius)
							{
								var anglol = point_direction(x, y - 34,  tempx, tempy);
								hsp = lengthdir_x(12, anglol);
								vsp = lengthdir_y(12, anglol);
							}
						}
					}
					spawn_hit_fx(tempx - (12 * spr_dir), tempy, pullfieldfx);
					if (instance_exists(steelball) && steelball != noone)
					{
						if (point_distance(steelball.x, steelball.y, tempx, tempy) < puul.radius)
						{
							var anglol = point_direction(steelball.x, steelball.y, tempx, tempy);
							var htemp = lengthdir_x(16, anglol) * spr_dir;
							var vtemp = lengthdir_y(16, anglol);
							if (runeF)
							{
								htemp *= 2;
								vtemp *= 2;
							}
							set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, htemp);
							set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, vtemp);
							ballbreaker = create_hitbox(AT_DSPECIAL, 2, steelball.x, steelball.y);
							instance_destroy(steelball);
							steelball = ballbreaker;
						}
					}
				}
				break;
			case 3:
				iasa_script();
				can_wall_jump = true;
				move_cooldown[attack] = runeK?30:120;
				break;
		}
		break;
		
	case AT_FSPECIAL:
		if (window == 3)
		{
			if (window_timer == 1)
			{
				if (has_hit_player) reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
				else set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
			}
			else if (window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH))
			{
				if (!has_hit_player)
				{
					window = 6;
					move_cooldown[AT_FSPECIAL] = 25;
				}
			}
		}
		if (!instance_exists(hit_player_obj) || hit_player_obj.state == PS_RESPAWN || hit_player_obj.state == PS_DEAD) has_hit_player = false;
		can_fast_fall = !has_hit_player;
		if (window <= 5 && has_hit_player)
		{
			if (free)
			{
				vsp = 0;
				hsp = 0;
			}
			else move_cooldown[AT_FSPECIAL] = 55;
			
			switch (window)
			{
				case 5:
					if (window_timer < 7)
					{
						Grab(-40, -20, 2, 2);
						with (hit_player_obj) set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
					}
					else if (window_timer == 7)
						Grab(40, 0, 1, 1);
					break;
				default:
					with (hit_player_obj) set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
					Grab(60, 0, 3, 3);
					break;
				case 4:
					with (hit_player_obj) set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
					switch (ceil(window_timer/4))
					{
						default:
							Grab(40, 0, 2, 2);
							break;
						case 2:
							Grab(20, -40, 2, 2);
							break;
						case 3:
							Grab(-40, -30, 2, 2);
							break;
					}
					break;
			}
			
		}
		break;
		
	case AT_FSPECIAL_2:
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					puul.sprite_index = sprite_get("puul_push");
					puul.image_index = 0;
				}
				break;
			case 2:
				if (window_timer == 1)
				{
					var tempx = puul.x;
					var tempy = puul.y - 14;
					with (oPlayer)
					{
						if (id == other || other.runeL)
						{
							if (point_distance(x, y - 34, tempx, tempy) < other.puul.radius)
							{
								var anglol = point_direction(tempx, tempy,  x, y - 34);
								hsp = lengthdir_x(12, anglol);
								vsp = lengthdir_y(12, anglol);
							}
						}
					}
					spawn_hit_fx(tempx - (12 * spr_dir), tempy, pushfieldfx);
					if (instance_exists(steelball) && steelball != noone)
					{
						if (point_distance(steelball.x, steelball.y, tempx, tempy) < puul.radius)
						{
							var anglol = point_direction(tempx, tempy,  steelball.x, steelball.y);
							var htemp = lengthdir_x(16, anglol) * spr_dir;
							var vtemp = lengthdir_y(16, anglol);
							if (runeF)
							{
								htemp *= 2;
								vtemp *= 2;
							}
							set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, htemp);
							set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, vtemp);
							ballbreaker = create_hitbox(AT_DSPECIAL, 2, steelball.x, steelball.y);
							instance_destroy(steelball);
							steelball = ballbreaker;
						}
					}
				}
				break;
			case 3:
				iasa_script();
				can_wall_jump = true;
				move_cooldown[attack] = runeK?30:120;
				break;
		}
		break;
		
	case AT_DSPECIAL:
		switch (window)
		{
			case 1:
				if (steelball != noone) steelballextra = steelball;
				break;
			case 2:
				if (window_timer == 1)
				{
					canShoot -= 1;
					if (recharge1 > 0) recharge2 = (runeG?5:12)*60;
					else recharge1 = (runeG?5:12)*60;
				}
				break;
			case 3:
				move_cooldown[attack] = 2;
				can_special = true;
				break;
		}
		break;
		
	case AT_DSTRONG:
		if (window > 2 && window <= 4)
		{
			spr_dir=left_down?-1:right_down?1:spr_dir;
			hsp = left_down||right_down?4*spr_dir:0;
			if (!hitpause && window_timer % 3 == 1) create_hitbox(AT_DSTRONG, 1, x, y);
			if (hitpause && has_hit_player) Grab(20, -4, 3, 2);
		}
		break;
		
	case AT_USTRONG:
		if window == 1 && window_timer == 1 {
			//sound_play(asset_get("sfx_swipe_medium1"))
			//sound_play(asset_get("sfx_abyss_rumble"), 1, noone, .2, .8)
		}
		if window == 3 {
			sound_stop(asset_get("sfx_abyss_rumble"))
		}
		if window == 5 && window_timer == 4 && taunt_down {
			window_timer = 0
		}
		if (window < 5)
		{
			soft_armor = 9;
			super_armor = runeH;
		}
		else
		{
			soft_armor = 0;
			super_armor = false;
		}
		break;

	case AT_FSTRONG:
		if (window == 2 && window_timer == get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH) && !hitpause) sound_play(asset_get("sfx_birdclap"));
		break;
		
	case AT_NAIR:
		if (has_hit && runeJ)
		{
			can_attack = true;
			can_special = true;
			can_jump = true;
		}
		break;
		
	case AT_TAUNT:
		if (state_timer == 1)
		{
			puul.state = 7;
			puul.state_timer = 0;
			move_cooldown[AT_TAUNT] = 60;
		}
		if (taunt_down && window == 2 && window_timer == 13) window_timer = 12;
		if (window == 2 && window_timer == 1) shake_camera(4, 4);
		break;

	case AT_TAUNT_2:
		draw_indicator = false;
		if (state_timer < 200) suppress_stage_music(0.1, 0.05);
		can_jump = true;
		if (taunt_down && !jump_pressed) window_timer = 0;
		else sound_stop(sound_get("yaySfx"));
		break;
}

#define Grab(xpos, ypos, xsmooth, ysmooth)
{
	if (xsmooth != 0)
	{
		hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
		hit_player_obj.hsp = 0;
	}
	if (ysmooth != 0)
	{
		hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
		hit_player_obj.vsp = 0;
	}
}