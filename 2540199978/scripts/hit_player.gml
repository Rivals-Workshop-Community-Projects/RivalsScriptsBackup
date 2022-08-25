if (has_rune("H")) IciclesHomeIn();

switch (my_hitboxID.attack)
{
	case AT_NSPECIAL_2:
		if (my_hitboxID.hbox_num == 2)
			sound_play(sound_get("flakeIce"));
		break;

	case AT_FSPECIAL:
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
		if (my_hitboxID.hbox_num == 1)
		{
			old_hsp = 0;
			fspecGrabbedObj = hit_player_obj;
			sound_play(sound_get("flakeIce"));
			if (grabDjump && djumps >= 1)
			{
				--djumps;
				grabDjump = false;
			}
		}
		else if (my_hitboxID.hbox_num == 2) IciclesHomeIn();
		break;

	case AT_USPECIAL:
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
		if (!hit_player_obj.super_armor)
		{
			hit_player_obj.x += hsp;
			hit_player_obj.y += vsp;
		}
		break;

	case AT_FSTRONG:
		sound_play(asset_get("sfx_blow_heavy2"), 0, -4, 2, 1);
		break;

	case AT_USTRONG:
	    hit_player_obj.x += ((x + spr_dir * 0) - hit_player_obj.x)/5;
	    hit_player_obj.y += ((y - 80) - hit_player_obj.y)/5;
		if (ustrongLoop < 3) hit_player_obj.should_make_shockwave = false;
		else sound_play(asset_get("sfx_icehit_heavy2"));
		break;

	case AT_DAIR:
		old_vsp = -7;
		can_fast_fall = true;
		break;

	case AT_FAIR:
		old_vsp -= 1;
		break;

	case AT_DSPECIAL:
		sound_play(sound_get("flakeIce"),0,-4,2);
		break;
}

#define IciclesHomeIn()
{
	with (obj_article1) if (player_id == other.id && state == 1 && returning)
	{
	    fspecReturn = true;
	    newState = 2;
		other.tutDoneAdv[2] = true;
	}
}