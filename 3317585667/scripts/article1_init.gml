sprite_index = sprite_get("turnblock_plat");
block_mask = sprite_get("turnblock_mask");
empty_mask = asset_get("empty_sprite");
mask_index = block_mask;
image_xscale = 2;
image_yscale = 2;
depth = 29;

is_hittable = true;
hittable_hitpause_mult = 0.8;

state = "block";
spins = 0;

if spawn_variables[0] = 1 {
y -= 32;

instance_create(x + 32, y, (spawn_variables[1] = 1 ? "obj_stage_article_solid" : "obj_stage_article_platform"), 1);
instance_create(x + 64, y, (spawn_variables[1] = 1 ? "obj_stage_article_solid" : "obj_stage_article_platform"), 1);
}

block_solid = (object_index = asset_get("obj_stage_article_solid"));

if block_solid {
sprite_index = sprite_get("turnblock");
mask_index = sprite_get("turnblock_solid_mask");
block_mask = mask_index;
}