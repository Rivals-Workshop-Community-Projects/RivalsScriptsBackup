//B - Reversals
switch (attack)
{
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (aura) was_parried = false;

switch (attack)
{
	case AT_TAUNT:
		if (practice&&object_index!=oTestPlayer)
		{
			if (state_timer == 1)
			{
				if (menuState == 0)
					menuStateBuffer = 1;
				else
				{
					tutDone[tutPrevMenu] = 1;
					tutDoneAdv[tutPrevMenu] = 1;
				}
			}
			hsp = 0;
			vsp = 0;
		}
		if (state_timer == 1) auraMeter = 0;
		if (state_timer < 68 && auraMeter != -1) auraMeter = shield_down?auraMeter+1:-1;
		else if (state_timer == 68 && auraMeter == 67) ActivateAura();
		if (window == 2 && window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH) && (attack_invince || taunt_down)) window_timer = 0;
		break;

	case AT_TAUNT_2:
		can_jump = true;
		if (state_timer == 1)
		{
			meowID = sound_play(sound_get("meow"), 1, -4, 2);
			clear_button_buffer(PC_TAUNT_PRESSED);
		}
		if (taunt_down && !jump_pressed) suppress_stage_music(0, 0.05);
		else window = 2;
		break;

	case 49:
		can_move = false;
		fSmashAngleSpeed /= 1.3;
		fSmashAngleSpeed += (right_down-left_down)/3;
		fSmashAngleSpeed = clamp(fSmashAngleSpeed, -2, 2);
		fSmashAngle += fSmashAngleSpeed;
		switch (window)
		{
			case 1:
				if (window_timer == 2)
				{
					nspecCharge = 10;
					fSmashCharge = 20;
					fSmashAngle = 270;
					sound_play(asset_get("sfx_boss_vortex_start"));
					sound_play(asset_get("sfx_boss_vortex"));
				}
				var uwu = spawn_hit_fx(x, y-floor(char_height/2), startrail_effect); uwu.spr_dir = spr_dir;
				x += (room_width/2 - x)/4;
				y += (room_height/4 - y)/4;
				break;
			case 2:
				sound_play(asset_get("sfx_boss_final_cannon"));
				break;
			case 3:
				shake_camera(3, 6);
				var dist = room_width+room_height;
				var offsetX = lengthdir_x(dist, fSmashAngle);
				var offsetY = lengthdir_y(dist, fSmashAngle);
				for (var i = 0; i < floor(dist); i+=50)
				{
					var owo = create_hitbox(49, 1, floor(x+i*offsetX/dist), floor(y+i*offsetY/dist-char_height/2));
					if (state_timer % 2) owo.damage = 0;
					if (fSmashCharge == 0) owo.hit_flipper = 0;
				}
				break;
			case 4:
				if (window_timer == 2 && fSmashCharge > 0)
				{
					window_timer = 0;
					window = 3;
					--fSmashCharge;
					sound_play(get_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX));
				}
				break;
			case 5:
				if (window_timer == 1)
				{
					with (asset_get("obj_article1")) if (player_id == other.id) newState = 2;
					sound_stop(asset_get("sfx_boss_vortex"));
				}
				else if (window_timer == get_window_value(49, 5, AG_WINDOW_LENGTH)-1)
				{
					for (var i = 0; i < 5; ++i)
					{
						var star = instance_create(x, y, "obj_article1");
						star.hsp = lengthdir_x(10, i*72+90);
						star.vsp = lengthdir_y(10, i*72+90);
						star.newState = 5;
					}
					move_cooldown[AT_NSPECIAL] = 60;
				}
				break;
		}
		break;

	case AT_JAB:
		if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(4, 5);
			SkipWindow(7, 8);
			SkipWindow(9, 10);
			if (!attack_pressed)
			{
				SkipWindow(3, 10);
				SkipWindow(6, 10);
			}
		}
		break;
		
		
	case AT_UAIR:
		ConstellationBonus(attack, 1);
		ConstellationBonus(attack, 2);
	case AT_FTILT:
	case AT_DTILT:
	case AT_UTILT:
	case AT_FAIR:
	case AT_BAIR:
		if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(3, 4);
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_DOWN_STICK_PRESSED);
			clear_button_buffer(PC_LEFT_STICK_PRESSED);
			clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
			clear_button_buffer(PC_DOWN_STRONG_PRESSED);
			clear_button_buffer(PC_LEFT_STRONG_PRESSED);
			clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
			clear_button_buffer(PC_UP_STRONG_PRESSED);
			clear_button_buffer(PC_STRONG_PRESSED);
		}
		break;

	case AT_NAIR:
		if (aura)
		{
			SkipWindow(1, 2);
			iasa_script();
			if (state_timer == 1)
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_JUMP_PRESSED);
			}
			move_cooldown[AT_NAIR] = 2;
		}
		break;

	case AT_DATTACK:
		if (window == 2 && has_hit_player)
		{
			window = 3;
			window_timer = 0;
		}
		if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(3, 4);
			SkipWindow(5, 6);
		}
		break;
		
	case AT_NSPECIAL:
		switch (window)
		{
			case 1:
				if (state_timer == 1)
				{
					nspecCharge = 0;
					nspecJC = false;
					with (asset_get("obj_article1")) if (player_id == other.id && state == 0 && newState == 0) newState = 1;
				}
				break;
			case 2:
				if (!special_down)
				{
					if (window_timer != get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)-1) sound_play(get_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX));
					window_timer = 0;
					window = 3;
				}
				else
					nspecCharge++;
				break;
			case 3:
				if (hitpause)
				{
					if (jump_pressed) nspecJC = true;
				}
				else if (window_timer == 1)
				{
					if (has_rune("N"))
					{
						var star = instance_create(x,y-30,"obj_article1");
						star.state = 1;
						star.newState = 1;
					}
					if (!ShootStar(1)) ShootStar(0);
				}
				break;
			case 4:
				if (window_timer == 2 && nspecCharge >= 12)
				{
					window_timer = 0;
					window = 3;
					nspecCharge -= 6;
					sound_play(get_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX));
				}
				break;
		}
		can_jump = ((window == 3 && window_timer > 2) || window >= 4) && !was_parried;
		if (can_jump)
		{
			if (nspecJC) jump_pressed = true;
			if (jump_pressed) clear_button_buffer(PC_SPECIAL_PRESSED);
		}
		if (aura)
		{
			SkipWindow(1, 3);
			SkipWindow(4, 6);
		}
		break;

	case AT_FSPECIAL:
		if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(4, 5);
		}
		can_fast_fall = false;
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, free&&!has_hit_player?7:1);
		switch (window)
		{
			case 1:
				hasMovedUp = false;
				if (has_hit_player && !hit_player_obj.super_armor)
				{
					if (hitpause) Grab(30, 0, 3, 3);
					else
					{
						set_attack(AT_FSPECIAL_2);
						CorrectHurtboxes();
					}
				}
				else if (window_timer == 9)
				{
					var uwu = spawn_hit_fx(x, y-36, shinestar_effect); uwu.depth = -10;
					sound_play(asset_get("mfx_star"));
					if (was_parried) window = 5;
				}
				else if (window_timer == 1)
				{
					sound_play(asset_get("sfx_blink_dash"));
					reset_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE);
				}
				break;

			case 2:
				if (window_timer == 1) afterImageTimer = 6;
				if (has_hit_player && !hit_player_obj.super_armor && hit_player_obj.hitpause) Grab(64, 0, 3, 3);
				if (!hitpause || (has_rune("E") && has_hit_player))
				{
					if (has_hit)
					{
						destroy_hitboxes();
						window = has_rune("E")?1:3;
						window_timer = 0;
						vsp = 0;
						hsp = 0;
						afterImageTimer = 0;
					}
					LedgeSnap();
				}
				break;

			case 3:
				if (window_timer <= 6)
					vsp = 0;
				LedgeSnap();
				break;

			case 4:
				can_wall_jump = true;
				LedgeSnap();
				break;
		}
		break;
	case AT_USPECIAL:
		var uspecSpeed = 27;
		can_move = false;
		switch(window)
		{
			case 1:
				if (window_timer == 1) spawn_hit_fx(x, y-floor(char_height/2), bigstar_effect);
				else if (window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)-1)
				{
					hasMovedUp = false;
					uspecTimes = 0;
					reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
					uspecDir = USpecDir();
					if (uspecDir == -1) uspecDir = 90;
					USpecInit();
					uspecResources = {djump:djumps, airdodge:has_airdodge, walljump:has_walljump};
				}
				break;
			case 2:
				USpecRemoveResources();
				can_wall_jump = true;
				if (!hitpause)
				{
					if (!free) uspecLanded = true;
					hsp = lengthdir_x(uspecSpeed, uspecDir);
					vsp = lengthdir_y(uspecSpeed, uspecDir);
					if (state_timer % 2 == 0)
					{
						var uwu = spawn_hit_fx(x, y-floor(char_height/2), startrail_effect);
						uwu.spr_dir = spr_dir;
					}
					LedgeSnap();
				}
				break;
			case 3:
				USpecRemoveResources();
				can_wall_jump = true;
				if (window_timer == 1) spawn_hit_fx(x, y-floor(char_height/2), bigstar_effect);
				else if (window_timer == get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)-1)
				{
					var tempUspecDir = uspecDir;
					uspecDir = USpecDir();
					if ((special_down || !aura) && uspecDir != -1 && (tempUspecDir != uspecDir || aura) && (uspecTimes < 2 || aura))
					{
						window = 2;
						window_timer = 0;
						USpecInit();
						sound_play(sound_get("pew"));
					}
				}
				break;
			case 4:
				can_wall_jump = true;
				if (window_timer == 1)
				{
					if (uspecLanded || !free || (has_rune("F") && has_hit_player))
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
				}
				break;
		}
		if (aura)
		{
			SkipWindow(4, 6);
		}
		break;

	case AT_USPECIAL_2:
		var uspecSpeed = has_rune("J")?22:16;
		can_move = false;
		switch(window)
		{
			case 1:
				free = true;
				can_shield = true;
				break;
			case 2:
				if (window_timer == get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH)-1)
				{
					hasMovedUp = false;
					uspecDir = joy_dir;
					uspecTimes = 0;
					if (joy_pad_idle) uspecDir = 90;
					if (!free) y--;
				}
				break;
			case 3:
				can_wall_jump = true;
				fall_through = true;
				if (!hitpause)
				{
					hsp = lengthdir_x(uspecSpeed, uspecDir);
					vsp = lengthdir_y(uspecSpeed, uspecDir);
					LedgeSnap();
					if (state_timer % 2 == 0)
					{
						var uwu = spawn_hit_fx(x, y-floor(char_height/2), startrail_effect);
						uwu.spr_dir = spr_dir;
					}
					if (!uspecTimes && UspecStar()) uspecTimes = 1;

					if (uspecTimes && (!free||special_pressed||shield_pressed||window_timer==get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH)))
					{
						clear_button_buffer(PC_SPECIAL_PRESSED);
						clear_button_buffer(PC_SHIELD_PRESSED);
						window = 5;
						window_timer = 0;
						vsp = -10;
						hsp = 0;
						sound_play(asset_get("sfx_abyss_hex_hit"));
						spawn_hit_fx(x, y, 302);
						destroy_hitboxes();
					}
					else if (!free)
					{
						window = 4;
						window_timer = 0;
						vsp = -10;
						destroy_hitboxes();
					}
				}
				break;
			case 4:
				if (window_timer == 1)
				{
					hsp /= 4;
					vsp /= 4;
				}
				can_move = true;
				can_wall_jump = true;
				break;
		}
		break;

	case AT_DSPECIAL:
		fast_falling = false;
		do_a_fast_fall = false;
		if (!aura) move_cooldown[attack] = 2;
		if (window_timer == 1)
		{
			with(asset_get("obj_article1")) if (player_id == other.id && state == 1 && point_distance(x, y, other.x, other.y-floor(other.char_height/2)) < other.dspecRadius+32)
			{
				var len = point_distance(x, y, other.x, other.y-100);
				var dir = point_direction(x, y, other.x, other.y-100);
				hsp = lengthdir_x(len/3, dir);
				vsp = lengthdir_y(len/3, dir);
				ignores_walls = true;
				checkMerge = true;
			}
		}
		else if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))
		{
			if (has_rune("O")) with (oPlayer) if (other.player != player && get_player_team(player) != get_player_team(other.player) && state_cat == SC_HITSTUN && point_distance(x, y, other.x, other.y) < other.dspecRadius+32)
			{
				var uwu = spawn_hit_fx(x, y-floor(char_height/2), 305); uwu.depth = -10;
				x = other.x;
				y = other.y - 95;
				hsp = 0;
				vsp = 0;
				old_hsp = 0;
				old_vsp = -1;
				hitpause = true;
				hitstop = 30;
				hitstip_full = 30;
				other.hsp = 0;
				other.vsp = -4;
				sound_play(asset_get("mfx_star"));
				uwu = spawn_hit_fx(x, y-floor(char_height/2), 305); uwu.depth = -10;
			}
		}
		break;
		
	case AT_DAIR:
		if (window == 1) dairTimes = 0;
		else if (!hitpause)
		{
			if (window == 2 && window_timer == 6
				|| window == 3 && window_timer == 2
				|| window == 3 && window_timer == 8)
				sound_play(asset_get("sfx_swipe_medium1"));
		}
		if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(4, 6);
		}
		break;
		
	case AT_FSTRONG:
		if (aura)
		{
			SkipWindow(1, 3);
			SkipWindow(4, 5);
		}
		ConstellationBonus(attack, 1);
		break;
		
	case AT_DSTRONG:
		if (aura)
		{
			SkipWindow(1, 3);
			SkipWindow(4, 5);
		}
		ConstellationBonus(attack, 1);
		break;
		
	case AT_USTRONG:
		if (aura)
		{
			SkipWindow(1, 3);
			SkipWindow(4, 5);
		}
		ConstellationBonus(attack, 1);
		ConstellationBonus(attack, 2);
		break;
}

