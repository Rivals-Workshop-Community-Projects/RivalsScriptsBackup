//article1_post_draw.gml

//Used for Koopa Troopa's Neutral Special


if (state == 3){
	var spinShellSprite = sprite_get("shell_drop");
	
	draw_sprite_ext( spinShellSprite,		// sprite
	0,										// image_index
	x,										// x
	y - 16,										// y
	spr_dir,										// xscale
	1,										// yscale
	(state_timer * 17.565),						// rot
	c_white,								// color
	1 );									// alpha
}

/*
draw_debug_text(x - 12,y + 10,"hsp: " + string(hsp));
draw_debug_text(x - 12,y + 30,"vsp: " + string(vsp));
draw_debug_text(x - 12,y + 50,"state: " + string(state));
draw_debug_text(x - 12,y + 70,"state_timer: " + string(state_timer));
draw_debug_text(x - 12,y + 90,"player: " + string(whoHitShell));
draw_debug_text(x - 12,y + 110,"spr_dir: " + string(spr_dir));
draw_debug_text(x - 12,y + 130,"extra_hitpause: " + string(additionalHitHitpause));
draw_debug_text(x - 12,y + 150,"throw dir: " + string(initialThrownDirection));
*/


// draws hurtbox
if (get_match_setting(SET_HITBOX_VIS)){
	draw_sprite_ext( sprite_get("shell_hurtbox"), 0, x, y, 1, 1, 0, c_white, 0.5 );
}
// draws shell jump detection box
if (get_match_setting(SET_HITBOX_VIS) && canShellBounce){
	//draw_sprite_ext( sprite_get("shell_hurtbox"), 0, x, y, 1, 1, 0, c_white, 0.5 );
	
	
	draw_set_alpha(0.5);
	draw_rectangle_colour(
	playerBounceRectX1Coord,
	playerBounceRectY1Coord,
	playerBounceRectX2Coord,
	playerBounceRectY2Coord,
	c_white,
	c_white,
	c_white,
	c_white,
	false);
	draw_set_alpha(1);
}
