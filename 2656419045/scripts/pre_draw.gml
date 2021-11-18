// print(`pre_draw.gml from player ${player}`);

//Attempt to run animation.gml again if we didn't run it in animation.gml
if(run_animation_in_pre_draw) user_event(2);

// if(player == 2) print(`Toad's spr_dir right now is ${spr_dir}`);

//Draw the respawn plat indicator thing... the big one...
//'cause the one inside the actual respawn platform is too small to see it very well :(
if(neo_state == "Respawn Plat") {
	draw_sprite_ext(ROULETTE_ENTRIES[roulette_slot].sprite, 0, x, y - 48, 2.5 * ROULETTE_ENTRIES[roulette_slot].sprite_scale, 2.5 * ROULETTE_ENTRIES[roulette_slot].sprite_scale, 0, c_ltgray, 0.7);
}

//Draw twirl/spin decals
switch(neo_animstate_checked) {
	case "twirl":
		if(vsp < 0) draw_sprite_ext(sprite_get("decal_twirl_blur"), 1, x, y + neo_power_checked.size_profile.decal_blur_offset, 2, 2, spr_angle, c_white, decal_blur_alpha);
		draw_sprite_ext(sprite_get("decal_twirl_lines"), 1, x, y + neo_power_checked.size_profile.decal_lines_offset, 2, 2, spr_angle, c_white, decal_lines_alpha);
	break;
	case "twirl2":
		draw_sprite_ext(sprite_get("decal_" + neo_power_checked.size_profile.twirl_lines_type + "_lines"), 1, x, y + neo_power_checked.size_profile.decal_lines_offset, 2, 2, spr_angle, c_white, decal_lines_alpha);
	break;
	case "spin":
		draw_sprite_ext(sprite_get("decal_spin_lines"), 1, x, y + neo_power_checked.size_profile.decal_lines_offset, 2, 2, spr_angle, c_white, decal_lines_alpha);
	break;
	
	// case "sflip_twirl": case "tjump_twirl":
	// 	draw_sprite_ext(sprite_get("decal_spin_lines"), 1, x + lengthdir_x(neo_power_checked.size_profile.decal_lines_offset, spr_angle - 90), y + lengthdir_y(neo_power_checked.size_profile.decal_lines_offset, spr_angle - 90), 2, 2, spr_angle, c_red, 1.0);
	// break;
}

