// -- Cloud Effect Handler --
    // Spawns the cloud every so often
    // Spawns other objects when the cloud is destroyed
    
//sprite_index = sprite_get("testball");
sprite_index = asset_get("empty_sprite");

// note to self: cloud takes about 20 seconds to cross the screen
cloud_spawn_interval = 1800;
cloud_spawn_init_offset = 600;

//NEW SPAWN VARIABLES
cloud_spawn_time = 300;

current_cloud = noone;

//Stage Effect Triggers
stage_effect = 0;
stage_effect_delay = 0;
effect_delay_max = 30;
stage_effect_trigger = false;

//Stars
star_x = 0;
star_y = 0;