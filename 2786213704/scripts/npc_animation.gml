// I shouldn't have to do this, but... :/
// The animation hook still runs on the frame where a custom_clone dies.
if (!instance_exists(self)) {
	exit;
}

// Special case for Home-Run Contest:
// Slide on your face after landing from the big launch.
if (state == PS_HITSTUN_LAND && x > get_stage_data(SD_X_POS) + get_stage_data(SD_WIDTH)) {
	sprite_index = sprite_get("npc_downhurt");
	image_index = 0;
}

