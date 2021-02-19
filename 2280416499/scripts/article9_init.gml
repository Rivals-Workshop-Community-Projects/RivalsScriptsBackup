//gearbox

with asset_get("obj_stage_article_solid") if num == 1 other.owner = self;
sprite_index = sprite_get("gearbox");
depth_low = 24;
depth_high = -20;
depth = depth_low;

practice = get_training_cpu_action() != CPU_FIGHT;

state = 0;
state_timer = 0;

draw_height_low = 100;
draw_height_high = -156;

draw_height = draw_height_low;

user = noone;
crouch_time = 0;
crouch_time_max = 60;

select_timer = 0;
select_timer_max = 4;

has_crouched = !practice;
has_gridded = false;

cursor = 1;

side_config = [0, 0];

side_configs = [ [0,0], [0,1], [1,1], [1,0] ];

grid_type = 0;