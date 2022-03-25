//Init Shader
//Change colours on default alt
if (get_player_color(player) == 0)
{
    set_character_color_slot(1, 0, 0, 0, 1);
    set_character_color_slot(5, 64, 124, 48, 1);
}

//This code plays a quote on the victory screen if Carol wins
if (object_index == asset_get("draw_result_screen"))
{
    voice = get_player_color(player);
    if (winner == player && results_timer == 10)
    {
        if (voice >= 14)
        {
            sound_stop(sound_get("victory_quote"));
            sound_play(sound_get("victory_quote")); 
            exit;
        }
    }
}