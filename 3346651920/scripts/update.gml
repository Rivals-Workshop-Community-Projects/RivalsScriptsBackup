// Slenderman update.gml

if (object_index != asset_get("oTestPlayer"))
{
	if (get_synced_var( player )!=666)
	{
		set_synced_var( player, 666 );
	}
	if (DAY_ONE_MODE){
		if (state!=PS_SPAWN){
		DAY_ONE_MODE = false;
		set_ui_element( UI_HUD_ICON, sprite_get("_hud_real") );
		}
	}
}
//reset stuff for dev
/*
set_synced_var( player, 0 );
set_ui_element( UI_HUD_ICON, asset_get("empty_sprite") );
*/

// Walkturn visuals
if (state == PS_WALK_TURN && left_down && right_down) state_timer = 1;

// Cooldown for FSpecial.
if (fsp_did)
{
	move_cooldown[AT_FSPECIAL] = 2;
	if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
		fsp_did = false;
		move_cooldown[AT_FSPECIAL] = 0;
	}
}

// Cooldown for Grounded DSpecial.
if (dsp_real_cd > 0) 
{
	move_cooldown[AT_DSPECIAL] = 2;
	dsp_real_cd--;
}

// Cooldowns for DSpecial.
if (dsp_air_try_cd > 0) dsp_air_try_cd--;
if (dsp_air_try_cd_timer > 0) dsp_air_try_cd_timer--;
if (free)
{
	move_cooldown[AT_DSPECIAL] = 2;
	/*if (collision_line(x, y, x, y + dsp_air_max_distance, asset_get("par_block"), false, false))
	{
		move_cooldown[AT_DSPECIAL_AIR] = 0;
	}
	else
	{
		move_cooldown[AT_DSPECIAL_AIR] = 2;
	}*/
}

// Specialty variable setting.
if (slender_staticheavy_sound_id == noone)
{
	slender_staticheavy_sound_id = sound_play(sound_get("staticheavy"), true);
	if (gimme_20_dollars) slender_staticmedium_sound_id = sound_play(sound_get("gimm20dollars"), true); 
	else slender_staticmedium_sound_id = sound_play(sound_get("staticmedium"), true);
	sound_volume(slender_staticheavy_sound_id, 0, 0);
	sound_volume(slender_staticmedium_sound_id, 0, 0);
}
if (background_drawer_id == noone) background_drawer_id = instance_create(0, 0, "obj_article2");

// Slenderman jab / dspecial sounds.
if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
	sound_volume(slender_staticheavy_sound_id, 0, 0);
	sound_volume(slender_staticmedium_sound_id, 0, 0);
}

