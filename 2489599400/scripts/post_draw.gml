//post-draw

/*
//Debug stuff
draw_debug_text( x, y + 20, string(nodispenser));
draw_debug_text( x, y + 40, string(rolltime));
*/

shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL {
	if (window == 5) {
		draw_sprite_ext(sprite_get("fspecialdash"), -3, x, y, spr_dir, 1, 0, c_white, 1);	
	}
}
shader_end();