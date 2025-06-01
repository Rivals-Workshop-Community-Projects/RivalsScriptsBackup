//Init Shader
//Change colours on default alt
var alt_cur = get_player_color(player)

switch (alt_cur)
{
    case 0:
        if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
        set_character_color_slot(1, 37, 37, 37, 1);
        set_article_color_slot(1, 37, 37, 37);
        set_character_color_slot(5, 64, 124, 48, 1); 
        set_article_color_slot(5, 64, 124, 48);
        set_character_color_slot(6, 33, 87, 18, 1);
        set_article_color_slot(6, 33, 87, 18);
        set_character_color_slot(7, 248, 252, 0, 1);
        set_article_color_slot(7, 248, 252, 0);
    break;
    case 14:
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
        outline_color = [35, 67, 49];
    break;
}

//This code plays a quote on the victory screen if Carol wins
if (object_index == asset_get("draw_result_screen"))
{
    voice = get_synced_var(player);
    if (winner == player && results_timer == 10)
    {
        if (voice >= 1)
        {
            if (random_func_2(134, 2, 1) == 1)
            {
                sound_stop(sound_get("victory_quote"));
                sound_play(sound_get("victory_quote")); 
                exit;
            }
            else
            {
                sound_stop(sound_get("victory_quote_2"));
                sound_play(sound_get("victory_quote_2")); 
                exit;
            }
        }
    }
}