//grid

with asset_get("obj_stage_article") if num == 1{
	other.target_alpha = grid_alpha;
	other.image_index = grid_mode;
	other.visible = grid_alpha > 0;
}

image_alpha = lerp(image_alpha, target_alpha, 0.1);