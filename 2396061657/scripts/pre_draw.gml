// pre_draw.gml
// Draws sprites behind the player

with (obj_article1){ // Draws the outline of the heart during the first state (When only Date Girl can collect it)
	if (player_id == other.id) {
		if (state == 1){
			draw_sprite_ext(sprite_get("heartoutline"), -1, x, y, 1, 1, 0, get_player_hud_color(player), 1);
		}
	}
}		