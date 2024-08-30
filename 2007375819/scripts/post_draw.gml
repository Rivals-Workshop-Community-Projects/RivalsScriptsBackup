//post-draw

/*
//Debug stuff
draw_debug_text( x, y + 20, string(randomFunny));
draw_debug_text( x, y + 20, string(funnyfish));
*/

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	if (attack == AT_FSTRONG) {
		if (window == 4 || window == 5) {
			if randomTaunt == 70 {
				if spr_dir == 1 {
				draw_sprite(sprite_get("taunt_sus"), -1, x+8, y-52);
				} else {
				draw_sprite(sprite_get("taunt_sus"), -1, x-20, y-52);		
				}
			}
		}
	}

	if (attack == AT_FSPECIAL) {
		if (window == 2 && HCharge > 0) {
			draw_sprite_ext(sprite_get("fspecial_charge_overlay"), HCharge/2, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
			if HCharge >= 40 {
			draw_sprite_ext(sprite_get("fspecial_hud_pizza"), HCharge, x+32*spr_dir, y-52, image_xscale, image_yscale, image_angle, c_white, 1);
			} else {
			draw_sprite_ext(sprite_get("fspecial_hud_h"), HCharge, x+32*spr_dir, y-52, image_xscale, image_yscale, image_angle, c_white, 1);			
			}
		}
	}
}

with (asset_get("pHitBox")) {
	if (attack == AT_FSPECIAL) {
		if hitbox_timer > length-22 && (get_gameplay_time()%(3)) {
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, .25);
		}
	}
}