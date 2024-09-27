//Drawing atop portraits

if (get_player_color(player) == 3){
    draw_sprite_ext(sprite_get("portrait_overlay"), 0, portrait_x, portrait_y, 2, 2, 0, c_white, 1);
}
