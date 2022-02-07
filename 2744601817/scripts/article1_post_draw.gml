if (state == 1 || state == 3 || state == 4 || state == 5 || state == 7 || state == 0 && indicator_anyway) {

    if ((get_local_setting(SET_HUD_SIZE) > 0 || get_local_setting(SET_HUD_NAMES) > 0)){
    draw_sprite_ext( sprite_get("_indicator"), 0, x - 6, y - 52, 1, 1, 0, player_id.indicator_color, 1 );
    }

}

if (hurtbox_vis){
    if (state != 6)
    draw_sprite_ext(sprite_get("kunai_collision"), 0,x,y,1,1,0,c_white,.5)
    //draw_sprite_ext(sprite_get("kunai_wall_collision"), 0,x,y,1,1,0,c_white,.5)
}