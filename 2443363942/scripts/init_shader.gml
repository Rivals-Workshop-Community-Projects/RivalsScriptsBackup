//init_shader

if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0); // gb
    }
    outline_color = [15, 56, 15];
    set_victory_portrait(sprite_get("portrait_ea"));
    set_victory_sidebar(sprite_get("result_small_ea"));
}
else if (get_player_color(player) == 8){
    outline_color = [90, 31, 7];
    set_victory_portrait(sprite_get("portrait_gold"));
    set_victory_sidebar(sprite_get("result_small_gold"));
}
else if (get_player_color(player) == 9){
    set_victory_portrait(sprite_get("portrait_trans"));
}
else{
    set_victory_portrait(sprite_get("portrait"));
    set_victory_sidebar(sprite_get("result_small"));
}