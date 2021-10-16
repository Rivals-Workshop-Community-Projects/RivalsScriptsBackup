x += 8+spawn_variables[0];
y += spawn_variables[1]-8;

coords[0] = x;
coords[1] = y;

offset[0] = x+y;

offset_sine = 0;

sprite_index = sprite_get("orb");

refresh[0] = 0;

image_xscale = 2;
image_yscale = 2;

mask_index = asset_get("solid_32x32");

image_alpha = 0;

disable_movement = true;

min_x = x-16;
min_y = y-16;
max_x = x+16;
max_y = y+16;



/*
2 = length
3 = distance
4 = angle
5 = curve
*/
hfx_ins = array_create(spawn_variables[2], noone);
init = false;
for (var i = 1; i < spawn_variables[2]+1; i++) {
	coords[(i)*2] = coords[(i-1)*2] + lengthdir_x(spawn_variables[3], spawn_variables[4]);
	coords[((i)*2)+1] = coords[((i-1)*2)+1] + lengthdir_y(spawn_variables[3], spawn_variables[4]);
	offset[i] = coords[(i)*2] + coords[((i)*2)+1]
	spawn_variables[4] += spawn_variables[5];
	refresh[i] = 0;
	

	min_x = min(min_x, coords[(i)*2]-16);
	min_y = min(min_y, coords[((i)*2)+1]-16);
	max_x = max(max_x, coords[(i)*2]+16);
	max_y = max(max_y, coords[((i)*2)+1]+16);
}

x = min_x;
y = min_y;
image_xscale = (max_x-min_x)/32;
image_yscale = (max_y-min_y)/32;

/*
ds_list_add(obj_stage_main.int_ins, id);
ds_list_add(obj_stage_main.int_ins, min_x);
ds_list_add(obj_stage_main.int_ins, min_y);
ds_list_add(obj_stage_main.int_ins, max_x);
ds_list_add(obj_stage_main.int_ins, max_y);
obj_stage_main.total_interacts++;