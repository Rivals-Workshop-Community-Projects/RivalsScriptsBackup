//hitbox_init
umbrellaleaf_bounces = 0;
melon_powerdecay = false;

if (attack == AT_EXTRA_2 && player_id.swing_throw_type == 2){
	if (hbox_num == 5){
		damage = 6;
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