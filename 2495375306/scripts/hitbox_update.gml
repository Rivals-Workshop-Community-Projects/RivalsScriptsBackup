if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90;
}

if (attack == AT_DSPECIAL && type == 2){
	grounds = 1;
	walls = 1;
	/*if (has_hit && player_id.diamond.lockout < 1){
		player_id.diamond.times_hit += 1;
		player.diamond.lockout = 30;
	}*/
	if(player_id.diamond.state == 0){
		hit_flipper = 8;
	} else hit_flipper = 3;
	if(player_id.diamond.state == 1 && player_id.diamond.free == false){
		destroyed = true;
	}
	if (player_id.diamond.state == 0){
		
		y = player_id.diamond.y - 14;
		if (player_id.diamond.spr_dir == -1){
	x = player_id.diamond.x;
	} else x = player_id.diamond.x;
	} else{ if (player_id.diamond.spr_dir == -1){
	x = player_id.diamond.x + 24;
	} else x = player_id.diamond.x - 12;
	y = player_id.diamond.y - 50;
	}
	/*if (player_id.diamond.owner != player_id.player){
	can_hit_self = true;
	}*/
}

if (attack == AT_NSPECIAL && instance_exists(player_id.diamond) && hbox_num < 5){
	depth = player_id.depth + 5;
	if place_meeting(x, y, player_id.diamond){
		if (player_id.diamond.spr_dir == 1){
		x = player_id.diamond.x - 30;
		} else x = player_id.diamond.x + 30;
		y -= 40;
		hsp = 0;
		vsp = -24;
		proj_angle = 90*spr_dir;
	}
}

if (attack == AT_NSPECIAL && hbox_num == 5){
	proj_angle += 6*spr_dir;
	can_hit_self = true;
	if (instance_exists(player_id.diamond) && place_meeting(x, y, player_id.diamond)){
		destroyed = true;
	}
}