//article1_init

init = 0;
sprite_index = -1;
web_sprite = sprite_get("web");
web_spawn_sprite = sprite_get("web_spawn");

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;

spawn_time = get_gameplay_time();
intersect_array = [0, 0, 0, 0];
tile_width = 32;

spawn_timer = 0.25 * 60;
life_timer = 5 * 60;
death_timer = 0.25 * 60;

wavedash_multiplier = 0.5;

width = 128;
height = 16;

x_root = x;
y_root = y;
cooldown_forgiveness = 0.5;

destroyed = false;
refund = false;

//Adjust location
if (!string_count("76262", string(get_stage_data(SD_ID))) > 0) {
    var nearest_plat = instance_nearest(x, y, asset_get("par_jumpthrough"));
    var nearest_block = instance_nearest(x, y, asset_get("par_block"));
    nearest_stage_obj = noone;

    if(get_instance_y(nearest_block) - y < 32)
        nearest_stage_obj = nearest_block;
    else if(get_instance_y(nearest_plat) - y < 32)
        nearest_stage_obj = nearest_plat;

    if(instance_exists(nearest_stage_obj))
        y = get_instance_y(nearest_stage_obj);
    else
        instance_destroy();

    stage_x = get_instance_x(nearest_stage_obj);
    stage_y = get_instance_y(nearest_stage_obj);

    x = (x div 32) * 32;

    if(nearest_stage_obj == nearest_plat)
        if(!position_meeting(x - 16, y + 1, asset_get("par_jumpthrough"))) {
            x += 32;

        if(!position_meeting(x + 16, y + 1, asset_get("par_jumpthrough")))
            x -= 32;
    } else if(nearest_stage_obj == nearest_block) {
        if(!position_meeting(x - 16, y + 1, asset_get("par_block")))
            x += 32;

        if(!position_meeting(x + 16, y + 1, asset_get("par_block")))
            x -= 32;
    }

    var disallowed_list = ["pillar_obj", "obj_article_solid", "obj_article_platform", "mobile_gear_obj"];

    for(var i = 0; i < array_length_1d(disallowed_list); i++) {
        if(nearest_stage_obj == instance_nearest(x, y, asset_get(disallowed_list[i]))) {
            destroyed = true;
            refund = true;
            exit;
        }
    }
} else {
    destroyed = true;
}

// print_debug(object_get_name(nearest_stage_obj.object_index));
// print_debug("Stage location: " + string(get_instance_x(nearest_stage_obj)) + ", " + string(get_instance_y(nearest_stage_obj)));
// print_debug("Web location:" + string(x) + ", " + string(y));
// print_debug(object_get_name(nearest_stage_obj.object_index));
// print_debug(nearest_pillar);