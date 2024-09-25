//set_attack

switch (attack)
{
	case AT_DATTACK:
		buffered_hitfall = false;
		
		if (!has_rune("F")) reset_attack_value(attack, AG_CATEGORY);

		//special dash attack
		if (has_rune("E"))
		{
			window = 2;
			window_timer = window_end;
		}
		break;
	case AT_NSPECIAL:
		if (burst_charge < 200 || burst_charge >= 200 && free)
		{
			//teleport check
			if (instance_exists(artc_marker) && artc_marker.state == 1)
			{
				attack = AT_NSPECIAL_2;
				if (stilleto_id == noone || !instance_exists(stilleto_id))
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
		break;
	case AT_USPECIAL:
		uspec_dist_mult = get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH) + 1;
		break;
	case AT_TAUNT:
		if (vhd_attack) //vision hunt decree rune
		{
			resolve_cur = 0;
			vhd_effect_time = 0;
		}
		break;
	//charge attack vs full strong differences
	case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG:
		switch (attack)
		{
			case AT_USTRONG:
				set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, charge_attack ? 7 : 7); //7.5 : 8
				set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, charge_attack ? 0.9 : 1.1);
				break;
			case AT_FSTRONG:
				set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, charge_attack ? 7 : 8);
				set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, charge_attack ? 0.9 : 1);
				break;
			case AT_DSTRONG:
				set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, charge_attack ? 6 : 7);
				set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, charge_attack ? 0.7 : 0.85); //0.8 : 1
				break;
		}
		break;	
}




if (has_rune("F") && free && (is_attack_pressed(DIR_LEFT) && spr_dir == -1 || is_attack_pressed(DIR_RIGHT) && spr_dir == 1) && coyote_time < coyote_time_max) attack = AT_DATTACK;

//final smash compatibility
if (burst_charge >= 200 && special_pressed && joy_pad_idle && !free)
{
	attack = AT_BURST;
    if ("fs_char_initialized" in self && fs_char_initialized) fs_force_fs = true;
}

//lyre taunt
if (taunt_pressed && down_down) attack = AT_TAUNT_2;