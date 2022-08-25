//set_attack

if (attack == AT_NSPECIAL && burst_charge < 200 || burst_charge >= 200 && free)
{
    //teleport check
	if (instance_exists(artc_marker) && artc_marker.state == 1)
	{
		attack = AT_NSPECIAL_2;
		if (stilleto_id == noone)
		{
			temp_marker_x = artc_marker.x;
			temp_marker_y = artc_marker.y+32;
		}
		else if (stilleto_id != noone)
		{
			temp_marker_x = stilleto_id.x;
			temp_marker_y = stilleto_id.y;
		}
		stilleto_id = noone;

		//var reset before warping
		marker_dist_x = 0;
		marker_dist_y = 0;

		//in here put another stilleto state before it dies through teleport
		spawn_hit_fx(temp_marker_x, temp_marker_y-32, fx_nspec_marker_despawn);
		instance_destroy(artc_marker);
	}
}

//final smash compatibility
if (burst_charge >= 200 && special_pressed && joy_pad_idle && !free)
{
	attack = AT_BURST;
    if ("fs_char_initialized" in self && fs_char_initialized) fs_force_fs = true;
}

//special dash attack
if (has_rune("F") && attack == AT_DATTACK)
{
	window = 2;
	window_timer = window_end;
}

if (attack == AT_TAUNT && vhd_attack)
{
	resolve_cur = 0;
	vhd_effect_time = 0;
}

//lyre taunt
if (taunt_pressed && down_down) attack = AT_TAUNT_2;