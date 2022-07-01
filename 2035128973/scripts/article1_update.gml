//article1_update
if (replacedcount > maxarticles) shoulddie = true;

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2))
{
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}

if (player_id.killarticles && state != 2)
{
    state = 2;
    state_timer = 0;
}

switch (state)
{
	case 0:
		spr_dir = player_id.spr_dir;
		x = player_id.x - player_id.spr_dir * 30;
		y = player_id.y - 36;
		if (size < sizelimit)
		{
			++size;
		}
		with (player_id)
		{
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, other.size);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, other.size);
			chargeSave = 100 - other.sizelimit + other.size;
		}
		if (player_id.window > 2 || shoulddie || (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR))
		{
		    state = 2;
		    state_timer = 0;
		}
		break;
	case 2:
		player_id.killarticles = false;
		instance_destroy();
		exit;
		break;
	case 9:
		hsp = spr_dir * 4;
		if (shoulddie)
		{
		    state = 2;
		    state_timer = 0;
		}
		break;
}