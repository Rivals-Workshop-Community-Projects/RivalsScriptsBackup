x += 8+spawn_variables[0];
y += spawn_variables[1]-8;

offset = x+y;

sprite_index = sprite_get("itemboost");


image_xscale = 2;
image_yscale = 2;
play = 0;

state_timer = 0;

disable_movement = true;

/*
ds_list_add(obj_stage_main.int_ins, id);
ds_list_add(obj_stage_main.int_ins, x-24);
ds_list_add(obj_stage_main.int_ins, y-24);
ds_list_add(obj_stage_main.int_ins, x+24);
ds_list_add(obj_stage_main.int_ins, y+24);
obj_stage_main.total_interacts++;