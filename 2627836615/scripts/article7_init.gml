
disable_movement = true;

init = 0;

x += 8;
y -= 8;

image_xscale += spawn_variables[0]/64;
image_yscale += spawn_variables[0]/64;

visible = image_alpha > 0;

mask_index = sprite_get("circle_hurt");
sprite_index = sprite_get("icon7");

//&& point_distance(x+8,y-8,xpos,ypos) <= (32 + spawn_variables[0]) 
/*
ds_list_add(obj_stage_main.int_ins, id);
ds_list_add(obj_stage_main.int_ins, x-(8 + 32 + spawn_variables[0]));
ds_list_add(obj_stage_main.int_ins, y-(8 + 32 + spawn_variables[0]));
ds_list_add(obj_stage_main.int_ins, x+8 + 32 + spawn_variables[0]);
ds_list_add(obj_stage_main.int_ins, y+8 + 32 + spawn_variables[0]);
obj_stage_main.total_interacts++;