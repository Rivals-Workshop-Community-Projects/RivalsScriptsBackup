//post-draw

/*
//Debug stuff
draw_debug_text( x, y + 20, string(nodispenser));
draw_debug_text( x, y + 40, string(rolltime));
draw_debug_text( x, y + 60, string(tapes));
*/


shader_start();

//taped state
with (oPlayer) {
    if (id != other.id) {
        if ("taped" in self && taped) {
			with other.id draw_sprite_ext(sprite_get("taped"), -1, other.x, other.y-(char_height/2), 1, 1, 0, c_white, .75);
        }
    }
}


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	if attack == AT_FSPECIAL {
		switch (fspecialangle) {
			
			case 0:
				draw_sprite_ext(sprite_get("fspecial2_overlay1"), -3, x, y, spr_dir, 1, 0, c_white, 1);
			break;
			
			case 1:
				draw_sprite_ext(sprite_get("fspecial2_overlay2"), -3, x, y, spr_dir, 1, 0, c_white, 1);
			break;
			
			case 2:
				draw_sprite_ext(sprite_get("fspecial2_overlay3"), -3, x, y, spr_dir, 1, 0, c_white, 1);
			break;
			
			}
	}
	
	if attack == AT_FSPECIAL_2 {
		if (window == 5) {
			draw_sprite_ext(sprite_get("fspecialdash"), -3, x, y, spr_dir, 1, 0, c_white, 1);	
		}
	}
}
shader_end();