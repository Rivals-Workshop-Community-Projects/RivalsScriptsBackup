//grid

sprite_index = sprite_get("grid");
depth = 29;
image_alpha = 0;
target_alpha = 0.5;

with asset_get("obj_stage_article") if num == 1{
	other.owner = self;
	other.x = x;
	other.y = y;
}