// pre_draw.gml
// Draws sprites behind the player

with (obj_article1){ // Draws the outline of the heart during the first state (When only Date Girl can collect it)
	if (player_id == other.id) {
		if (state == 1){
			draw_sprite_ext(sprite_get("heartoutline"), -1, x, y, 1, 1, 0, get_player_hud_color(player), 1);
		}
	}
}		

shader_start();
if (attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	draw_sprite_ext(sprite_get("magnetism"), state_timer / 5.5, x, y - 30, 1, 1, 0, c_white, 1);
}
	
if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	
	if (window == 2 || (window == 1 && window_timer != 1)){
		draw_sprite_ext(sprite_get("big_sparkle"), 0, fspec_x + (30 * spr_dir) - 8 - fspecial_circles, fspec_y - 80, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_get("small_sparkle"), 0, fspec_x - (30 * spr_dir) - 8 - fspecial_circles, fspec_y - 60, 1, 1, 0, c_white, 1);
	}
}
shader_end();