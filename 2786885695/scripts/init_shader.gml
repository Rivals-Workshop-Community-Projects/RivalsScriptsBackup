//init shader

var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player); //online player is actually player 0
var season_cur = get_match_setting(SET_SEASON);

switch (alt_cur)
{
    case 0: // default
        if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;

        set_character_color_slot(1, 137, 105, 168); //hair
        set_character_color_slot(4, 70, 52, 139); //dark purple

        set_article_color_slot(1, 137, 105, 168); //hair
        set_article_color_slot(4, 70, 52, 139); //dark purple
        break;
    case 1: case 3: // xiao + mona
        set_character_color_shading(1, 0.5); //hair
        break;
    case 2: // ningguang
        set_character_color_shading(3, -1); //white-blue
        break;
    case 6: //alhaitham shading fix
        set_character_color_shading(4, 0.5); //dark purple
        set_character_color_shading(7, 1.5); //stocking
        break;
    case 10: // vergil
        set_character_color_shading(0, -1); //electro
        set_character_color_shading(4, 0.5); //dark purple
        set_character_color_shading(5, 2); //gold
        break;
    case 11: // lyn
        set_character_color_shading(0, -2); //electro
        set_character_color_shading(6, 0.5); //purple-blue
        break;

    case 14: // early access
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
        outline_color = [15, 56, 15];
        break;
    case 15: // milestone
        set_character_color_shading(5, 1.2); //gold
        set_character_color_shading(6, 0.5); //dark purple
        set_character_color_shading(7, 1.5); //stocking
        break;
    case 16: //seasonal
        if (season_cur == 4) //xmas
        {
            set_character_color_shading(1, 1.5); //hair
        }
        break;
    case 21: //rin (fate)
        set_character_color_shading(1, 0.5); //hair
        break;
    case 25:
        var hud_r = color_get_red(get_player_hud_color(player));
        var hud_g = color_get_green(get_player_hud_color(player));
        var hud_b = color_get_blue(get_player_hud_color(player));

        //set_color_profile_slot(alt_cur, 0, floor(hud_r), floor(hud_g), floor(hud_b)); //electro
        set_color_profile_slot(alt_cur, 3, floor(min(255, hud_r + 200)), floor(min(255, hud_g + 200)), floor(min(255, hud_b + 200))); //white-blue
        set_color_profile_slot(alt_cur, 4, floor(hud_r/2), floor(hud_g/2), floor(hud_b/2)); //dark purple
        set_color_profile_slot(alt_cur, 6, floor(hud_r), floor(hud_g), floor(hud_b)); //purple-blue
        set_color_profile_slot(alt_cur, 7, floor(hud_r/4), floor(hud_g/4), floor(hud_b/4)); //stocking

        //set_article_color_slot(0, floor(hud_r), floor(hud_g), floor(hud_b)); //electro
        break;
}

//changes the early access alt to us the same color as her white-blue clouthes
if (alt_cur == 14) set_color_profile_slot_range(3, 145, 13, 19);
else set_color_profile_slot_range(3, 11, 13, 15); //from colors.gml