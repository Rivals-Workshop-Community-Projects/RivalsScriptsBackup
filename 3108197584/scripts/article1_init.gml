//article1_init

can_be_grounded = 1;
ignores_walls = 0;
uses_shader = true;

state = 0;
timer = 0;

fire_pos = [];
fire_end = [];
shot_angle = 0;
shot_num = 0;
shot_fx_timer = 0;
no_target = 0;
targets = [];
target_pos = [];
trigger_explosion = 0;
float_sfx = noone;
hit_death = 0;
immune = noone;
snipe = 0;
anim_bleed = 0;
radar_alpha = 0;
discharge_sfx = noone;
boom = 1;
sprite_index = sprite_get("drone");
mask_index = sprite_get("drone_mask1");