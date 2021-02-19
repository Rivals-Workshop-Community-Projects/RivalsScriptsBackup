// screen

with asset_get("obj_stage_main"){
	screen = other;
	other.stage = self;
}



phone_user_id = noone;



inited = true;
phone_inited = true;



sprite_index = asset_get("empty_sprite");
spr_big_screen = sprite_get("big_screen");

center_x = room_width / 2 - 436;
active_x = center_x + 96;

center_depth = 29;
active_depth = -19;

x = center_x;
y = room_height / 2 - 232;
depth = center_depth;

low_fps = false;