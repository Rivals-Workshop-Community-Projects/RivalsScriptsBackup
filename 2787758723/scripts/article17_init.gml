//Block
if (object_index == obj_stage_article) {
	instance_create(x, y, "obj_stage_article_solid", 1);
}
sprite_index = asset_get("qblock");
disable_movement = true;
custom_args = array_create(0);

_init = 0;
group = 0;
debug = 0;
debug_info = 0;
debug_pos = 0;
init_pos = [0,0];
cell_pos = [0,0];
init_x = x;
init_y = y;
depth = 0;
og_depth = depth;

draw_x = 0;
draw_y = 0;
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("brickblock");

block_type = spawn_variables[0]; //0 = brick block, 1 = qblock, 2 = block, 3 = note block, [3, [pos, cell_pos, room]] = warping note block
item_spawn = spawn_variables[1]; //0 = coin, 1 = 10 coin, 2 = mushroom, 3 = star, 4 = coin, [5, x] = enemy with X id, 6 = fire flower
move_to_variables = spawn_variables[3]; //[x, y, radius]
moved = false;
spr_index = sprite_get("brickblock");
img_index = 0;
state = 0;
state_timer = 0;
player_last_hit = noone;
hit_time = -1;
hit_time_max = 120;
img = 0;	
num_sprite_sets = 3;
current_sprite_set = 0;
physics_range = 480+160; //Range that physics live-updates