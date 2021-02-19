// Screen

if ("transform_warning" in obj_stage_main && obj_stage_main.transform_warning) {
    if (obj_stage_main.transform_away) {
         // Sets the card to be the upcoming stage if it's not normal
        sprite_index = sprite_get(obj_stage_main.stages[obj_stage_main.stage_playlist[obj_stage_main.stage_order]] + "_card");
    } else {
        // Sets the card to be the neutral stage
        sprite_index = sprite_get(obj_stage_main.stages[obj_stage_main.stage_playlist[0]] + "_card");
    }
    image_index += flicker_speed;
} else if ("graphics_level" in obj_stage_main) {
    if (obj_stage_main.graphics_level < 3) {
        sprite_index = sprite_get("pkmnbattlecard");
    } else {
        sprite_index = sprite_get(obj_stage_main.stages[obj_stage_main.stage] + "_card");
    }
    image_index = 0;
}