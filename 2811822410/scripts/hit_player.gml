/*
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.player_id == id) {

}
*/
if (my_hitboxID.orig_player == player) { 
	switch(attack) {
		//Strong
		case AT_FSTRONG:
		case AT_FTHROW:
		case AT_DSTRONG:
		case AT_DSTRONG_2:
		case AT_USTRONG:
			sound_play(sfx_veg_heavy2)
		break;
		//Other
		case AT_DAIR:
		case AT_DSPECIAL_AIR:
			if (my_hitboxID.hbox_num == 2) {
				sound_play(sfx_veg_heavy2)
			} else {
				sound_play(sfx_veg_light2)
			}
		break;
		case AT_USPECIAL:
			if (my_hitboxID.hbox_num == 1) {
				sound_play(sfx_veg_heavy2)
			} else {
				sound_play(sfx_veg_light2)
			}
		break;
		//Weak
		default:
			sound_play(sfx_veg_light2)
		break;
	}
	//Hit effect
	if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type ==2) {
		if (my_hitboxID.should_hfx) {
			spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - (hit_player_obj.char_height / 2) , my_hitboxID.hit_effect );
		} else {
			my_hitboxID.should_hfx = true;
		}
	}
}


