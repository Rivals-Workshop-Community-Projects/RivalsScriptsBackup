// Back Player Image
if ("graphics_level" in obj_stage_main && obj_stage_main.graphics_level < 3) {
    if ("back_changed" in obj_stage_main && obj_stage_main.back_changed) {
        with (oPlayer) if (player == obj_stage_main.back) {
            var back_url = string(url);
            var back_id = id;
        }
        if ("pkmn_stadium_back_img" in back_id) {
            sprite_index = back_id.pkmn_stadium_back_img;
        } else if (ds_list_find_index(obj_stage_main.supported_chars, back_url) != -1) {
            sprite_index = sprite_get(string(back_url) + "_back");
        } else {
            sprite_index = sprite_get("ditto_back");
        }
        obj_stage_main.back_changed = false;
    }
    if (!obj_stage_main.transform_warning) {
        with (oPlayer) if (player == obj_stage_main.back) {
            var back_state = state_cat;
            var back_dead = state == PS_DEAD || state == PS_RESPAWN;
        }
        if (back_state == SC_HITSTUN || back_dead) {
            if (back_dead) {
                visible = false;
            } else {
                flash_timer += flash_speed;
                if (flash_timer >= 1) {
                    visible = !visible;
                    flash_timer = 0;
                }
            }
        } else {
            visible = true;
            flash_timer = 0;
        }
    } else {
        visible = false;
    }
} else {
    visible = false;
}