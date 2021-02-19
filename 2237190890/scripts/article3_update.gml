// Front Player Image
if ("graphics_level" in obj_stage_main && obj_stage_main.graphics_level < 3) {
    if ("front_changed" in obj_stage_main && obj_stage_main.front_changed) {
        with (oPlayer) if (player == obj_stage_main.front) {
            var front_url = string(url);
            var front_id = id;
        }
        if ("pkmn_stadium_front_img" in front_id) {
            sprite_index = front_id.pkmn_stadium_front_img;
        } else if (ds_list_find_index(obj_stage_main.supported_chars, front_url) != -1) {
            sprite_index = sprite_get(string(front_url) + "_front");
        } else {
            sprite_index = sprite_get("ditto_front");
        }
        obj_stage_main.front_changed = false;
    }
    if (!obj_stage_main.transform_warning) {
        with (oPlayer) if (player == obj_stage_main.front) {
            var front_state = state_cat;
            var front_dead = state == PS_DEAD || state == PS_RESPAWN;
        }
        if (front_state == SC_HITSTUN || front_dead) {
            if (front_dead) {
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