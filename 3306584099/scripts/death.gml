//Destroy walls
with (obj_article_solid) {
	if (player == other.player && player_id == other.id) {
	    if (state == 1) {
            state = 2;
            state_timer = 0;
            window = 1;
            window_timer = 0;
	    }
	}
}
with (obj_article1) {
	if (player == other.player && player_id == other.id) {
		destroyed = true;
	}
}