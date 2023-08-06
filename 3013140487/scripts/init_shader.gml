if "anti_cheapie_mode" in self && anti_cheapie_mode{
    set_character_color_slot(1, 255, 255, 0);
}
if(get_player_color(player) == 17){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}