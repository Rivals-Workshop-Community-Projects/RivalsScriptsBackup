//bridge

with asset_get("obj_stage_article") if num == 1 other.owner = self;
depth = 28;

sprite_index = sprite_get("bridge");
spr_dir = spawn_variables[0];
if (spr_dir == -1) mask_index_solid = sprite_get("bridge_mask_r");
else mask_index_solid = sprite_get("bridge_mask");
mask_index_invis = asset_get("empty_sprite");
mask_index = mask_index_invis;

x -= 16 * spr_dir;
reveal_y = y;
hidden_y = y + room_height;
y = hidden_y;

on = owner.bridges[spr_dir == -1];
prev_on = on;
move_timer = 0;
move_timer_max = 60;