//ground sides

spr_dir = spawn_variables[0];

sprite_index = sprite_get("ground_sides");
mask_index = sprite_get((spr_dir == 1) ? "ground_sides_mask" : "ground_sides_mask_r");
image_index = (spr_dir == -1);

with asset_get("obj_stage_article") if num == 1 other.owner = self;

width = owner.width;
x = owner.x - width * spr_dir;

old_x = x;
new_x = x;
prev_width = width;

move_timer = 0;
move_timer_max = 60;