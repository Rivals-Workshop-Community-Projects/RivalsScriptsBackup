// post_draw.gml
// this script draws sprites IN FRONT the player character


// debug stuff
/*
if (carryingShell){
	draw_debug_text(x - 100, y+10,"Carrying Shell! ");
	draw_sprite_ext( sprite_get("shell_idle"), 0, x + 40, y + 26, 1, 1, 0, c_white, 1 );
}
*/

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_FSPECIAL){
		if (window == 4){
			var visualOffset = point_direction(x, y, x + hsp, y + vsp);
			draw_sprite_ext( sprite_get("fspecial_movevfx"), image_index - 16, x + (16 * spr_dir), y - 12, 1, 1, visualOffset, c_white, 1 );
		}
		
		if (fspecStylishIndicator && get_match_setting(SET_HITBOX_VIS)){
			draw_sprite_ext( sprite_get("fspecial_stylish_indicator"), 0, x, y, 1, 1, 0, c_white, 1 );
		}
		
		
		if (get_match_setting(SET_HITBOX_VIS) && window == 2){
			draw_debug_text(x - 56,y + 18,"Charge Level: " + string(fspecTimeCharging) + " / " + string(fspecMaxChargeTimeAllowed));
		}
		
	}
	
	// draws hurtbox
	if (get_match_setting(SET_HITBOX_VIS) && attack == AT_USPECIAL && window == 5){
		draw_set_alpha(0.5);
		draw_rectangle_colour(
		uspecPityStompX1Coord,
		uspecPityStompY1Coord,
		uspecPityStompX2Coord,
		uspecPityStompY2Coord,
		c_white,
		c_white,
		c_white,
		c_white,
		false);
		draw_set_alpha(1);
	}
}