#define USpecDir()
{
	if (joy_pad_idle) return -1;
	return point_direction(0, 0, right_down-left_down, down_down-up_down)
}

#define USpecInit()
{
	uspecLanded = !free;
	uspecPos = {x:x, y:y};
	++uspecTimes;
}

#define USpecRemoveResources()
{
	djumps = uspecResources.djump;
	has_airdodge = uspecResources.airdodge;
	has_walljump = uspecResources.walljump;
}

#define NearestOpponentDir()
{
	var nearest = noone;
	var tempDist = -1;
	with (oPlayer) if (other.player != player && get_player_team(player) != get_player_team(other.player) && ((other.spr_dir==1?x>other.x:x<other.x) || abs(x-other.x) < 128))
	{
		var dist = point_distance(x, y, other.x, other.y);
		if (nearest == noone || tempDist > dist)
		{
			tempDist = dist;
			nearest = self;
		}
	}
	return nearest;
}

#define Grab(xpos, ypos, xsmooth, ysmooth)
{
	if (xsmooth != 0)
	{
		hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
		hit_player_obj.hsp = 0;
		hit_player_obj.old_hsp = 0;
	}
	if (ysmooth != 0)
	{
		hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
		hit_player_obj.vsp = 0;
		hit_player_obj.old_vsp = 0;
	}
}

