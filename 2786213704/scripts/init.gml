round_timer = 0;
round_over = false;
match_over = false;
new_record = false;
sandbag = noone;
barrier_broken = false;
scroll_x = 0;
dust_timer = 0;
recovery_timer = 0;
sandbag_idle = 0;
orig_room_width = room_width;
stage_left = get_stage_data(SD_X_POS);
stage_right = get_stage_data(SD_X_POS) + get_stage_data(SD_WIDTH);
ruler_start = stage_right + 128;
bot_match = false;

// HUD
stat_time = 0;
stat_distance = 0;
distance_tick = 0;

// Score
turn = 0;
first_turn = 0;
rounds = 0;
full_distance = 0;
best_distance = 0;
best_player = 0;

// Room functions

with (instance_create(get_marker_x(1), get_marker_y(1), "obj_stage_article")) {
	num = "_camera";
	sprite_index = asset_get("empty_sprite");
	other.camera = self;
}

with (instance_create(stage_right + 2, 608, "obj_stage_article")) {
	num = "_ruler";
	sprite_index = asset_get("empty_sprite");
	depth = 10;
}

with (instance_create(-get_stage_data(SD_SIDE_BLASTZONE), room_height - 80, "obj_stage_article_solid")) {
	sprite_index = asset_get("empty_sprite");
	mask_index = asset_get("solid_32x32");
	image_xscale = 90;
	image_yscale = 3;
}

