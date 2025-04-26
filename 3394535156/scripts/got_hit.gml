// got_hit.gml

// resetting stuff if hit in hitstun
if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	/*
	if (sprite_index == sprite_get("nspecial") || sprite_index == sprite_get("nspecial_air")){
		//print("true...");
	}
	*/
}
move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
display_timer = -1;
display_intro = false;
has_performed_hop = false;


charged_nspecial_timer = 0;
charging_nspecial_buffer = false