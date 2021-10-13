if (object_index == asset_get("draw_result_screen"))
{
    if (results_timer == 1 && gpu_get_alphatestfunc())
    {
        coins_earned = 999999 - coins_started;
        coininc_earned = coins_earned;
        winner_name = "Your wish came true!";
    }
}

switch (get_player_color(player))
{
    //champion
    case 29:
	    AltColourAlpha(2, 0.4);
        break;
}

#define AltColourAlpha(_index, _alpha)
{
	var alt = get_player_color(player);
	var temp_r = get_color_profile_slot_r(alt, _index);
	var temp_g = get_color_profile_slot_g(alt, _index);
	var temp_b = get_color_profile_slot_b(alt, _index);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, _alpha);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, _alpha);
}