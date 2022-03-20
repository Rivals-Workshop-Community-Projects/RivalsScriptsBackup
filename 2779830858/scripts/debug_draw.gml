
var pointer_spr = sprite_get("nade_player_pointer");

with(pHitBox){
	if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) && orig_player == other.player {
		if (player != other.player){


			var player_col;

			switch ( player ){
				case 1:
					player_col = c_red;
				break;
				case 2:
					player_col = c_aqua;
				break;
				case 3:
					player_col = c_fuchsia;
				break;
				case 4:
					player_col = c_lime;
				break;
			}

			with (other)
			shader_end();

			draw_debug_text( x - 7, y-56, "P" + string(player) );
			draw_sprite_ext( pointer_spr, 0, x-7, y-42, 1, 1, 0, player_col, 1 );

			with (other)
			shader_end();
			// draw_text_colour(x, y-48, "P" + string(player), c_black, c_black, c_black, c_black, 1);
			// draw_text_transformed_colour(x, y-48, "P" + string(player), 0.75, 0.75, 0, player_col, player_col, player_col, player_col, 1);
		}
	}
}


