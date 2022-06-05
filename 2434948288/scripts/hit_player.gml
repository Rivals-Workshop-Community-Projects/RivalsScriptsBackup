// unbury
if (hit_player_obj.burieddd > 1) hit_player_obj.burieddd = 1;
if (hit_player_obj.maybeBury > 0) hit_player_obj.maybeBury = 0;

switch (my_hitboxID.attack)
{
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num == 1 && !hit_player_obj.super_armor)
		{
			hit_player_obj.x = guitar.x;
			hit_player_obj.y = guitar.y+20;
		}
		break;

	case AT_DAIR:
		if (my_hitboxID.hbox_num <= 2)
		{
			old_hsp = hit_player_obj.hsp;
			old_vsp = -6;
			window = 5;
			window_timer = 0;
			move_cooldown[AT_DAIR] = 20;
		}
		break;

	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num == 1 && !hit_player_obj.super_armor)
		{
			hit_player_obj.maybeBury = maybeBuryFrames+hit_player_obj.hitpause;
		}
}