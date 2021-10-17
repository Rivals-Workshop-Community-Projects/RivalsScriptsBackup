
switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case 5:
    case 6:
        if attack == AT_USPECIAL {
            if window == 1 spr_dir = 1- window_timer/get_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH);
            if window == 2 {
                spr_dir = window_timer/get_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH);
                if window_timer == get_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH) - 1 spr_dir = round(spr_dir);
            }
        }
        break;
    default: 
        break;
}

/*if end_timer < 140 {
    depth = -100;
    char_height = dspec_char_height;
    sprite_index = sprite_get("dspecial");
    image_index = 12;
    set_player_damage(player,random_func_2(0,200,true));
    set_player_stocks(player,random_func_2(0,98,true)+1);
    //image_xscale = (140-end_timer)/4;
    //image_yscale = (140-end_timer)/4;
    //my_hurtboxID = asset_get("empty_sprite");
}*/