switch (state)
{
	case PS_DASH_START:
	if (state_timer == 1)
	{
		sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.5, 1.2);
		sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.4, 0.8);
		sound_play(asset_get("sfx_springswitch"), false, noone, 0.4, 1.6);
	}
	break;
	
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	switch (attack)
	{
		case AT_JAB:
		//STATIC STUFF
		if (jab_timer > jab_timer_staticstart)
		{
			if (window < 7)
			{
				var is_it_heavy_distance = false;
				var is_it_medium_distance = false;
				with(oPlayer)
				{
					if (id != other.id && get_player_team(other.player) != get_player_team(player) &&
						!((state == PS_RESPAWN && visible == false) || state == PS_DEAD))
					{
						if (invincible||initial_invince){}else
						{
						
						if (point_distance(x, y, other.x, other.y - 66) < other.dist_h_static)
						{
							is_it_heavy_distance = true;
								if (get_gameplay_time() % 5 == 0) take_damage(player, other.player, 2);
							if (slender_haunt == noone) slender_buildup += 2.05;
						}
						//you might notice that this doesn't check for invincibility.... yes, it is NTENTIONAL.
						// holdup chat you forgot the 'i' in intentional here.
						// not gonna fix it just thought I'd say something ya know?
						//thanks vforce hi i'm here and i check for invincibility now are you proud of me mom
						}
					}
				}
				
				slender_staticheavy_volume = 
						(is_it_heavy_distance == true) 
						? clamp(slender_staticheavy_volume + 0.03, 0, 0.4)
						: clamp(slender_staticheavy_volume - 0.01, 0, 0.4);
				sound_volume(slender_staticheavy_sound_id, slender_staticheavy_volume, 10);
				
				slender_staticmedium_volume = clamp(slender_staticmedium_volume + 0.01, 0, 0.5);
				sound_volume(slender_staticmedium_sound_id, slender_staticmedium_volume, 10);
			}
			else
			{
				slender_staticheavy_volume = clamp(slender_staticheavy_volume - 0.02, 0, 0.4);
				slender_staticmedium_volume = clamp(slender_staticmedium_volume - 0.02, 0, 0.7);
				sound_volume(slender_staticheavy_sound_id, slender_staticheavy_volume, 10);
				sound_volume(slender_staticmedium_sound_id, slender_staticmedium_volume, 10);
			}
		}
		
		// Projectile effecting.
		teleports_behind();
		break;
		
		case AT_FSPECIAL:
		// Projectile effecting.
		if (super_armor) teleports_behind();
		break;
		
		case AT_DSPECIAL:
		// Projectile effecting.
		teleports_behind();
		break;
	}
	if (!attack == AT_JAB)
	{
		slender_staticheavy_volume=clamp(slender_staticheavy_volume - 0.05, 0, 0.4);
		slender_staticmedium_volume=clamp(slender_staticmedium_volume - 0.05, 0, 0.7);
		sound_volume(slender_staticheavy_sound_id, slender_staticheavy_volume, 10);
		sound_volume(slender_staticmedium_sound_id, slender_staticmedium_volume, 10);
	}
	break;
	
	case PS_AIR_DODGE:
	if (state_timer == 2 && !hitpause)
	{
		summon_afterimage(0, 0);
		sound_play(sound_get("staticmedium_short"), false, noone, 0.5, 3);
		sound_play(sound_get("distort_4"), false, noone, 0.55, 3);
	}
	break;
	
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
	if (state_timer == 1 && !hitpause)
	{
		summon_afterimage(0, 0);
		sound_play(sound_get("staticmedium_short"), false, noone, 0.5, 3);
		sound_play(sound_get("tta_20"), false, noone, 0.5, 5);
	}
	break;
	
	case PS_WAVELAND:
	if (state_timer == 1 && !hitpause)
	{
		summon_afterimage(0, 0);
		sound_play(sound_get("cut_2"), false, noone, 0.4);
		sound_play(sound_get("tta_5"), false, noone, 0.55, 1.5);
	}
	break;
}

