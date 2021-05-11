if (attack == AT_DSPECIAL){
    meter_not_full = 4;
    shader_start();
        if(window == 1){
            if (shot_menu != -1) {
                draw_sprite(shot_menu, window_timer/2, x- 61, y - 158);
            }
            if (shot_cursor != -1) {
                draw_sprite(shot_cursor, current_shot- 1, x- 90, y - 158);
            }
        }
        if(window == 2){
            if (shot_menu != -1) {
                draw_sprite(shot_menu, meter_not_full, x- 61, y - 158);
            }
            if (shot_cursor != -1) {
                draw_sprite(shot_cursor, current_shot- 1, x- 90, y - 158);
            }
        }
        if(window == 3 || shield_pressed){
            if (shot_menu != -1) {
                draw_sprite(shot_menu, (window_timer/2) + 5, x- 61, y - 158);
                if(window_timer >= 4){
                    shot_menu = -1;
                    shot_cursor = -1;
                    menu_open = false;
                }
            }
            if (shot_cursor != -1) {
                draw_sprite(shot_cursor, current_shot- 1, x- 90, y - 158);
            }
        }
    shader_end();
}




if(state == PS_RESPAWN){
	 draw_sprite(sprite_get("awesometable"), 0, x-64,y-94);
}
