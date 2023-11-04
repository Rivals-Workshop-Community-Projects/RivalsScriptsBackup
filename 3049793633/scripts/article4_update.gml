if "sunflower_timer" not in obj_stage_main exit;

if (obj_stage_main.sunflower_timer < 240) {
    obj_stage_main.sunflower_timer += 1
}

if (obj_stage_main.sunflower_timer = 90) {
    image_index = 1
}

if (obj_stage_main.sunflower_timer = 120) {
    image_index = 2
}

if (obj_stage_main.sunflower_timer = 210) {
    image_index = 3
}

if (obj_stage_main.sunflower_timer = 240) {
    image_index = 0
    obj_stage_main.sunflower_timer = 1
}