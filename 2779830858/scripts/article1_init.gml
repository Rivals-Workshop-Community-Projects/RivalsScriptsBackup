//article 1 init


sprite_index = asset_get("empty_sprite");
//vars

distort_time = 0;
vfx_rand = 0;

rewind_store_interval_def = 4;
rewind_store_interval = rewind_store_interval_def;

change_free = false;

rewind_length_def = 1 * 60;
rewind_length = rewind_length_def;

cur_spr = 0;
cur_img = 0;
cur_free = false;

primed = false;


//ds lists

rewind_x = [];
rewind_y = [];
rewind_dir = [];
rewind_sprite = [];
rewind_state = [];

list_convert = false;