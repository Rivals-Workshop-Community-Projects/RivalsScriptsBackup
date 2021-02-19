with player_id{
	if (get_training_cpu_action() != CPU_FIGHT && !playtest) {
		practice = true;
	}
	
	if !("blue_inited" in self){
		var alt_cur = get_player_color(player);
		
		blue_red[0] = get_color_profile_slot_r(alt_cur, 1);
		blue_red[1] = round(clamp(blue_red[0] * 0.5, 0, 1000));
		blue_gre[0] = get_color_profile_slot_g(alt_cur, 1);
		blue_gre[1] = round(clamp(blue_gre[0] * 0.5, 0, 1000));
		blue_blu[0] = get_color_profile_slot_b(alt_cur, 1);
		blue_blu[1] = round(clamp(blue_blu[0] * 0.5, 0, 1000));
		blue_inited = true;
	}
}