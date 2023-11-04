if "lilac_timer" not in obj_stage_main exit;

if (obj_stage_main.lilac_timer < 230) {
    obj_stage_main.lilac_timer += 1
}

if (obj_stage_main.lilac_timer = 100) {
    image_index = 1
}

if (obj_stage_main.lilac_timer = 105) {
    image_index = 2
}

if (obj_stage_main.lilac_timer = 110) {
    image_index = 3
}

if (obj_stage_main.lilac_timer = 115) {
    image_index = 4
}

if (obj_stage_main.lilac_timer = 215) {
    image_index = 5
}

if (obj_stage_main.lilac_timer = 220) {
    image_index = 6
}

if (obj_stage_main.lilac_timer = 225) {
    image_index = 7
}

if (obj_stage_main.lilac_timer = 230) {
    image_index = 0
    obj_stage_main.lilac_timer = 1
}