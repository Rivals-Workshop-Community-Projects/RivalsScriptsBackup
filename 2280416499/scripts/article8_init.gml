//grid

sprite_index = sprite_get("grid");
depth = 30;
image_alpha = 0;
target_alpha = 0.5;

with asset_get("obj_stage_article_solid") if num == 1{
	other.owner = self;
	other.x = x;
	other.y = y;
}