#define CorrectHurtboxes()
{
	hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}

#define LedgeSnap()
{
	if (!hasMovedUp && free && place_meeting(x+hsp,y,asset_get("par_block"))) for (var i = 0; i < 24; ++i) if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
	{
		y -= i;
		hasMovedUp = true;
		break;
	}
}

#define ConstellationBonus(_attack, _hboxNum)
{
	var noOfStars = StarCount();
	reset_hitbox_value(_attack, _hboxNum, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(_attack, _hboxNum, HG_DAMAGE);
	set_hitbox_value(_attack, _hboxNum, HG_KNOCKBACK_SCALING,   KBMult(get_hitbox_value(_attack, _hboxNum, HG_KNOCKBACK_SCALING), noOfStars));
	set_hitbox_value(_attack, _hboxNum, HG_DAMAGE,              DamageBonus(get_hitbox_value(_attack, _hboxNum, HG_DAMAGE), noOfStars));
}

#define StarCount()
{
	var noOfStars = 0;
	with(asset_get("obj_article1")) if (player_id == other.id && state == 1)
	{
		noOfStars += isBig+1;
	}
	return noOfStars;
}

#define KBMult(_kb, _noOfStars)
{
	return _kb * 1+(_noOfStars*starKB/100);
}

#define DamageBonus(_damage, _noOfStars)
{
	return _damage + _noOfStars*starDamage;
}

#define ShootStar(_big)
{
	var success = false;
	var otherRuneG = has_rune("G")||aura;
	with (asset_get("obj_article1")) if (player_id == other && state == 1 && !cracked && (_big^^!isBig) && point_distance(x, y, other.x, other.y) < (isBig?128:96))
	{
		var baseSpeed = otherRuneG?80:40;
		var speedScaling = 3;
		var opponent = other.NearestOpponentDir();
		if (opponent == noone)
		{
			old_hsp = other.spr_dir * (baseSpeed+other.nspecCharge*speedScaling);
			old_vsp = 0;
		}
		else
		{
			var dir = point_direction(x, y, opponent.x + opponent.hsp*4, opponent.y-floor(opponent.char_height/2) + opponent.vsp*4);
			old_hsp = lengthdir_x(baseSpeed+other.nspecCharge*speedScaling, dir);
			old_vsp = lengthdir_y(baseSpeed+other.nspecCharge*speedScaling, dir);
		}
		newState = 4;
		ignores_walls = true;
		checkMerge = false;
		other.tutDone[1] = true;
		if (other.upThrow > 50) other.tutDoneAdv[1] = true;
		if (isBig) sound_play(asset_get("sfx_ori_stomp_hit"));
		spawn_hit_fx(x, y, isBig?other.beegstar_effect:other.bigstar_effect);
		success = true;
		break;
	}
	return success;
}

#define UspecStar()
{
	var success = false;
	with (asset_get("obj_article1")) if (player_id == other && state == 1 && point_distance(x, y, other.x, other.y) < (isBig?128:96))
	{
		newState = 2;
		isDespawn = true;
		if (isBig) sound_play(asset_get("sfx_ori_stomp_hit"));
		sound_play(asset_get("sfx_abyss_hex_hit"),0,-4,1,0.9);
		spawn_hit_fx(x, y, isBig?other.beegstar_effect:other.bigstar_effect);
		success = true;
		other.tutDoneAdv[3] = true;
		break;
	}
	return success;
}

#define ActivateAura()
{
	aura = !aura;
	gpu_set_alphatestfunc(aura);
	if (aura)
	{
		sound_play(asset_get("sfx_absa_uair"));
		shake_camera(8, 6);
		spawn_hit_fx(x, y-42, 157);
	}
}

#define SkipWindow(_before, _after)
{
	if (window == _before)
	{
		for (var i = _before; i < _after; ++i) if (get_window_value(attack, i, AG_WINDOW_HAS_SFX) && (_before != i || window_timer <= get_window_value(attack, i, AG_WINDOW_SFX_FRAME))) sound_play(get_window_value(attack, i, AG_WINDOW_SFX));
		window = _after;
		window_timer = 0;
	}
}