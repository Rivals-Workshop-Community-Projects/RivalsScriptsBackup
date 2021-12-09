// post_draw.gml
// Draws sprites behind the player

// draw_debug_text(x, y - 100, "window timer: " + string(window_timer))
// draw_debug_text(x, y - 120, "window: " + string(window))


// draw_debug_text(x, y - 100, "touched_wisp: " + string(touched_wisp))
// draw_debug_text(x, y - 120, "free: " + string(free))
// draw_debug_text(x, y - 140, "uspec_pratfall: " + string(uspec_pratfall))

shader_start();
if (attack == AT_NSPECIAL){
	if (atk_ground || atk_air){
		if (window == 2){
				
			if (nspec_charge >= 15){
				draw_sprite_ext(sprite_get("shadowcharge_spin"), get_gameplay_time() / 6, x - 33 * spr_dir, y - 20, 1, 1, state_timer * 5, c_white, 1);
			}
			
			if (nspec_charge < 15){
				draw_sprite(sprite_get("shadowcharge_succ2"), (state_timer / 4) - 3, x - 33 * spr_dir, y + 10);
			}
			else {
				draw_sprite(sprite_get("shadowcharge_succ1"), (state_timer / 4) - 3, x - 33 * spr_dir, y + 12);
			}
			
			if (nspec_charge <= 40){
				draw_sprite(sprite_get("shadowcharge_core"), get_gameplay_time() / 6, x - 33 * spr_dir, y + 10);
			}
			
		}
	}
}
shader_end();