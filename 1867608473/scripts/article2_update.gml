//article2_update
if (init == 0) {
    init = 1;
   	// looks at the asset
	if (state < 2) {
	    state = 2;
	    state_timer = 0;
	    // Loads the sprite
	    sprite_index = sprite_get("energy");
	}
}
full_timer++;


if (full_timer > 9) {
    instance_destroy();
}