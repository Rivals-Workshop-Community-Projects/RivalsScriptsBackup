//article2_init.gml
//garden of eden mask

sprite_index = sprite_get("artc_od_garden_mask");
effect_inc = 30; //how many times does the effect proc per sec
total_time = 10; //in seconds
depth = 30;
uses_shader = false;
disable_movement = true;

state = 0;
state_timer = 0;
image_xscale = 0;
image_yscale = 0;
size = 0;
//anim speed, parallax x, parallax y
layer_data = [
    [0, 1, 1],
    [0.15, 0.2, 0.1],
    [0.17, 0.35, 0.3],
    [0.2, 0.6, 0.4]
];
//0 = don't follow at all | 1 = follow movement

pow_col = 0;

if (player_id.od_after_effect_time_max == 0) player_id.od_after_effect_time_max = (total_time * effect_inc * 2);
player_id.od_after_effect_time = player_id.od_after_effect_time_max;