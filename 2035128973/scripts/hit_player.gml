if (get_synced_var(player))
{
	hit_player_obj.orig_knock *= 1 + (get_player_damage(player)/200);
	if (my_hitboxID.attack == AT_USPECIAL) set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
    if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2) my_hitboxID.can_hit[hit_player_obj.player] = true;
}
else
{
	if (has_rune("G")) hit_player_obj.orig_knock *= 1 + (get_player_damage(player)/150);
	
	if (has_rune("C") && my_hitboxID.player == player) switch (my_hitboxID.attack)
	{
		case AT_FTILT:
		case AT_DTILT:
		case AT_FAIR:
		case AT_DAIR:
		case AT_NAIR:
			var markArticle = instance_create(x+spr_dir*24, y-2, "obj_article3");
			markArticle.newState = 1;
			markArticle.sprite_index = asset_get("empty_sprite");
			boneMark = hit_player_obj;
			markArticle.image_angle = spr_dir*45;
	}
	
	if (my_hitboxID.player == player) switch (my_hitboxID.attack)
	{
		case AT_NSPECIAL_AIR:
			if (my_hitboxID.hbox_num == 1)
				sound_play(asset_get("sfx_blow_weak1"));
			else
				sound_play(asset_get("sfx_blow_medium1"));
			break;
		case AT_DSPECIAL_AIR:
			if (my_hitboxID.hbox_num == 1)
				old_vsp = min(old_vsp,-1);
			else if (my_hitboxID.hbox_num == 2)
				sound_play(asset_get("sfx_blow_heavy1"));
			break;
		case AT_FTHROW:
			if (my_hitboxID.hbox_num == 1)
				sound_play(asset_get("sfx_blow_heavy1"));
			break;
		case AT_BAIR:
			if (my_hitboxID.hbox_num == 1)
				sound_play(asset_get("sfx_blow_heavy1"));
			break;
		case AT_USTRONG:
			if (my_hitboxID.hbox_num <= 2)
			{
				sound_play(asset_get("sfx_blow_medium1"));
				break;
			}
		case AT_FSTRONG:
		case AT_DSTRONG:
			sound_play(asset_get("sfx_blow_heavy2"));
			break;
		case AT_FSPECIAL_2:
			if (my_hitboxID.hbox_num != 1)
			{
				old_vsp /= 2;
				break;
			}
			else tutDone[2] = 1;
		case AT_USPECIAL:
			var markArticle = instance_create(x+spr_dir*24, y-2, "obj_article3");
			markArticle.newState = 1;
			markArticle.sprite_index = asset_get("empty_sprite");
			boneMark = hit_player_obj;
			sound_play(asset_get("sfx_syl_dstrong"));
			if (attack == AT_USPECIAL) 
			{
				tutDone[4] = 1;
				markArticle.image_angle = my_hitboxID.proj_angle;
				if (hit_player_obj.spr_dir!=my_hitboxID.spr_dir) markArticle.image_angle+=90;
			}
			else markArticle.image_angle = spr_dir*45;
			break;
		case AT_USPECIAL_2:
			set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
			var pauseFrames = get_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE)+get_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING)*get_player_damage(hit_player_obj.player)/100;
			hitstop = pauseFrames;
			hitstop_full = pauseFrames;
			hitpause = true;
			old_vsp = vsp;
			old_hsp = hsp;
			vsp = 0;
			hsp = 0;
			hit_player_obj.hitstop = pauseFrames;
			hit_player_obj.hitstop_full = pauseFrames;
			hit_player_obj.hitpause = true;
			hit_player_obj.old_vsp = hit_player_obj.vsp;
			hit_player_obj.old_hsp = hit_player_obj.hsp;
			hit_player_obj.vsp = 0;
			hit_player_obj.hsp = 0;
			tutDone[5] = 1;
			break;
		case AT_FSPECIAL:
			switch (my_hitboxID.hbox_num)
			{
				case 1:
					if (instance_exists(boneObj) && hit_player_obj == boneMark && boneObj.state == 1)
					{
						instance_destroy(boneObj);
						boneObj = noone;
						tutDone[3] = 1;
						CritForcePalm();
					}
					else if (has_rune("A")) CritForcePalm();
					else ForcePalmGrab();
					break;
				case 2:
					sound_play(asset_get("sfx_blow_heavy2"));
					break;
				case 3:
					sound_play(asset_get("sfx_blow_medium3"));
					break;
			}
			break;
		case AT_FSPECIAL_AIR:
		case AT_FAIR:
			old_vsp -= 2;
			break;
		case 49:
			if (my_hitboxID.hbox_num != 1)
			{
				hit_player_obj.should_make_shockwave = false;
				hit_player_obj.x += spr_dir*5;
			}
	}
}

#define CritForcePalm()
{
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.05);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("criticalhit"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 30);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 16);
}

#define ForcePalmGrab()
{
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 10);
}