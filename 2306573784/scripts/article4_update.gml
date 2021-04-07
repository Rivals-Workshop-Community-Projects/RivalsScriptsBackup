// Left Player Image
flicker_left += .5;

if ((flicker_left >= 1 and flicker_left <= 2) or (flicker_left >= 6 and flicker_left <= 10)){
    left_boss_vis = .5;
} else {
    left_boss_vis = 0;
}

if flicker_left > 12{
    flicker_left = 0;
}


if ("left_boss_changed" in obj_stage_main && obj_stage_main.left_boss_changed) {
    with (oPlayer) if (player == obj_stage_main.left){
            var left_url = string(url);
            var left_id = id;
        }
        if ("wily_robotmaster_img" in left_id){
            robot_master_img = left_id.wily_robotmaster_img;
        } else if (ds_list_find_index(obj_stage_main.supported_chars, left_url) != -1){
            robot_master_img = sprite_get(string(left_url) + "_robotmaster");
        } else {
            robot_master_img = asset_get("empty_sprite");
        }
        
        if ("wily_flicker_col" in left_id){
            left_boss_col = left_id.wily_flicker_col;
        } else {
            left_boss_col = $d3ff92;
        }
        obj_stage_main.left_boss_changed = false;
    }
