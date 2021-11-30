// code for kamehameha

if (my_hitboxID.attack == AT_FSTRONG_2 && my_hitboxID.hbox_num == 2){
	attack_end();
	with hit_player_obj {
		x += 40 * other.spr_dir;
		y -= 3;
		set_state(PS_HITSTUN);
		hitstun = 9;
		can_tech = false;
	}
}