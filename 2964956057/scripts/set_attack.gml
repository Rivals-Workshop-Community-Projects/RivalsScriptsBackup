if move_cooldown[attack] exit;

switch attack{
	case AT_DTILT:
		hsp = 0;
		vsp = 0;
		dtilt_pos = dtilt_dist;
		while (dtilt_pos + dtilt_offset) > 0 && (!(place_meeting(x + ((dtilt_pos + dtilt_offset) * spr_dir), y + 2, asset_get("par_block")) || place_meeting(x + ((dtilt_pos + dtilt_offset) * spr_dir), y + 2, asset_get("par_jumpthrough"))) || place_meeting(x + ((dtilt_pos + dtilt_offset) * spr_dir), y, asset_get("par_block"))) dtilt_pos--;
		if dtilt_pos == -dtilt_offset dtilt_pos = dtilt_offset;
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, dtilt_pos);
		
		sound_play(asset_get("sfx_syl_ustrong"), false, noone, 0.7, 1.35);
	break;
	case AT_DATTACK:
		sound_play(asset_get("sfx_syl_ustrong_part1"), false, noone, 1, 1.5);
		sound_play(asset_get("sfx_may_root"), false, noone, 1, 1.4);
	break;
	case AT_FSTRONG:
		sound_play(asset_get("sfx_ori_dtilt_perform"), false, noone, 0.9, 1.1);
		sound_play(sound_get("unt_summon"), false, noone, 1, 0.9);
	break;
	case AT_BAIR:
		sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.9, 1.1);
		flowey_bairloop = 1;
		set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
	break;
	case AT_DAIR:
		sound_play(asset_get("sfx_ori_glide_featherout"), false, noone, 0.9, 0.9);
		sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.2, 1.15);
	break;
	case AT_UAIR:
		sound_play(asset_get("sfx_ori_grenade_hit_ground"), false, noone, 1.1, 1.2);
		sound_play(asset_get("sfx_ori_taunt2"), false, noone, 1.2, 0.9);
	break;
	case AT_NSPECIAL:
		sound_play(asset_get("mfx_xp"), false, noone, 0.5, 0.7);
		sound_play(asset_get("sfx_ori_grenade_aim"), false, noone, 0.7, 1.9);
	break;
	case AT_FSPECIAL:
		has_grab = 0;
		grabp = noone;
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
	break;
	case AT_DSPECIAL:
		if free attack = AT_DSPECIAL_AIR;
		else set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 16);
	break;
	case AT_TAUNT:
		if down_down attack = AT_TAUNT_2;
		else{
			sound_stop(sound_get("floweylaugh"));
			sound_play(sound_get("floweylaugh"), false, noone, 1.2, 1);
		}
	break;
}