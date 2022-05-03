//if attack == AT_NSPECIAL {
//	player_id.attack_cooldown[AT_NSPECIAL] = 90
//}

if (attack == AT_DSPECIAL && hbox_num == 1) {
	if (place_meeting(x, y + 4, asset_get("par_block"))){
		player_id.bounce_count += 1;
		if (player_id.bounce_count >= 2) {
			sound_play(player_id.sfx_pepsi_crash);
			spawn_hit_fx( x, y-20, 143 );
			instance_destroy();
		}
		else {
			sound_play(player_id.sfx_pepsi_bounce ,false,noone,abs(vsp/8))
		}
	}

	player_id.move_cooldown[AT_DSPECIAL] = 60;
}

if (attack == AT_DSPECIAL && (hbox_num == 2 || hbox_num == 3)) {
	if (!free) {
		print_debug("I am grounded. I must disappear now.");
		destroyed = true;
		//instance_destroy();
		return;
	}
}

if (attack == AT_USTRONG && hbox_num == 2) {
	if (place_meeting(x, y+10, asset_get("par_block"))){
		if (player_id.garb_bounce = 0) {
			player_id.garb_bounce += 1;
			sound_play(player_id.sfx_pepsi_crash);
			player_id.rand_garbage = noone;
			spawn_hit_fx( x, y-20, 140 );
			instance_destroy();
		}
	}
	if (player_id.rand_garbage != noone && instance_exists(player_id.rand_garbage)) {
		if (vsp < 0) {
			kb_angle = 75;
		}
		else {
			kb_angle = 255;
		}

		// Couldnt figure out spin. Spr_Angle doesn't work?
		// Proj_Angle makes the whole projectile spin
		//proj_angle += 45;
		//spr_angle += 5;
	}
	
}