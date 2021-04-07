// Right Player Image
flicker_right += .5;

if ((flicker_right >= 1 and flicker_right <= 2) or (flicker_right >= 6 and flicker_right <= 10)){
    right_boss_vis = .5;
} else {
    right_boss_vis = 0;
}

if flicker_right > 12{
    flicker_right = 0;
}


if ("right_boss_changed" in obj_stage_main && obj_stage_main.right_boss_changed) {
    with (oPlayer) if (player == obj_stage_main.right){
            var right_url = string(url);
            var right_id = id;
        }
        if ("wily_robotmaster_img" in right_id){
            robot_master_img = right_id.wily_robotmaster_img;
        } else if (ds_list_find_index(obj_stage_main.supported_chars, right_url) != -1){
            robot_master_img = sprite_get(string(right_url) + "_robotmaster");
        } else {
            robot_master_img = asset_get("empty_sprite");
        }
        
        if ("wily_flicker_col" in right_id){
            right_boss_col = right_id.wily_flicker_col;
        } else {
            right_boss_col = $92d3ff;
        }
        obj_stage_main.right_boss_changed = false;
    }
