//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL)
	trigger_b_reverse();
if (aura) was_parried = false;

switch (attack)
{
	case AT_TAUNT:
		if (window == 1 && window_timer == 14) sound_play(asset_get("mfx_star"),0,-4,2,1.5);
		else if (window == 2 && window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH))
		{
			if (taunt_down) window_timer--;
		}
		if (state_timer == 1) auraMeter = 0;
		else if (attack_counter == 0 || special_counter == 0)
		{
			sound_play(sound_get("vineboom"));
			var boowomp = instance_create(x, y-64, "obj_article3");
			boowomp.sprite_index = sprite_get("boowomp");
			boowomp.vsp = -6;
			boowomp.depth = depth-1;
		}
		if (state_timer < 68 && auraMeter != -1) auraMeter = shield_down?auraMeter+1:-1;
		else if (state_timer == 68 && auraMeter == 67) ActivateAura();
		break;

	case AT_EXTRA_1:
		if (practice)
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
		if (window == 3 && window_timer == get_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH) && (attack_invince || taunt_down)) window_timer--;
		break;

	case AT_TAUNT_2:
		can_jump = true;
		if (state_timer == 1)
		{
			spawn_base_dust(x, y-floor(char_height/2), "anime", spr_dir);
			holidayID = sound_play(sound_get("holiday"), 1, 0, 2);
			clear_button_buffer(PC_TAUNT_PRESSED);
			tutDoneAdv[0] = 1;
		}
		if (taunt_down && !jump_pressed) suppress_stage_music(0, 0.05);
		else window = 2;
		break;

	case AT_NSPECIAL:
		fall_through = down_down;
		if (down_down && !freemd && !free) free = true;
		hsp*=0.92;
		vsp*=0.92;
		if (!has_rune("L") && !aura) move_cooldown[AT_NSPECIAL] = 30;
		switch (window)
		{
			case 1:
				if (window_timer == 1) nspecMeter = 0;
				else if (window_timer == 6) sound_play(sound_get("snd_select"), 0, -4, 2);
				break;
			case 2:
				if (window_timer >= 4 && (attack_down || attack_pressed || special_down || special_pressed))
				{
					if ((window_timer >= 55 && window_timer <= 62) || has_rune("L"))
					{
						window = 6;
						sound_play(sound_get("snd_laz"));
						tutDone[2] = 1;
					}
					else
					{
						window = 3;
						sound_play(asset_get("sfx_swipe_medium1"));
						sound_play(sound_get("snd_spellcast"));
					}
					window_timer = 0;
				}
				else if (shield_pressed)
				{
					window = 9;
					window_timer = 0;
					clear_button_buffer(PC_SHIELD_PRESSED);
				}
				else
				{
					if (window_timer % 4 == 0)
					{
						var angle = random_func(0, 360, 0);
						var dist = random_func(1, 15, 0)-30;
						var p = spawn_hit_fx(x+lengthdir_x(dist, angle), y+lengthdir_y(dist, angle)-60, particle);
						p.depth = depth-1;
					}
					++nspecMeter;
				}
				break;
			case 9:
				++nspecMeter;
				break;
		}
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(4, 10);
            SkipWindow(6, 7);
            SkipWindow(8, 10);
			clear_button_buffer(PC_SPECIAL_PRESSED);
        }
		break;

	case AT_FSPECIAL:
		switch (window)
		{
			case 1:
				if (window_timer == 4) vsp = min(vsp, -3);
				break;
			case 2:
				if (fspecMeter.charge > 0 && !has_rune("K") && !aura) fspecMeter.charge--;
				else tutDone[3] = 1;
				var window1Length = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
				if (!special_down && state_timer > window1Length+20)
				{
					window = 3;
					window_timer = 0;
					if (!has_rune("K") && !aura) fspecMeter.charge = max(0, fspecMeter.charge-30);
				}
				if (window_timer % ((has_rune("J")||aura)?2:5) == 0 && !hitpause)
				{
					var hbox = create_hitbox(has_rune("M")?AT_NSPECIAL:AT_FSPECIAL, 1, x+get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y));
					var ang = random_func(2, 55, 0)-30;
					var spe = get_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
					hbox.draw_angle = ang;
					hbox.hsp = hsp/2+spr_dir*lengthdir_x(spe, ang);
					hbox.vsp = vsp/2+lengthdir_y(spe, ang);
					hbox.length = clamp(fspecMeter.charge/3, 4, 24)*(has_rune("J")?2:1);
					if (fspecMeter.charge < 70)
					{
						hbox.hasHitCrystal = true;
						sound_play(asset_get("sfx_swipe_weak2"));
					}
					else sound_play(asset_get("sfx_swipe_weak1"));
					if (hbox.length == 4) hbox.damage = 0;
				}
				break;
		}
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(3, 4);
			clear_button_buffer(PC_SPECIAL_PRESSED);
		}
		break;

	case AT_DSPECIAL:
		can_fast_fall = false;
		switch (window)
		{
			case 1:
				if (window_timer == 1) 
				{
					vsp = 12;
					graveID = sound_play(sound_get("grave"), 0, -4, 3);
				}
				else if (shield_pressed && window_timer >= 7)
				{
					clear_button_buffer(PC_SHIELD_PRESSED);
					tutDoneAdv[2] = 1;
					window = 3;
					window_timer = 0;
				}
				if (vsp>=0) vsp -= 1;
				if (state_timer % 6 == 1 && !hitpause) CreateAfterimage();
				break;
			case 2:
				var window1Length = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
				vsp = max(vsp-1, -5);
				if ((!special_down && (state_timer > window1Length+6 || aura)) || shield_pressed || state_timer > window1Length+36)
				{
					window = 3;
					window_timer = 0;
					if (shield_pressed)
					{
						clear_button_buffer(PC_SHIELD_PRESSED);
						tutDoneAdv[1] = 1;
					}
					else
					{
						if (!has_rune("B")) with (obj_article1) if (player_id == other) newState = 2;
						instance_create(round(x - 16*spr_dir), round(y - 16), "obj_article1");
					}
				}
				if (state_timer % 6 == 1 && !hitpause) CreateAfterimage();
				if (state_timer % 4 == 0)
				{
					var angle = random_func(0, 360, 0);
					var dist = random_func(1, 10, 0)-20;
					var p = spawn_hit_fx(x+lengthdir_x(dist, angle)+spr_dir*32, y+lengthdir_y(dist, angle)-60, particle);
					p.depth = depth-1;
				}
				break;
			case 3:
				can_wall_jump = true;
				if (window_timer == 1)
				{
					if (!has_rune("B")) dspecBan = true;
					tutDone[1] = 1;
				}
				break;
		}
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(3, 4);
			clear_button_buffer(PC_SPECIAL_PRESSED);
		}
		break;

	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		free = true;
		var halfHeight = char_height/2+8;
		draw_x = -lengthdir_y(halfHeight, spr_angle);
		draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
		switch (window)
		{
			case 1:
				hsp /= 1.15;
				vsp /= 1.15;
				uspecAngle = 0;
				if (window_timer == 4) spawn_hit_fx(x, y-halfHeight, boost_effect);
				break;
			case 2:
				var window1Length = aura?1:get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
				if ((state_timer > window1Length+24 && !has_rune("I") && !aura) || ((shield_pressed || was_parried) && state_timer > window1Length+4))
				{
					if (hsp!=0) spr_dir = sign(hsp);
					uspecAngle = angle_difference(spr_angle, 0)-90*spr_dir;
					window = 3;
					window_timer = 0;
					destroy_hitboxes();
					clear_button_buffer(PC_SHIELD_PRESSED);
				}
				else if (!hitpause)
				{
					if (state_timer == window1Length+1)
					{
						sound_play(asset_get("sfx_bird_downspecial"));
						create_hitbox(AT_USPECIAL, 1, 0, 0);
					}
					if (state_timer % 2 == 0)
					{
						var angle = random_func(0, 360, 0);
						var dist = random_func(1, 10, 0)-20;
						spawn_hit_fx(x+lengthdir_x(dist, angle), y+lengthdir_y(dist, angle)-40, particle);
					}
					var targetAng = angle_difference(joy_pad_idle?90:joy_dir, spr_angle+90);
					var angAmt = (has_rune("I")||aura)?12:6;
					spr_angle = clamp(spr_angle+targetAng, spr_angle-angAmt, spr_angle+angAmt);

					var spe = min((state_timer-window1Length)*2, 12);
					var ang = spr_angle+90;
					hsp = lengthdir_x(spe, ang);
					vsp = lengthdir_y(spe, ang);

					if (has_rune("I")||aura)
					{
						fall_through = true;
						if ((state_timer-window1Length-1) % 30 == 0)
						{
							destroy_hitboxes();
							create_hitbox(AT_USPECIAL, 1, 0, 0);
						}
					}
				}
				can_wall_jump = true;
				if (state_timer % 6 == 0 && !hitpause) CreateAfterimage();
				hurtboxID.sprite_index = sprite_get("uspec_hurt2");
				break;
			case 3:
				hsp /= 1.2;
				vsp /= 1.2;
				can_wall_jump = true;
				hurtboxID.sprite_index = sprite_get("uspec_hurt2");
				break;
		}
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(3, 4);
			clear_button_buffer(PC_SPECIAL_PRESSED);
		}
		break;

	case 49:
		can_move = false;
		force_depth = true;
		depth = -6;
		if (window == 1 || window == 2)
		{
			spr_dir = 1;
			x += (room_width/2 - x)/8;
			y += (room_height/3 - y)/8;
			with (oPlayer) if (other.state_timer % 3 == 0 && get_player_team(player) != get_player_team(other.player)) take_damage(player, other.player, 1);

			if (state_timer == 10)
			{
				sound_play(sound_get("grave"), 0, -4, 3);
				sound_play(sound_get("snd_spellcast"));
			}
			else if (state_timer == 150)
			{
				window = 3;
				window_timer = 0;
			}
			if (state_timer % 4 == 0)
			{
				var angle = random_func(0, 360, 0);
				var dist = random_func(1, 15, 0)-30;
				var p = spawn_hit_fx(x+lengthdir_x(dist, angle), y+lengthdir_y(dist, angle)-40, particle);
				p.depth = depth-1;
			}
		}
		break;

	case AT_USTRONG:
		if (!hitpause)
		{
			if (window == 2 && window_timer == 5)
				sound_play(sound_get("flakeIce"), 0, -4, 1, 1.3);
			else if (window == 3)
			{
				if (window_timer == 3)
					sound_play(sound_get("flakeIce"), 0, -4, 1, 1.25);
				else if (window_timer == 7)
					sound_play(sound_get("flakeIce"));
			}
		}
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(4, 5);
            clear_button_buffer(PC_UP_STRONG_PRESSED);
        }
		break;

	case AT_FSTRONG:
		if (!hitpause)
		{
			if (window == 2)
			{
				if (window_timer == 1)
					spawn_base_dust(x+spr_dir*10, y, "dash_start", spr_dir);
				else if (window_timer == 5)
					sound_play(sound_get("flakeIce"), 0, -4, 1, 1.3);
			}
			else if (window == 3)
			{
				if (window_timer == 3)
					sound_play(sound_get("flakeIce"), 0, -4, 1, 1.25);
				else if (window_timer == 7)
					sound_play(sound_get("flakeIce"));
			}
		}
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(4, 5);
            clear_button_buffer(PC_LEFT_STRONG_PRESSED);
            clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
        }
		break;

	case AT_DSTRONG:
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(4, 6);
            clear_button_buffer(PC_DOWN_STRONG_PRESSED);
        }
		break;

	case AT_FTILT:
		if (window == 2 && window_timer == 1)
			spawn_base_dust(x, y, "dash", spr_dir);
	case AT_UTILT:
	case AT_DTILT:
		if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(3, 4);
			clear_button_buffer(PC_ATTACK_PRESSED);
            clear_button_buffer(PC_UP_STICK_PRESSED);
            clear_button_buffer(PC_DOWN_STICK_PRESSED);
            clear_button_buffer(PC_LEFT_STICK_PRESSED);
            clear_button_buffer(PC_RIGHT_STICK_PRESSED);
            clear_button_buffer(PC_UP_STRONG_PRESSED);
            clear_button_buffer(PC_DOWN_STRONG_PRESSED);
            clear_button_buffer(PC_LEFT_STRONG_PRESSED);
            clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
		}
		break;

	case AT_DATTACK:
        if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(3, 5);
		}
		if (window == 2 && !hitpause && window_timer == 1)
		{
			spawn_base_dust(x+spr_dir*10, y, "dash", spr_dir);
			spawn_base_dust(x+spr_dir*60, y, "dash", -spr_dir);
		}
		else if (window == 3 && down_down && window_timer == get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH)*(has_hit?1:1.5))
		{
			--window_timer;
		}
		break;

    case AT_FAIR:
    case AT_BAIR:
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(3, 5);
            clear_button_buffer(PC_ATTACK_PRESSED);
            clear_button_buffer(PC_LEFT_STICK_PRESSED);
            clear_button_buffer(PC_RIGHT_STICK_PRESSED);
            clear_button_buffer(PC_LEFT_STRONG_PRESSED);
            clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
        }
        break;

	case AT_UAIR:
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(5, 6);
        }
		if (state_timer == 4)
		{
			sound_play(asset_get("sfx_swipe_medium2"));
			hasHitUAir = false;
		}
		if (window >= 2) draw_indicator = false;
		break;

	case AT_NAIR:
        if (aura)
        {
            SkipWindow(1, 3);
            SkipWindow(4, 5);
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
		if (window == 2 && (window_timer == (has_rune("D")?1:2)))
		{
			sound_play(asset_get("sfx_boss_shine"));
			if (has_rune("D")) sound_play(get_window_value(AT_NAIR, 2, AG_WINDOW_SFX));
		}
		if (window >= 3 && has_rune("D")) can_jump = true;
		break;

	case AT_DAIR:
        if (aura)
        {
            SkipWindow(1, 2);
            SkipWindow(3, 4);
        }
		if (window==2 && window_timer%3==0 && !hitpause) create_hitbox(AT_DAIR, 2, 0, 0);
		break;

	case AT_JAB:
		if (aura)
		{
			SkipWindow(1, 2);
			SkipWindow(6, 11);
			SkipWindow(7, 9);
			SkipWindow(10, 11);
			if (state_timer == 1)clear_button_buffer(PC_ATTACK_PRESSED);
		}
		switch (window)
		{
			case 2:
				if (!hitpause && !was_parried && has_hit_player && instance_exists(hit_player_obj))
				{
					window = 3;
					window_timer = 0;
				}
				break;
			case 4:
				if (state_timer > 30)
				{
					window = 7;
					window_timer = 0;
				}
				else if (attack_pressed)
				{
					window = 5;
					window_timer = 0;
				}
			case 3:
				with (hit_player_obj) set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
				Grab(34, -2, 2, 2);
				break;
			case 5:
				with (hit_player_obj) set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
				if (window_timer == 3)
				{
					sound_play(sound_get("snd_damage"));
					sound_play(sound_get("snd_hurt1"));

					//ApplyStack();
					fspecMeter.charge = min(fspecMeter.charge+15, fspecMeter.chargeMax);
				}
				switch (ceil(window_timer/3))
				{
					default:
						Grab(34, -2, 2, 2);
						break;
					case 2:
						Grab(24, 1, 2, 2);
						break;
					case 3:
						Grab(30, 1, 2, 2);
						break;
				}
				break;
			case 6:
				was_parried = false;
				break;
			case 7:
			case 8:
				with (hit_player_obj) set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
				Grab(20, -34, 2, 2);
				break;
			case 9:
				if (window_timer < 6)
				{
					with (hit_player_obj) set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
					switch (ceil(window_timer/3))
					{
						default:
							Grab(34, -15, 1.2, 1.2);
							break;
						case 2:
							Grab(34, -1, 1.2, 1.2);
							break;
					}
				}
				else if (window_timer == 7)
				{
					hsp = spr_dir * -3;
				}
				break;
		}
		break;
}

