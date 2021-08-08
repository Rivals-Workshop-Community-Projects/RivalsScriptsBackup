// pre_draw.gml
// Draws sprites behind the player

with (obj_article1){ // Draws the outline of the heart during the first state (When only Date Girl can collect it)
	if (player_id == other.id) {
		if (state == 1){
			draw_sprite_ext(sprite_get("heartoutline"), -1, x, y, 1, 1, 0, get_player_hud_color(player), 1);
		}
	}
}		
/*
if (should_crumple && crumple_timer < 7){
	draw_sprite_ext(sprite_get("crumple"), crumple_timer, crumple_x, crumple_y, 1 * crumple_dir, 1, 0, c_white, crumple_alpha);	
}
*/
shader_start();
if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	draw_sprite_ext(sprite_get("magnetism"), state_timer / 5.5, x, y - 30, 1, 1, 0, c_white, 1);
}
	
if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	
	if (window == 2 || (window == 1 && window_timer != 1)){
		draw_sprite_ext(sprite_get("big_sparkle"), 0, fspec_x + (30 * spr_dir) - 8 - fspecial_circles, fspec_y - 80, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_get("small_sparkle"), 0, fspec_x - (30 * spr_dir) - 8 - fspecial_circles, fspec_y - 60, 1, 1, 0, c_white, 1);
	}
}
shader_end();

if (attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){ 
	var armorcolor = make_colour_rgb(63, 240, 240);

	// Nspecial Charge effect
	if (window == 1 && state_timer > 13){
		shader_start();
		draw_sprite_ext(sprite_get("focuseffectsback"), get_gameplay_time()/4, x, y, 1 * spr_dir, 1, 0, c_white, 1);
		shader_end();
		if (!focus_armorbreak){
			gpu_set_fog(1, armorcolor, 0, 1);
			draw_sprite_ext(sprite_get("focuseffectsback"), get_gameplay_time()/4, x, y, 1 * spr_dir, 1, 0, armorcolor, .5);
			gpu_set_fog(0, c_white, 0, 0);
		}
	}
}


shader_start();
// Calle Nthrow visual
if (attack == AT_NTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	
	if (window > 2 && window < 7){
		if (tsj_timer < 56){
			draw_sprite_ext(sprite_index, image_index, tsj_x1, tsj_y1, spr_dir, 1, 0, c_white, 0.75); 
		}
		if (tsj_timer < 58){
			draw_sprite_ext(sprite_index, image_index, tsj_x2, tsj_y2, spr_dir, 1, 0, c_white, 0.5); 
		}
		
		draw_sprite_ext(sprite_index, image_index, tsj_x3, tsj_y3, spr_dir, 1, 0, c_white, 0.2); 
	}
}

shader_end();