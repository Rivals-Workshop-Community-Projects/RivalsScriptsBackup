// Transformation Clouds
if (obj_stage_main.graphics_level < 3) {
    if (paused) {
        if (obj_stage_main.transforming) {
            if (spawn_variables[2] == 1 || (get_gameplay_time() >= obj_stage_main.transform_clouds + 16) && obj_stage_main.transform_clouds != -1) {
                if (!obj_stage_main.transform_clouds_init) {
                    obj_stage_main.transform_clouds = get_gameplay_time();
                    obj_stage_main.transform_clouds_init = true;
                }
            }
            sprite_index = sprite_get("transform_clouds");
            image_index += anim_speed;
        } else {
            obj_stage_main.transform_clouds = -1;
            obj_stage_main.transform_clouds_init = false;
            sprite_index = asset_get("empty_sprite");
            image_index = 0;
        }
    }
    
    paused = false;
}