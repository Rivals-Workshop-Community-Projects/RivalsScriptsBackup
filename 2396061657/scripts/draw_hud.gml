// draw_hud.gml
// Draws images on top of the Player's HUD
// use temp_x and temp_y to refer to the player's specific HUD position

// Will hide everything if taunt menu is on
if ("DG_chat_num" in self && DG_chat_num < 1){

/*
	// Draws the battery on the HUD
	draw_sprite_ext(sprite_get("battery"), 0, temp_x + 160, temp_y - 12, 1, 1, 0, c_white, 1);
	draw_sprite_part(sprite_get("battery"), 3 - floor(move_cooldown[AT_DSPECIAL]/40), 0, 0, 50 - (move_cooldown[AT_DSPECIAL]/2.5), 16, temp_x + 160, temp_y - 12);
*/

	// Draws the current Grab Meter
	if ("GrappleMode" in self){
		draw_sprite_ext(sprite_get("meter"), 4, temp_x + 60, temp_y - 2, 1, 1, 0, c_white, 1);

		draw_sprite_part(sprite_get("meter"), GrappleMode, 0, 0, LoveMeter / 2, 8, temp_x + 30, temp_y - 6);
		if (GrappleMode == 0){
			draw_sprite_ext(sprite_get("gifts"), GrappleMode, temp_x + 4, temp_y - 12, 1, 1, 0, c_white, 1);
		}
		else{
			draw_sprite_ext(sprite_get("gifts"), GrappleMode, temp_x + 4, temp_y - 8, 1, 1, 0, c_white, 1);			
		}
		if (LoveMeter >= 100){
			draw_debug_text(temp_x + 8, temp_y - 8, string(LoveMeter));
		}
		if (LoveMeter < 100 && LoveMeter != 0){
			draw_debug_text(temp_x + 16, temp_y - 8, string(LoveMeter));
		}
		if (LoveMeter == 0){
			draw_debug_text(temp_x + 24, temp_y - 8, string(LoveMeter));
		}
	}
}


//draw_debug_text( temp_x, temp_y, string(get_stage_data(SD_ID)));
