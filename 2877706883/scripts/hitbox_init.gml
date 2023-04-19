//
if (attack == AT_FSPECIAL && type == 2) {
	hold_time = 10;
	player_id.move_cooldown[AT_FSPECIAL] = length;
	boom_fric  = player_id.boom_fric;
	vertical = "neutral";
	boom_state = "launch";
	new_dir = 0;
	hsp = player_id.boom_hsp * spr_dir;
	if (player_id.down_down) {
		vsp = player_id.boom_vsp;
		vertical = "up";
		hsp /= 2;
	} else if (player_id.up_down) {
		vsp = -player_id.boom_vsp;;
		vertical = "down";
		hsp /= 2;
	} 
}

if (attack == AT_NSPECIAL && type == 2) {
	proj_angle = player_id.needle_angle;
	hsp = lengthdir_x(player_id.needle_speed, (-45 * spr_dir) + proj_angle) * spr_dir;
	vsp = lengthdir_y(player_id.needle_speed, (-45 * spr_dir) + proj_angle) * spr_dir;
}

if (attack == AT_DSPECIAL && type == 2) {
		if (hbox_num != 26) {
		if (player_id.attack == AT_NSPECIAL) { //NSPECIAL item
			hsp = lengthdir_x(player_id.needle_speed, (-45 * spr_dir) + player_id.needle_angle) * spr_dir;
			vsp = lengthdir_y(player_id.needle_speed, (-45 * spr_dir) + player_id.needle_angle) * spr_dir;
		}
		can_be_picked_up_by_vi = true;
		was_ranged = false;
		has_landed = false;
	} else {
		can_be_picked_up_by_vi = false;
		was_ranged = false;
		has_landed = true;
	}
	/*
	switch(hbox_num) {
		case 5: //Hard Seed
			hsp *= 3;
			vsp *= 2;
		break;
	}
	*/
}