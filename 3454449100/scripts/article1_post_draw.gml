//article1_post_draw.gml

//Used for Koopa Troopa's Neutral Special

// draws the stuff
if (state == 1){

	// draws hitbox


	/*
	var opacEffectForReticle = (8 / abs(hsp)) - .15;
	opacEffectForReticle = clamp(opacEffectForReticle, 0, 1);
	//print(opacEffectForReticle);
	// little sparkle effect (slightly transparent)
	draw_sprite_ext( sprite_get("fspecial_sparkle"), exist_timer, x, y, 1, 1, (exist_timer * 1.04) * spr_dir, c_white, 0.6);

	// main reticle
	draw_sprite_ext( sprite_get("fspecial_reticle_placeholder"), 0, x, y, 1, 1, (exist_timer * 4.5) * spr_dir, c_white, (2 / maxSpeed) );
	
	// outline reticle
	//
	draw_sprite_ext( sprite_get("fspecial_reticle_circle"), 0, x, y, opacEffectForReticle * 1.1, opacEffectForReticle * 1.1, (exist_timer * 2.1) * spr_dir, c_white, (4.6 / maxSpeed) );
	draw_sprite_ext( sprite_get("fspecial_reticle_arrow"), 0, x, y, opacEffectForReticle * 1.24, opacEffectForReticle * 1.24, -(exist_timer * 7) * spr_dir, c_white, (4.6 / maxSpeed) );

	if (get_match_setting(SET_HITBOX_VIS)){
		if ((dmgIncrease / 8.65) + 0.5 < maxKBScal){//>
			draw_debug_text(x - 26,y + 36,"kb_scaling: " + string((dmgIncrease / 8.65) + 0.5));
		} else {
			draw_debug_text(x - 26,y + 36,"kb_scaling: " + string(maxKBScal));
		}
		draw_debug_text(x - 26,y + 56,"damage: " + string(dmgIncrease + 11));
	}
	*/
}


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
if (get_match_setting(SET_HITBOX_VIS) && canShellBounce){
	draw_sprite_ext( sprite_get("shell_hurtbox"), 0, x, y, 1, 1, 0, c_white, 0.5 );
	
	
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
