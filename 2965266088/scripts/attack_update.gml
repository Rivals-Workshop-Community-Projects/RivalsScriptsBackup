//attack_update.gml

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_JAB:
		if (window >= 5 && free)
		{
			if (left_down && spr_dir == 1) hsp -= 0.2;
			if (right_down && spr_dir == -1) hsp += 0.2;
		}
		break;
	case AT_UTILT:
		if (window == 1 && window_timer == 1) total_window_time = 0;
		if (window_timer == 1) total_window_time += window_end;

		if (window > 2 && !free)
		{
			if (was_parried) parry_lag = total_window_time - state_timer + 40;
			else landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
			set_state(!was_parried ? PS_LANDING_LAG : PS_PRATLAND);
		}
		break;
	case AT_DTILT:
		if (window == window_last && window_timer == window_end-1)
		{
			if (down_down)
			{
				attack_end();
				hurtboxID.sprite_index = crouchbox_spr;
				state = PS_CROUCH;
				state_timer = 2;
			}
		}
		break;
	case AT_DATTACK:
		if (has_rune("H") && has_misfired && (!hitpause || hitstop == hitstop_full))
		{
			if (window == 1 && window_timer == window_end) spawn_hit_fx(x + 52 * spr_dir, y - 32, fx_nspec);
			if (state_timer % 2 == 0 && abs(hsp) > 6) spawn_hit_fx(x, y - random_func(6, 5, true) * 16, fx_fspec_proj_end)
		}
		break;
	case AT_USTRONG:
		if (window == 1 && window_timer == 1) spawn_hit_fx(x, y - 24, fx_darkcharge);
		if (window == 3 && window_timer == 2 && (!hitpause || hitstop == hitstop_full))
		{
			var fx = spawn_hit_fx(x - 2 * spr_dir, y - 72, fx_darksplash);
			fx.draw_angle = 90 * spr_dir;
		}

		if (window > 2 && window < 5 || window == 5 && window_timer < window_end/2) hud_offset = 160;
		break;
	case AT_FSTRONG:
		if (window > 1 && window < 5 && has_rune("M"))
		{
			if (smash_charging && state_timer % 12 == 0) spawn_hit_fx(x + 16 * spr_dir, y - 32, fx_runeM);
			runeM_drag(x + 16 * spr_dir, y - 32, 120);
		}

		if (window == 1 && window_timer == 1)
		{
			var fx = spawn_hit_fx(x - 8 * spr_dir, y - 40, fx_darkcharge);
			fx.spr_dir = -spr_dir;
		}
		if (window == 4 && window_timer == window_end && (!hitpause || hitstop == hitstop_full))
		{
			sound_play(asset_get("sfx_abyss_explosion"));
			var fx = spawn_hit_fx(x - 8 * spr_dir, y - 32, fx_fstrong_smear);
			fx.depth = depth - 2;
			spawn_hit_fx(x + 64 * spr_dir, y- 32, fx_darksplash);
		}
		break;
	case AT_DSTRONG:
		if (window == 1 && window_timer == 1) spawn_hit_fx(x + 16 * spr_dir, y - 24, fx_darkcharge);
		if (window == 3 && window_timer == 1) sound_play(asset_get("sfx_abyss_explosion"));
		if (window == 3 && window_timer == window_end && (!hitpause || hitstop == hitstop_full))
		{
			var fx = spawn_hit_fx(x + 8 * spr_dir, y, fx_dstrong_smash);
			fx.depth = depth - 2;
		}
		break;
	case AT_NAIR:
		if (flutter_nair_rune && attack_down && !hitpause)
		{
			switch (window)
			{
				case 2:
					if (window_timer == 1 && vsp > -1) vsp = -1;
				case 3:
					vsp -= 0.75;
					var cd_math = floor(abs(vsp) * 5 - gravity_speed * 10) + 10;

					if (move_cooldown[attack] < cd_math) move_cooldown[attack] = cd_math;
					break;
			}
		}
		break;
	case AT_DAIR:
		if (my_grab_id != noone)
		{
			if (window < 4) set_window(4);
			if (window == 4 && window_timer == 1)
			{
				hsp = 0;
				vsp = -8;
			}

			if (window < 6)
			{
				fall_through = true;

				with (my_grab_id)
				{
					x = ease_sineInOut(x, other.x, other.grab_time, 20);
                	y = ease_sineInOut(y, other.y+16, other.grab_time, 20);
				}
			}
			else fall_through = false;
		}
		else
		{
			if (window == 3 && window_timer == window_end || !free && my_grab_id == noone)
			{
				if (!was_parried)
				{
					if (!free) landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
					set_state(free ? PS_IDLE_AIR : PS_LANDING_LAG);
				}
				else set_state(free ? PS_PRATFALL : PS_PRATLAND);
			}
		}
		break;
	case AT_UAIR:
		if (window == 1 && window_timer == 1) spawn_hit_fx(x, y - 40, fx_darkcharge);
		with (hit_fx_obj) if (hit_fx == other.fx_darkcharge && other.state_timer > 8 && !other.hitpause) y -= 8;

		if (window == 1 && window_timer == window_end) uair_sfx = sound_play(asset_get("sfx_ori_charged_flame_release"));

		with (pHitBox)
		{
			if (player_id == other && attack == AT_UAIR && hbox_num == 1) other.uair_hbox_pos = [x, y];
		}
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;

		if (window < 3 && has_rune("M"))
		{
			if (state_timer % 12 == 0) spawn_hit_fx(x + 8, y - 32, fx_runeM);
			runeM_drag(x + 8 * spr_dir, y - 32, 150);
		}
		
		if (window < 3) vsp = clamp(vsp, vsp, 2);

		switch (window)
		{
			case 1: //var setup
				nspec_turned = false;
				if (window_timer == 1) spawn_hit_fx(x, y - 32, fx_darkcharge);
				break;
			case 2: //turning nspec + vfx work
				if (window_timer == 1 && (right_down && spr_dir == -1 || left_down && spr_dir == 1))
				{
					spr_dir = -spr_dir;
					nspec_turned = true;
				}

				if (window_timer == 30) if (guilty_gear_va) sound_play(sound_get("ggsfx_totsugeki"));

				if (window_timer == window_end && (!hitpause || hitstop == hitstop_full)) spawn_hit_fx(x + 52 * spr_dir, y - 34, fx_nspec);
				break;
			case 4:
				move_cooldown[attack] = 60;
				break;
		}
		break;
	case AT_USPECIAL:
		if (window == 1 && window_timer == window_end)
		{
			spawn_hit_fx(x, y, fx_uspec_wings[0]);
			var fx = spawn_hit_fx(x, y, fx_uspec_wings[0]);
			fx.spr_dir = -spr_dir;
		}
		if (window < 3) vsp = clamp(vsp, vsp, 2);

		if (window == 4 && !hitpause)
		{
			var fx = spawn_hit_fx(x + (random_func(6, 8, true)-4) * 4, y - 32, fx_fspec_proj_end);
			fx.hsp = (random_func(6, 8, true)-4)*0.75;
			fx.spr_dir = sign(fx.hsp);
			fx.draw_angle = 90 * fx.spr_dir;
			fx.depth = depth + 2;
		}

		if (window == 5) can_wall_jump = true; //just feels more responsive lol
		break;
	case AT_FSPECIAL:
		move_cooldown[attack] = 30;

		if (has_rune("B"))
		{
			if (window == 2 && window_timer == window_end)
			{
				//up proj
				var proj = create_hitbox(
					attack, 1,
					x + get_hitbox_value(attack, 1, HG_HITBOX_X) * spr_dir,
					y + get_hitbox_value(attack, 1, HG_HITBOX_Y)
				);
				proj.vsp = lengthdir_y(get_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED), -15);
				proj.proj_angle = point_direction(proj.x, proj.y, proj.x + proj.hsp, proj.y + proj.vsp) + 180 * (spr_dir == -1);

				//down proj
				var proj = create_hitbox(
					attack, 1,
					x + get_hitbox_value(attack, 1, HG_HITBOX_X) * spr_dir,
					y + get_hitbox_value(attack, 1, HG_HITBOX_Y)
				);
				proj.vsp = lengthdir_y(get_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED), 15);
				proj.proj_angle = point_direction(proj.x, proj.y, proj.x + proj.hsp, proj.y + proj.vsp) + 180 * (spr_dir == -1);
			}
		}
		break;
	case AT_DSPECIAL: //darkness charge
		can_fast_fall = false;
		if (window <= 2)
		{
			hsp = free ? clamp(hsp, -spec_stall_hsp, spec_stall_hsp) : 0;
			set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, (vsp > 0)); // && window < 3
		}
		else if (window > 2)
		{
			vsp = 0;
			hsp = 0;
			can_move = false;
		}
		
		switch (window)
		{
			case 1: //reset vars
				dspec_done = false;
				dark_hp_temp = 0;
				if (window_timer == 1) sfx_dspec_charge = sound_play(asset_get("sfx_abyss_portal_intro"), false, 0, 1, 0.25);
				break;
			case 2: //charge
				var startup = get_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH);
				if (!dspec_done)
				{
					//set charge to stop
					if (!special_down || dark_hp_temp >= dark_hp_max) dspec_done = true;

					//vfx
					if (state_timer % 2 == 0)
					{
						var fx = spawn_hit_fx(x, y - char_height / 2, fx_dspec_part);
						fx.draw_angle = random_func(5, 30, true) * 12; 
					}

					//actual function
					if (state_timer % dspec_rate == dspec_rate-1)
					{
						var fx = spawn_hit_fx(x, y - char_height / 2, fx_dspec_indc);
						fx.draw_angle = random_func(5, 30, true) * 12; 
						fx.depth = depth + 1;
						sound_play(asset_get("sfx_holy_textbox"), false, 0, 0.5, 5 + dark_hp_temp/10);
						dark_hp_temp ++;

						if (has_superspell && superspell_cur < superspell_max) superspell_cur ++;
					}
				}
				else
				{
					if (floor(dark_hp_temp) > 0) set_window(4); //form dark orb
					else if (floor(dark_hp_temp) == 0 && window_timer == window_end-1) set_window(3); //don't form

					sound_stop(sfx_dspec_charge);
					if (dark_hp_temp >= dark_hp_max) sound_play(asset_get("sfx_boss_shine"), false, 0, 1, 0.5)
				}
				break;
			case 4: //give darkorb
				if (window_timer == 1 && dark_owner == noone && floor(dark_hp_temp) > 0)
				{
					if (dark_hp_temp >= dark_hp_max) dark_hp_temp = dark_hp_max;
					dark_hp_cur = floor(dark_hp_temp);
					dark_hp_temp = 0;
					dark_target = self;
					dark_owner = dark_target;
					dark_state = 0;
				}
				break;
		}
		break;
	case AT_DSPECIAL_2: //swap darkness + collect darkness particles
		hsp = clamp(hsp, -spec_stall_hsp, spec_stall_hsp);
		if (vsp > 0) vsp = clamp(vsp, vsp, 3);

		if (window == 3 && dark_target != self && dark_target != noone)
		{
			dark_state = 3;
			dark_timer = 0;
			dark_target_prev = dark_target;
			dark_target.dark_owner = noone;
			dark_target = self;
			dark_owner = self;
		}
		break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case AT_TAUNT: //far taunt - she dancing
		if (window == 1 && window_timer == 1) //play a random pop sound every new pose
		{
			sound_play(
				asset_get("sfx_absa_cloud_place"),
				false,
				0,
				(random_func(1, 5, true) + 5) * 0.05,
				(random_func(2, 5, true) + 10) * 0.2
			);
		}
		if (window == 2 && window_timer == window_end)
		{
			if (taunt_down) 
			{
				if (taunt_pose < 7) taunt_pose ++; //go through the whole sequence, it essencially loops 2 windows
				else taunt_pose = 0; //if taunt is held down loop her right to the start
				set_window(1);
			}
		}

		if (taunt_charge_rune && taunt_pose % 2 == 1 && window == 1 && window_timer == 8 && dark_state == 1 && dark_hp_cur < dark_hp_max) dark_hp_cur ++;
		break;
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed

		//crash landing vfx
		if (window == 1)
		{
			if (window_timer == 1)
			{
				sound_play(alt_cur == 11 ? sound_get("sfx_lancer_fly") : sound_get("sfx_strongcharge"));
			}
			if (window_timer == window_end)
			{
				if (alt_cur == 11)
				{
					sound_play(sound_get("sfx_lancer_crash"));
					var fx = spawn_hit_fx(x + draw_x, y - 32, fx_lancer);
					fx.depth = depth - 3;
				}
				else
				{
					sound_play(asset_get("sfx_bird_nspecial2"));
					sound_play(asset_get("sfx_abyss_despawn"), false, 0, 0.6, 0.7);
					var fx = spawn_hit_fx(x + draw_x + 32 * spr_dir, y - 16, fx_darkness_end);
					fx.depth = 15;

					var fx = spawn_hit_fx(x + draw_x + 32 * spr_dir, y - 16, fx_graze);
					fx.depth = depth - 1;
				}
			}
		}
		break;
	case AT_EXTRA_1: //dspec blast rune
		if (window == 2 && window_timer == 1 && !hitpause && dark_state > -1)
		{
			spawn_hit_fx(x, y - 32, fx_darkness_consume);
        	var chaos_blast = create_hitbox(attack, 1, x, y);
			chaos_blast.damage = lerp(chaos_blast.damage, 14, dark_hp_cur/30);
			chaos_blast.kb_value = lerp(chaos_blast.kb_value, 9, dark_hp_cur/30);
			chaos_blast.kb_scale = lerp(chaos_blast.kb_scale, 1, dark_hp_cur/30);
			chaos_blast.hitpause = lerp(chaos_blast.hitpause, 12, dark_hp_cur/30);
			chaos_blast.hitpause_growth = lerp(chaos_blast.hitpause_growth, 1, dark_hp_cur/30);

			dark_state = -1;
		}
		break;
	case 49: //final strong
		super_armor = true;
		if (window == 9 || window == window_last)
		{
			if (window_timer <= window_end/2) vsp = 0;

			spell_bg = false;
		}
		else
		{
			spell_bg = true;

			can_move = false;
			vsp = 0;
			hsp = 0;
		}

		//stop time
		with (oPlayer) if (player != other.player)
		{
			if (other.window == 1 && other.window_timer == 1 + ("fs_char_initialized" in other))
			{
				old_hsp = hsp;
				old_vsp = vsp;
				hitpause = true;
				hitstop = 140;
				can_move = false;
				if (get_window_value(attack, window, AG_WINDOW_HAS_SFX))
				{
					window_should_have_sound = true;
					set_window_value(attack, window, AG_WINDOW_HAS_SFX, 0);
				}
			}
			else
			{
				if (hitpause)
				{
					hsp = 0;
					vsp = 0;
				}
				if (!hitpause && window_should_have_sound)
				{
					set_window_value(attack, window, AG_WINDOW_HAS_SFX, true);
					window_should_have_sound = false;
				}
			}
		}

		switch (window)
		{
			case 1:
				superspell_cur = 0;
				if ("fs_char_initialized" in self)
				{
					fs_charge = 0;
					fs_force_fs = false;
				}

				if (window_timer == 16) //amulet gone
				{
					var fx = spawn_hit_fx(x, y, fx_fs_amulet);
					fx.depth = depth - 1;
				}

				if (window_timer == window_end)
				{
					var fx = spawn_hit_fx(x, y - 32, fx_fs_charge);
					fx.depth = depth - 1;
				}
				break;
			case 4:
				if (window_timer == window_end)
				{
					shake_camera(15, 25);
					spawn_hit_fx(x, y - 40, fx_fs_release);
				}
				break;
			case 5:
				var fx = spawn_hit_fx(
					x + (random_func(8, 5, true) - 2) * 32,
					y - (random_func(9, 5, true) - 1) * 32,
					hit_fx_create(sprite_get("fx_graze_part"), 10)
				);
				fx.depth = depth - 2;
				break;
			case 8:
				spawn_hit_fx(x, y - random_func(6, 5, true) * 16, fx_fspec_proj_end);
				if (my_grab_id != noone) set_window(10);
				break;
			case 9:
				if (window_timer == 1) hsp = 6 * spr_dir;

				if (abs(hsp) > 1) hsp -= spr_dir*0.1;
				else hsp = 0;
				break;
			case 10: case 11: case 12:
				fade_to_black += 1/60;

				with (my_grab_id)
				{
					x = ease_sineInOut(x, other.x+32*other.spr_dir, other.grab_time, 20);
                	y = ease_sineInOut(y, other.y-16, other.grab_time, 20);
				}

				if (window == 12 && window_timer == window_end - 1) shake_camera(15, 25)
				break;
			case 13:
				fade_to_black = 0;
				break;
		}
		break;
	case 46: //sonic trick
		iasa_script(); //lets character cancel out of the animation at any point
		if (vsp > 0 && window == 3) //window 3 is the window specified for the trick hold pose
		{
			window ++;
			window_timer = 0;
		}
		if (window > 1 && !free) set_state(PS_LANDING_LAG);
		break;
}

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}

#define runeM_drag(x_pos, y_pos, max_drag)
{
	with (oPlayer) if (player != other.player && !invincible && state != PS_DEAD && state != PS_RESPAWN)
	{
		var drag_dist = point_distance(x_pos, y_pos, x, y);
		var drag_angle = point_direction(x_pos, y_pos, x, y);
		var drag_speed = (drag_dist - max_drag) / 50 - 1;
		
		if (drag_dist <= max_drag)
		{
			if (y < other.y && position_meeting(x, y + 1, asset_get("par_jumpthrough")) && !free) y += 4;

			if (other.smash_charging)
			{
				go_through = true;
				can_tech = false;
				set_state(PS_HITSTUN);
				hitstun = 20;
				free = true;

				hurtboxID.sprite_index = hurtbox_spr;
				hurtboxID.dodging = false;
			}

			hsp = lengthdir_x(drag_speed, drag_angle);
			vsp = lengthdir_y(drag_speed, drag_angle);
		}
	}
}