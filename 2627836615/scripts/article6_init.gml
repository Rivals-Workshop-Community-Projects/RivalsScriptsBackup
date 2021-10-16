mask_index = sprite_get("track_falloff_hurt");

if object_index == obj_stage_article_platform mask_index = sprite_get("track_falloff_overlay_hurt");

sprite_index = mask_index;
image_xscale = 2;
image_yscale = 2;

if !spawn_variables[0] {
	visible = false;
}

disable_movement = true;

/*
ds_list_add(obj_stage_main.int_ins, id);
ds_list_add(obj_stage_main.int_ins, bbox_left);
ds_list_add(obj_stage_main.int_ins, bbox_top);
ds_list_add(obj_stage_main.int_ins, bbox_right);
ds_list_add(obj_stage_main.int_ins, bbox_bottom);
obj_stage_main.total_interacts++;