//#define ApplyStack()
//{
//	hit_player_obj.noelleFrostbite = clamp(hit_player_obj.noelleFrostbite+1, 0, frostbiteMax);
//	hit_player_obj.noelleFrostbiteID = self;
//}

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

#define CreateAfterimage()
{
	afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:c_white, timer:0, timerMax:20};
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
{
	if (hitpause) return;
	var dlen; //dust_length value
	var dfx; //dust_fx value
	var dfg; //fg_sprite value
	var dfa = 0; //draw_angle value
	var dust_color = 0;
	var x = argument[0], y = argument[1], name = argument[2];
	var dir = argument_count > 3 ? argument[3] : 0;
	
	switch (name) {
		default: 
		case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
		case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
		case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
		case "doublejump": 
		case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
		case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
		case "land": dlen = 24; dfx = 0; dfg = 2620; break;
		case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
		case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
		case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
		case "anime": dlen = 1; dfx = 22; dfg = 2656; dust_color = 1; break;
		case "flake": dlen = 1; dfx = 14; dfg = 2656; dust_color = 1; break;
	}
	var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
	newdust.dust_fx = dfx; //set the fx id
	if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
	newdust.dust_color = dust_color; //set the dust color
	if dir != 0 newdust.spr_dir = dir; //set the spr_dir
	newdust.draw_angle = dfa;
	return newdust;
} // Supersonic

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
		for (var i = _before; i < _after; i=(get_window_value(attack,i,AG_WINDOW_GOTO)!=0)?get_window_value(attack,i,AG_WINDOW_GOTO):i+1;) if (get_window_value(attack, i, AG_WINDOW_HAS_SFX) && (_before != i || window_timer <= get_window_value(attack, i, AG_WINDOW_SFX_FRAME))) sound_play(get_window_value(attack, i, AG_WINDOW_SFX));
		window = _after;
		window_timer = 0;
	}
}