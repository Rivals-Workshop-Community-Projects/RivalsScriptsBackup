//
rise_proj = true;
//
if (attack == AT_NSPECIAL && type ==2) {
	should_hfx = false;
	rune_follow = -4;
}
if (attack == AT_FTILT && type == 2) {
	for (var i = 0; i < array_length(player_id.ftilt_hit); i++) {
		if player_id.ftilt_hit[i] {
			can_hit[i] = false;
		}
	}
	proj_hitpause = 0;
	old_hsp = 0;
	old_vsp = 0;
	//proj_hitpause = 0;
}

if (attack == AT_FSPECIAL && hbox_num == 1) {
	disc_hit_player = -4;
}

if (attack == AT_USPECIAL && hbox_num == 1) {
	proj_angle = -45 * spr_dir;
	depth = -45;
}



//if (attack == AT_DSPECIAL && hbox_num == 1) {
//	//disc_hit_player = -4;
//	proj_angle = 90;
//}

