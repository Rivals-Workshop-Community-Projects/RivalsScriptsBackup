// debug_draw.gml
// draws debug text/sprites in front of everything

//draw_debug_text( x, y, string(curse_enhanced_outline) );

if ("mim_wisp" in self && mim_wisp != noone){
	with (mim_wisp){
		// If wisp is 

		if (y > view_get_yview() && y < view_get_yview() + 540){
			if (x < view_get_xview()){
				draw_sprite_ext(sprite_get("offscreen_HUD"), 3, view_get_xview() + 30, y, 1, 1, 0,  get_player_hud_color(player), 1)
				
				with (other){
					shader_start();
					draw_sprite(sprite_get("offscreen_wisp"), 3, view_get_xview() + 30, other.y)
					shader_end();
				}
			}
			
			if (x > view_get_xview() + 960){
				draw_sprite_ext(sprite_get("offscreen_HUD"), 1, view_get_xview() + 960 - 30, y, 1, 1, 0,  get_player_hud_color(player), 1)
				
				with (other){
					shader_start();
					draw_sprite(sprite_get("offscreen_wisp"), 1, view_get_xview() + 960 - 30, other.y)
					shader_end();
				}
			}
		}
		else {
			if (x > view_get_xview() && x < view_get_xview() + 960){
				if (y < view_get_yview()){
					draw_sprite_ext(sprite_get("offscreen_HUD"), 2, x, view_get_yview() + 60, 1, 1, 0,  get_player_hud_color(player), 1)

					with (other){
						shader_start();
						draw_sprite(sprite_get("offscreen_wisp"), 2, other.x, view_get_yview() + 60)
						shader_end();
					}
				}
				
				if (y > view_get_yview() + 580){
					draw_sprite_ext(sprite_get("offscreen_HUD"), 0, x, view_get_yview() + 580 - 60, 1, 1, 0,  get_player_hud_color(player), 1)

					with (other){
						shader_start();
						draw_sprite(sprite_get("offscreen_wisp"), 0, other.x, view_get_yview() + 580 - 60)
						shader_end();
					}
				}
			}
			else {
				if (y < view_get_yview() && x < view_get_xview()){
					draw_sprite_ext(sprite_get("offscreen_HUD"), 6, view_get_xview() + 30, view_get_yview() + 60, 1, 1, 0,  get_player_hud_color(player), 1)

					with (other){
						shader_start();
						draw_sprite(sprite_get("offscreen_wisp"), 6, view_get_xview() + 30, view_get_yview() + 60)
						shader_end();
					}
				}
				if (y < view_get_yview() && x > view_get_xview() + 960){
					draw_sprite_ext(sprite_get("offscreen_HUD"), 7, view_get_xview() + 960 - 30, view_get_yview() + 60, 1, 1, 0,  get_player_hud_color(player), 1)

					with (other){
						shader_start();
						draw_sprite(sprite_get("offscreen_wisp"), 7, view_get_xview() + 960 - 30, view_get_yview() + 60)
						shader_end();
					}
				}
				
				if (y > view_get_yview() + 580 && x < view_get_xview()){
					draw_sprite_ext(sprite_get("offscreen_HUD"), 4, view_get_xview() + 30, view_get_yview() + 580 - 40, 1, 1, 0,  get_player_hud_color(player), 1)

					with (other){
						shader_start();
						draw_sprite(sprite_get("offscreen_wisp"), 4, view_get_xview() + 30, view_get_yview() + 580 - 40)
						shader_end();
					}
				}		
				if (y > view_get_yview() + 580 && x > view_get_xview() + 960){
					draw_sprite_ext(sprite_get("offscreen_HUD"), 5, view_get_xview() + 960 - 30, view_get_yview() + 580 - 40, 1, 1, 0,  get_player_hud_color(player), 1)

					with (other){
						shader_start();
						draw_sprite(sprite_get("offscreen_wisp"), 5, view_get_xview() + 960 - 30, view_get_yview() + 580 - 40)
						shader_end();
					}
				}			
			}
		}
	}
}