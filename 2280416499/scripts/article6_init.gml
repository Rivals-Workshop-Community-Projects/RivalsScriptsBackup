//wall

with asset_get("obj_stage_article_solid") if num == 1 other.owner = self;
depth = 17;

sprite_index = sprite_get("wall");
spr_dir = spawn_variables[0];
if (spr_dir == -1) mask_index_solid = sprite_get("wall_mask_r");
else mask_index_solid = sprite_get("wall_mask");
mask_index_invis = asset_get("empty_sprite");
mask_index = mask_index_invis;

x -= 16 * spr_dir;
y -= 64;
reveal_x = x;
hidden_x = x - 320 * spr_dir;
x = hidden_x;

on = owner.walls[spr_dir == -1];
prev_on = on;
move_timer = 0;
move_timer_max = 60;