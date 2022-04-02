//set_attack

if (attack == AT_NSPECIAL && burst_charge < 200)
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
if ("fs_char_initialized" in self && fs_char_initialized)
{
    if (fs_charge >= 200 && special_pressed && joy_pad_idle && !free) fs_force_fs = true;
}

//lyre taunt
//if (taunt_pressed && down_down) attack = AT_TAUNT_2;

//if (taunt_pressed && down_down) attack = AT_BURST;