//results

if (winner == player){
    //150
    draw_sprite_ext(sprite_get("victor_bg_darkness"), 0, 0, 0, 2, 2, 0, c_black, (results_timer - 340) / 100)
    if (results_timer >= 600){
        draw_sprite_ext(sprite_get("victory_smile"), 0, 190, 180, 3, 3, 0, c_white, 1);
    }
}
