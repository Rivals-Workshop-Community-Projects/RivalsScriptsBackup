x += 8+spawn_variables[0];
y += spawn_variables[1]-8;

offset = x+y;

sprite_index = sprite_get("itembox");

mask_index = sprite_get("circle_hurt");

powerup = image_index;

refresh = 0;


image_alpha = 0;

boosted = 0;

progress = 0; //ok this is pretty silly

obj_stage_main.item_leader_time_lap[spawn_variables[3]] = 0;
obj_stage_main.item_leader_time[spawn_variables[3]] = 0;


disable_movement = true;

/*
ds_list_add(obj_stage_main.int_ins, id);
ds_list_add(obj_stage_main.int_ins, x-32);
ds_list_add(obj_stage_main.int_ins, y-32);
ds_list_add(obj_stage_main.int_ins, x+32);
ds_list_add(obj_stage_main.int_ins, y+32);
obj_stage_main.total_interacts++;