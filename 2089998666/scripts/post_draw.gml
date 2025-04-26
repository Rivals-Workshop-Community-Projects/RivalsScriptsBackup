//post-draw

if (cookieAid) {
		draw_sprite(sprite_get("glow"), glowAnim*.8, x, y);		
}

if (move_cooldown[AT_DSPECIAL] > 0 && cookieAid == 0) {
		draw_sprite_ext(sprite_get("arrow2"), (move_cooldown[AT_DSPECIAL])*.2, x-28*(spr_dir), y-72, 1, 1, 0, c_white, (move_cooldown[AT_DSPECIAL])/16);
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL {
	if cookieMeter == 3 {
		draw_sprite_ext(sprite_get("dspecial_overlay1"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} else
	if cookieMeter == 2 {
		draw_sprite_ext(sprite_get("dspecial_overlay3"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} else {
		draw_sprite_ext(sprite_get("dspecial_overlay2"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	}
}

/*
draw_debug_text( x, y + 20, string(spincharge));
draw_debug_text( x, y + 40, string(spincool));
*/

shader_start();
shader_end();