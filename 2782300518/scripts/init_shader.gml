//Init Shader
//Change colours on default alt
var alt_cur = get_player_color(player)

switch (alt_cur)
{
    case 0:
        if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
        set_character_color_slot(1, 37, 37, 37);
        set_article_color_slot(1, 37, 37, 37);
        set_character_color_slot(5, 64, 124, 48); 
        set_article_color_slot(5, 64, 124, 48);
        set_character_color_slot(6, 33, 87, 18);
        set_article_color_slot(6, 33, 87, 18);
        set_character_color_slot(7, 248, 252, 0);
        set_article_color_slot(7, 248, 252, 0);
    break;
    case 7: //Milla
        set_character_color_shading(0, 2);
    case 5: //Corazon
        set_character_color_shading(6, 2);
    break;
    case 8://Scary Lady (Neera)
        set_character_color_shading(4, 2);
        set_character_color_shading(6, 1.5);
    break;
    case 9://Spade
        set_character_color_shading(3, 2);
        set_character_color_shading(4, 2);
        set_character_color_shading(6, 3);
    break;
    case 14:
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
        outline_color = [35, 67, 49];
    break;
    case 15://Big the Cat
        set_character_color_shading(4, 1.5);
        set_character_color_shading(6, 3);
    break;
    case 16://Blaze the Cat
        set_character_color_shading(4, 3);
        set_character_color_shading(6, 0.2);
    break;
    case 19: //Litten
        set_character_color_shading(6, 0.05);
    break;
    case 28: //Valentino Rossi
        set_character_color_shading(0, 2);
        set_character_color_shading(2, 2);
        set_character_color_shading(3, 2);
        set_character_color_shading(6, 2);
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