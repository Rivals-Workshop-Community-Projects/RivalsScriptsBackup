switch (my_hitboxID.attack)
{
	case AT_USPECIAL:
		if (my_hitboxID.hbox_num != 1)
		{
			if (uspecWalljump) has_walljump = true;
			uspecWalljump = false;
			sound_play(sound_get("hitsfx1"));
			sound_play(asset_get("sfx_blow_heavy2"));
			USpecFX();
			ApplyFlag();
		}
		else sound_play(asset_get("sfx_blow_weak1"));
		if (has_rune("F")) set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
		break;
	case AT_NSPECIAL:
		sound_play(sound_get("hitsfx2"));
		sound_play(asset_get("sfx_blow_heavy2"));
		if (aura && get_player_damage(hit_player_obj.player) >= 150)
		{
			hit_player_obj.hitstop = 60;
			set_attack(49);
		}
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
			player_id.canTele = false;
		}
		sound_play(sound_get("hitsfx1"));
		break;
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num == 1 && fspecHooked && !was_parried)
		{
			hit_player_obj.x = x + get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X)*spr_dir;
			hit_player_obj.y = y + get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y) + floor(hit_player_obj.char_height/2);
			djumps = 0;
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
		else
		{
			sound_play(asset_get("sfx_blow_weak1"));
			hit_player_obj.free = true;
		}
		break;
	case AT_FAIR:
		if (my_hitboxID.hbox_num == 2)
			sound_play(asset_get("sfx_blow_heavy2"));
		else if (my_hitboxID.hbox_num == 1)
			sound_play(asset_get("sfx_blow_heavy1"));
		else
			sound_play(asset_get("sfx_blow_weak2"));
		break;
	case AT_DATTACK:
		if (my_hitboxID.hbox_num == 2)
			sound_play(asset_get("sfx_blow_heavy1"));
		else
			sound_play(asset_get("sfx_blow_weak1"));
		break;
	case AT_FTILT:
		sound_play(asset_get("sfx_blow_heavy1"));
		break;
	case AT_BAIR:
		sound_play(asset_get("sfx_blow_heavy2"));
		break;
	case AT_JAB:
		if (!aura) move_cooldown[AT_JAB] = 30;
	case AT_DTILT:
		sound_play(asset_get("sfx_blow_weak1"));
		break;
	case AT_UTHROW:
		if (my_hitboxID.hbox_num == 2) sound_play(asset_get("sfx_blow_heavy1"));
		break;
	case 49:
		hit_player_obj.should_make_shockwave = false;
		if (my_hitboxID.hbox_num == 1)
		{
			x = clamp(hit_player_obj.x + 200*spr_dir, 0, room_width);
			y = hit_player_obj.y;
			hit_player_obj.can_wall_tech = false;
		}
		break;
}

if (hit_player_obj.hitpause && hit_player_obj.hitstop > 3 && !(my_hitboxID.attack == 49 && my_hitboxID.hbox_num == 2) && !(my_hitboxID.attack == AT_UTHROW && my_hitboxID.hbox_num == 1))
{
	vfxSlice.sliceX = hit_player_obj.x;
	vfxSlice.sliceY = floor(hit_player_obj.y-hit_player_obj.char_height/2);
	vfxSlice.sliceAng = point_direction(0,0,hit_player_obj.old_hsp,hit_player_obj.old_vsp);
	vfxSlice.sliceTimer = 20;
}

if (aura)
{
	hitstop = floor(hitstop/2);
	hitstop_full = hitstop;
}

// Duane
if (hit_player_obj.url == "1867634411")
{
	hit_player_obj.y = room_height*69;
}

#define ApplyFlag()
{
	switch (get_player_color(player))
	{
		case 1:
			hit_player_obj.outlineState = 1;
			break;
		case 17:
			hit_player_obj.outlineState = 2;
			break;
		case 29:
			hit_player_obj.outlineState = 3;
			break;
		case 30:
			hit_player_obj.outlineState = 4;
			break;
	}
}

#define USpecFX()
{
	var effect = dragon_effect;
	switch (get_player_color(player))
	{
		case 6:
			effect = saw_effect;
			break;
		case 16:
			effect = chun_effect;
			break;
		case 18:
			effect = kizuna_effect;
			break;
		case 19:
			effect = genesis_effect;
			break;
		case 20:
			effect = bunny_effect;
			break;
	}
	var a = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height, get_player_color(player)==6?saw_effect:get_player_color(player)==16?chun_effect:effect);
	if (get_player_color(player) != 18) a.depth = -10;
	a.spr_dir = 1;
}