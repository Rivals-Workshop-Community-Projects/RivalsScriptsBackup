//post_draw.gml
// (this script draws in FRONT of the player)

// this is for intro stuff
if (state == PS_SPAWN) {
	if (sprite_index == sprite_get("empty") || (sprite_index == sprite_get("intro") && image_index < 1)){//>
		draw_sprite_ext( sprite_get("intro_pipe"), 0, x, y, 1, 1, 0, c_white, 1 );
	}
}