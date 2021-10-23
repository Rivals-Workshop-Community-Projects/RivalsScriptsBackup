//hit_player - called when one of your hitboxes hits a player


if (my_hitboxID.attack == AT_USPECIAL) {
		if my_hitboxID.hbox_num == 1 {
		my_hitboxID.destroyed = true;
		create_hitbox(AT_USPECIAL, 1, -76, -28);
		}
		if my_hitboxID.hbox_num == 2 {
		my_hitboxID.destroyed = true;
		create_hitbox(AT_USPECIAL, 2, -76, 28);
		}
}

//FSpecial bounce
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	my_hitboxID.hitbox_timer = 80;
	if (my_hitboxID.grounds == 2) {
			my_hitboxID.vsp = -9;
			my_hitboxID.hsp = -2*(spr_dir);	
	}
	else {
			my_hitboxID.vsp = -5;
		}
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1) {
	my_hitboxID.hitbox_timer = 128;
}

//DSpecial double jump restore
if (my_hitboxID.attack == AT_DSPECIAL_AIR || my_hitboxID.attack == AT_DTHROW) {
	djumps = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_2) {
	move_cooldown[AT_FSPECIAL] = 8;
	}

if (( my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_USTRONG_2) && my_hitboxID.hbox_num =! 4) {
	hit_player_obj.should_make_shockwave = false;
	}
	