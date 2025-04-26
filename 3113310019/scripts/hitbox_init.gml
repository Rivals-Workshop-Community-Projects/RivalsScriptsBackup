//hitbox_init
umbrellaleaf_bounces = 0;
melon_powerdecay = false;

if (attack == AT_EXTRA_2 && player_id.swing_throw_type == 2){
	if (hbox_num == 5){
		damage = 6;

		melon_powerdecay = true;
		image_xscale = 0.2;
		image_yscale = 0.2;
		kb_value = 6;
		kb_scale = 0.4;
		kb_angle = 55;
		hitpause = 8;
		hitpause_growth = 0.5;
		hitstun_factor = 0.5;
	}
	if (hbox_num == 6 || hbox_num == 7){
		damage = 3;
	}
}

if (attack == AT_USTRONG && hbox_num == 1){
	vsp = -18 + (player_id.strong_charge / -10);
}

if (attack == AT_NSPECIAL && hbox_num == 1){
	if (player_id.free){
		vsp = -7 + (4 * player_id.pult_di);
	} else {
		vsp = -8 + (4 * player_id.pult_di);
	}
	//hsp = (6+(player_id.pult_di*4)+(abs(player_id.pult_di)+player_id.pult_di))*spr_dir;
	hsp = (6 + (player_id.pult_di * 4)) * spr_dir;
}

/*
if (attack == 49 && hbox_num == 1){
	for (var i = 0; i < array_length(can_hit); i++) {
		can_hit[i] = false;
	}
}
*/