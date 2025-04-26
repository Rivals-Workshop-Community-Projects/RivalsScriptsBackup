//post-draw

/*
draw_debug_text( x, y + 40, string(shelltimer));
draw_debug_text( x+30, y - 20, string(nspecialcharge));

draw_debug_text( x, y + 10, string("victim"));
	draw_debug_text( x+80, y + 10, string(victim));

draw_debug_text( x, y + 26, string("victim_x"));
	draw_debug_text( x+80, y + 26, string(victim_x));

draw_debug_text( x, y + 42, string("victim_y"));
	draw_debug_text( x+80, y + 42, string(victim_y));

draw_debug_text( x-50, y - 78, string("hammerOut"));
	draw_debug_text( x+80, y - 78, string(hammerOut));

draw_debug_text( x-50, y - 94, string("targetfound"));
	draw_debug_text( x+80, y - 94, string(targetfound));

draw_debug_text( x-50, y - 110, string("targetfoundTimer"));
	draw_debug_text( x+80, y - 110, string(targetfoundTimer));
*/


shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL {
	if (window == 3 || window == 4) {
		draw_sprite_ext(sprite_get("nspecial_dashoverlay"), -1, x, y-28, spr_dir, 1, spr_angle, c_white, 1);	
	}
	if targetfound && (window == 2 || window == 3) {
		draw_sprite_ext(sprite_get("nspecial_reticle"), get_gameplay_time() / 5, victim_x, victim_y-24, targetfoundTimer, targetfoundTimer, get_gameplay_time() % 1, c_white, targetfoundTimer);	
}
}
shader_end();

/*
with (asset_get("pHitBox")) {
	if player_id == other {
		if attack == AT_NSPECIAL && hbox_num == 2 {
			draw_debug_text( x-50, y + 10, string(victim_x));
			draw_debug_text( x-50, y + 30, string(victim_y));
			draw_debug_text( x-50, y + 50, string(targetfound));
		}
		if attack == AT_USPECIAL {
			draw_debug_text( x-50, y + 10, string(bounce));
		}
	}
}
*/