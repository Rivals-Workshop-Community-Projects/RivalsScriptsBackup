with player_id{

	//for uspecial flash. doesn't work in ws_prev so must go in quarantine in this script
	
	if !("blue_inited" in self){
		blue_red[0] = get_color_profile_slot_r(alt_cur, 3);
		blue_red[1] = round(clamp(blue_red[0] * 0.5, 0, 1000));
		blue_gre[0] = get_color_profile_slot_g(alt_cur, 3);
		blue_gre[1] = round(clamp(blue_gre[0] * 0.5, 0, 1000));
		blue_blu[0] = get_color_profile_slot_b(alt_cur, 3);
		blue_blu[1] = round(clamp(blue_blu[0] * 0.5, 0, 1000));
		blue_inited = true;
	}
	


	if ("blue_inited") in self{
	    var col = (uspecials_used == max_uspecials && !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL) && !bike && uspecial_timer mod 12 > 5);
	
	    set_character_color_slot(3, blue_red[col], blue_gre[col], blue_blu[col], 1);
	}
}