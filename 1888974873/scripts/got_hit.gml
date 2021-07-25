if (has_rune("L")){
    if (attack == AT_FSPECIAL){
        if (super_armor == true){
            x = hit_player_obj.x - 75*hit_player_obj.spr_dir;
            y = hit_player_obj.y;
            spr_dir = hit_player_obj.spr_dir;
            window = 2;
            window_timer = 39;
        }
    }
}