// Slender sickness handling.
var sick_sound = sound_get("ETCSE_00000");
var pianon = sound_get("piano");
with (oPlayer)
{
	if (id != other.id)
	{
		// Slender Sickness application.
		if (slender_haunt == noone)
		{
			//if (slender_buildup > 0 && !hitpause) slender_buildup -= 0.025;
			if (slender_buildup > slender_buildup_max)
			{
				slender_buildup = 0;
				sound_play(sick_sound);
				sound_play(sick_sound, false, noone, 0.5);
				slender_haunt = other.id;
				slender_haunt_timer = 400;
			}
		}
		if (state == PS_RESPAWN || state == PS_DEAD) slender_buildup = 0;
		
		if (slender_haunt == other.id)
		{
			if (slender_haunt_timer > 0)
			{
				//slendersickness active
				if ((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause && hitstop == hitstop_full)
				{
					//halve the taken hitpause
					hitstop = round(hitstop / 2);
					hitstop_full = round(hitstop_full / 2);
					hit_player_obj.hitstop = round(hit_player_obj.hitstop / 2);
					hit_player_obj.hitstop_full = round(hit_player_obj.hitstop_full / 2);
				}
				
				// Percent shifting.
				if (!hitpause)
				{
					if (get_gameplay_time() % 4 == 0) set_player_damage(player, get_player_damage(player) + 11);
					if ((get_gameplay_time() + 2) % 4 == 0) set_player_damage(player, clamp(get_player_damage(player) - 11, 0, 99999999));
				}
				
				if (temp_level == 0)
				{
					// ONLY IF not a CPU...
					if (state == PS_IDLE || state == PS_WALK || state == PS_CROUCH)
					{
						slender_haunt_standstill++;
						if (slender_haunt_standstill > slender_haunt_standstill_max)
						{
							slender_haunt_standstill = 0;
							sound_play(pianon, false, noone, 0.75);
							was_parried = true;
							state = PS_PRATLAND;
							state_timer = 0;
							hsp = 0;
							vsp = 0;
							old_hsp = 0;
							old_vsp = 0;
							hitpause = true;
							hitstop = 60;
							hitstop_full = 60;
							slender_haunt = noone;
							slender_haunt_timer = 0;
						}
					}
					else slender_haunt_standstill = 0;
				}
				
				if (state == PS_RESPAWN || state == PS_DEAD)
				{
					slender_haunt = noone;
					slender_haunt_timer = 0;
				}
			}
			else slender_haunt = noone;
		}
	}
}
if (static_hitpause != noone && !hitpause) static_hitpause = noone;

// Reset values.
sl_prev_vsp = vsp
sl_prev_vsp_old = old_vsp
sl_prev_hsp = hsp
sl_prev_hsp_old = old_hsp
sl_prev_state = state
sl_prev_prev_state = prev_state
sl_prev_prev_prev_state = prev_prev_state
sl_prev_state_cat = state_cat
sl_prev_state_timer = state_timer
sl_prev_attack = attack
sl_prev_window = window
sl_prev_window_timer = window_timer
sl_prev_spr_dir = spr_dir
sl_prev_strong_charge = strong_charge

#define teleports_behind

var teleportthing = noone;
with(pHitBox)
{
	if (player_id != other.id && type == 2)
	{
		if (!variable_instance_exists(id, "slender_sickness_check"))
		{
			if (player_id.slender_haunt == other.id &&
				player_id.slender_haunt_timer > 0)
			{
				slendersick_proj = true;
			}
			slender_sickness_check = true;
		}
		if (variable_instance_exists(id, "slendersick_proj") &&
			place_meeting(x, y, other.hurtboxID))
		{
			teleportthing = player_id;
		}
	}
}

if (teleportthing == noone) return;
static_hitpause = teleportthing;
sound_play(sound_get("antici_1"));
sound_play(sound_get("distort_4"), false, noone, 0.5);
sound_play(sound_get("distort_6"));
sound_play(sound_get("ETCSE_00000"));
sound_play(sound_get("distort_ex_2"));
teleportthing.hitstop = 40;
teleportthing.hitstop_full = 40;
hitstop = 40;
hitstop_full = 40;

summon_afterimage(0, 0);

var _ground_y = noone;
for (var _y = teleportthing.y; _y < stage_top_position + 4; ++_y)
{
	if (position_meeting(
			teleportthing.x, 
			_y, asset_get("par_block")) &&
		position_meeting(
			teleportthing.x, 
			_y, asset_get("par_jumpthrough")))
	{
		_ground_y = _y;
		break;
	}
}
if (_ground_y == noone)
{
	teleportthing.y = y;
	teleportthing.x = x + (30 * spr_dir);
}
else
{
	y = _ground_y;
	teleportthing.y = _ground_y;
	if (position_meeting(teleportthing.x - (30 * teleportthing.spr_dir), y + 1, asset_get("par_block")) || 
		position_meeting(teleportthing.x - (30 * teleportthing.spr_dir), y + 1, asset_get("par_jumpthrough")))
	{
		x = teleportthing.x - (30 * teleportthing.spr_dir);
	}
	else x = teleportthing.x;
	spr_dir = teleportthing.spr_dir;
}
invincible = true;
invincible_time = 1;

if (get_player_color(player) == 21)
{ 
	// ender
	sound_play(sound_get("z_tele_ender"), false, noone, 0.8);
	sound_play(sound_get("z_tele_ender"), false, noone, 0.8);
	sound_play(sound_get("piano"), false, noone, 0.75);
}
else
{
	sound_play(sound_get("piano"));
	sound_play(sound_get("cut_5"));
}

if (teleportthing.slender_haunt == noone) teleportthing.slender_buildup += 20;
teleportthing.was_parried = true;
teleportthing.free = false;
teleportthing.state = (free) ? PS_PRATFALL : PS_PRATLAND;
teleportthing.state_timer = 0;
teleportthing.hsp = 0;
teleportthing.vsp = 0;

with (teleportthing)
{
	attack_end();
	destroy_hitboxes();
}

dsp_real_cd = 120;
state = PS_SPAWN;
state_timer = 100;
attack_end();

#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create( x, y, "obj_article1" );
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
aft_.spr_dir = spr_dir;
aft_.hsp = hsp/3*argument[0];
aft_.vsp = vsp/3*argument[1];
return aft_;