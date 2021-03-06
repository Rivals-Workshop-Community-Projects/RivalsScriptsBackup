switch (my_hitboxID.attack)
{
	case AT_USPECIAL:
		if (my_hitboxID.hbox_num != 1)
		{
			has_walljump = true;
			sound_play(sound_get("hitsfx1"));
			sound_play(asset_get("sfx_blow_heavy2"));
			var a = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height, get_player_color(player)==6?saw_effect:dragon_effect); a.depth = -10; a.spr_dir = 1;
		}
		else sound_play(asset_get("sfx_blow_weak1"));
		if (has_rune("F")) set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
		break;
	case AT_NSPECIAL:
		sound_play(sound_get("hitsfx2"));
		sound_play(asset_get("sfx_blow_heavy2"));
		if (nspecCharge>=nspecMax/2) hit_player_obj.shakeObj = {timer: hit_player_obj.hitstop, lonin: player};
		break;
	case AT_NTHROW:
		old_hsp = -floor(lengthdir_x(7, strongAng));
		old_vsp = -floor(lengthdir_y(10, strongAng));
		if (fspecHooked && strongAng == 270) tutDoneAdv[6] = true;
		with(asset_get("obj_article1")) if (player_id == other.id && replacedCount == 2)
		{
            with (other.hit_player_obj) afterImageLonin = {sprite:sprite_index,image:image_index,xPos:x,yPos:y,dir:spr_dir,small:small_sprites,alpha:30,lonin:other.player_id.player};
			other.hit_player_obj.x = x;
			other.hit_player_obj.y = y;
			sound_play(sound_get("shing"));
		}
		sound_play(sound_get("hitsfx1"));
		break;
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num == 1 && fspecHooked && !was_parried)
		{
			hit_player_obj.x = x + get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X)*spr_dir;
			hit_player_obj.y = y + get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y) + floor(hit_player_obj.char_height/2);
		}
		sound_play(sound_get("hitsfx2"));
		break;
	case AT_DAIR:
	case AT_NAIR:
		if (my_hitboxID.hbox_num == 4) sound_play(asset_get("sfx_blow_heavy1"));
		else
		{
			hit_player_obj.should_make_shockwave = false;
			sound_play(asset_get("sfx_blow_weak1"));
		}
		break;
	case AT_UAIR:
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(asset_get("sfx_blow_heavy1"));
			if (free) old_vsp = -6;
		}
		else sound_play(asset_get("sfx_blow_weak1"));
		break;
	case AT_FAIR:
	case AT_DATTACK:
		if (my_hitboxID.hbox_num == 2)
			sound_play(asset_get("sfx_blow_heavy1"));
		else
			sound_play(asset_get("sfx_blow_weak1"));
		break;
	case AT_FTILT:
	case AT_BAIR:
		sound_play(asset_get("sfx_blow_heavy1"));
		break;
	case AT_DTILT:
	case AT_JAB:
		sound_play(asset_get("sfx_blow_weak1"));
		break;
}

if (hit_player_obj.hitpause && hit_player_obj.hitstop > 3)
{
	vfxSlice.sliceX = hit_player_obj.x;
	vfxSlice.sliceY = floor(hit_player_obj.y-hit_player_obj.char_height/2);
	vfxSlice.sliceAng = point_direction(0,0,hit_player_obj.old_hsp,hit_player_obj.old_vsp);
	vfxSlice.sliceTimer = 20;
}