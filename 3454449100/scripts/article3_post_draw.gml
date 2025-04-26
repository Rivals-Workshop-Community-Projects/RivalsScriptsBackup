//article1_post_draw.gml

//Used for Koopa Troopa's Neutral Special



// shell
if (state == 1){
	var spinShellSprite = sprite_get("shell_drop");
	
	draw_sprite_ext( spinShellSprite,		// sprite
	0,										// image_index
	x,										// x
	y - 16,										// y
	1,										// xscale
	1,										// yscale
	(state_timer * 56),						// rot
	c_white,								// color
	//(state_timer mod 2 == 0));
	((state_timer < 12)?1:(state_timer mod 2 == 0)));	// alpha
}

// + ((player==0)?32:0)
//  ((state_timer < 12) ? 1 : (state_timer mod 2 == 0))