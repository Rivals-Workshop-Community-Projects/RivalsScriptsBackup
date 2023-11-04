if "cur_song" not in obj_stage_main exit;

x = view_get_xview()+16;
y = view_get_yview()+79;

image_index = obj_stage_main.cur_song

if (get_gameplay_time() >= 300) instance_destroy();