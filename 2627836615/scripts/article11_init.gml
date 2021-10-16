//AI waypoint
image_xscale = spawn_variables[0]/32;
image_yscale = image_xscale;
image_angle = spawn_variables[1];


mask_index = sprite_get("circle_hurt");

type = image_index;

sprite_index = asset_get("empty_sprite");

x_offset = x+lengthdir_x(image_xscale,image_angle);
y_offset = y+lengthdir_y(image_xscale,image_angle);

visible = image_alpha > 0;

if type == 0 {
	image_alpha = spawn_variables[2]+45;
} else {

	obj_stage_main.last_waypoint.image_alpha = id;
	obj_stage_main.last_waypoint = id;
	if obj_stage_main.first_waypoint == noone obj_stage_main.first_waypoint = id; else {
		image_alpha = obj_stage_main.first_waypoint;
	}
}

disable_movement = true;

/*
ds_list_add(obj_stage_main.int_ins, id);
ds_list_add(obj_stage_main.int_ins, x-image_xscale);
ds_list_add(obj_stage_main.int_ins, y-image_xscale);
ds_list_add(obj_stage_main.int_ins, x+image_xscale);
ds_list_add(obj_stage_main.int_ins, y+image_xscale);
obj_stage_main.total_interacts++;