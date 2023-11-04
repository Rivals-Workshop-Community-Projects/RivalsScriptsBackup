if "cur_song" not in obj_stage_main exit;

x = view_get_xview()-4;
y = view_get_yview()+65;

image_index = obj_stage_main.cur_song

image_alpha += 0.02

if (get_gameplay_time() >= 300) instance_destroy();