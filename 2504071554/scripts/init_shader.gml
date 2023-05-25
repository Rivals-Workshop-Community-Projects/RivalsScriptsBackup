//init_shader

if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0); // gb
    }
    outline_color = [15, 56, 15];
    set_victory_portrait(sprite_get("portrait_gb"));
    set_victory_sidebar(sprite_get("result_small_gb"));
}
else if (get_player_color(player) == 8){
    set_victory_portrait(sprite_get("portrait_trans"));
    set_victory_sidebar(sprite_get("result_small_trans"));
}
else if (get_player_color(player) == 9){
    set_character_color_slot(3, 201, 201, 220, .75); //champion
	set_article_color_slot(3, 201, 201, 220, .75);
	set_character_color_slot(4, 201, 201, 220, .75);
	set_article_color_slot(4, 201, 201, 220, .75);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
}
else if (get_player_color(player) == 10){
    outline_color = [90, 31, 7]; //gold
    set_victory_portrait(sprite_get("portrait_gold"));
    set_victory_sidebar(sprite_get("result_small_gold"));
}
else{
    set_victory_portrait(sprite_get("portrait"));
    set_victory_sidebar(sprite_get("result_small"));
}