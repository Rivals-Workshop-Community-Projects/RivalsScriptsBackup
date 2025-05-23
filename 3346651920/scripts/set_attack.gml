// Slenderman set_attack.gml

// Reset relevant attack values.
reset_attack_value(AT_FSTRONG, AG_NUM_WINDOWS);
reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS);
fst_hit = false;
nsp_hit = false;
jab_timer = 0;
jab_end_timer = 0;
dsp_timer = 0;
dsp_end_timer = 0;
dsp_orig_dir = spr_dir;
dsp_distance = 0;

// Attack specific setup functionality.
switch (attack)
{
	case AT_JAB:
	// Sound effects when starting up jab's loop.
	sound_play(sound_get("cut_1"), false, noone, 0.3);
	sound_play(sound_get("staticmedium_short"), false, noone, 0.4, 1.6);
	break;
	
	case AT_FSTRONG:
	grabbed_player_obj = noone;
	break;
	
	case AT_NSPECIAL:
	grabbed_player_obj = noone;
	break;
	
	case AT_DSPECIAL:
	// Decide whether to do grounded or aerial version of DSpecial.
	if (free)
	{
		dsp_air_descend = nearest_ground();
		
		// Whether or not Aerial DSpecial is on cooldown.
		if (dsp_air_descend != noone &&
			dsp_air_descend - y > dsp_air_min_distance &&
			dsp_air_try_cd <= 0 && !hitpause)
		{
			// Can use Aerial DSpecial.
			dsp_air_try_cd = dsp_air_try_cd_max;
			attack = AT_DSPECIAL_AIR;
			vsp = 0;
			hsp = 0;
			old_vsp = 0;
			old_hsp = 0;
			dsp_air_try_cd_timer = 0;
			
			// VFX & SFX.
			summon_afterimage(0, 0.005);
			var rand_tmp = random_func_2( 4, 9, true );
			sound_play(sound_get("antici_1"), false, noone, 1, 1.1);
			switch (rand_tmp)
			{
				case 0: sound_play(sound_get("cut_1"),false,noone,0.7);
				break;
				case 1: sound_play(sound_get("cut_2"),false,noone,0.7);
				break;
				case 2: sound_play(sound_get("cut_3"),false,noone,0.7);
				break;
				case 3: sound_play(sound_get("cut_4"),false,noone,0.7);
				break;
				case 4: sound_play(sound_get("cut_5"),false,noone,0.7);
				break;
				case 5: sound_play(sound_get("cut_6"),false,noone,0.7);
				break;
				case 6: sound_play(sound_get("tta_15"),false,noone,0.6);
				break;
				case 7: sound_play(sound_get("tta_16"),false,noone,0.6);
				break;
				case 8: sound_play(sound_get("tta_17"),false,noone,0.6);
				break;
				default: break;
			}
		}
		else if (dsp_air_try_cd > 0 || dsp_air_descend == noone)
		{
			// Cannot use Aerial DSpecial due to proximity to ground.
			// Should still show visuals regardless.
			dsp_air_try_cd_timer = dsp_air_try_cd_timer_max;
			sound_play(sound_get("tta_13"), false, noone, 0.3, 0.5);
		}
	}
	else if (dsp_real_cd <= 0)
	{
		// Sound effects for Grounded DSpecial.
		sound_play(sound_get("cut_2"), false, noone, 0.3);
		sound_play(sound_get("cut_2"), false, noone, 0.5, 0.3);
	}
	shadow_dir = spr_dir;
	dsp_distance = shadow_width_min * shadow_dir;
	shadow_width_true = 0;
	shadow_growth_timer = 0;
	break;
}

//=======================================================================================================================//
#define nearest_ground()
for (var _y = y - 4; _y < stage_top_position + 4; ++_y)
{
	if (instance_place(x, _y, asset_get("par_block")) != noone ||
    	instance_place(x, _y, asset_get("par_jumpthrough")) != noone)
	{
		return _y;
	}
}
return noone;

#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create( x, y, "obj_article1" );
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
aft_.spr_dir = spr_dir;
aft_.hsp = hsp/3*argument[0];
aft_.vsp = vsp/3*argument[1];
return aft_;