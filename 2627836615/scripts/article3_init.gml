disable_movement = true;
mask_index = sprite_get("track_hurt");


if object_index == obj_stage_article_platform mask_index = sprite_get("track_overlay_hurt");

sprite_index = mask_index;



image_xscale = 2;
image_yscale = 2;

if !spawn_variables[0] {
	visible = false;
}