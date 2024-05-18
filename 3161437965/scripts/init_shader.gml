// init_shader.gml

var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player); //online player is actually player 0
if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;

//Color Mapping
switch (alt_cur)
{
    case 0:
        set_character_color_slot(5, 126, 50, 25); // Pants 1
        set_character_color_slot(6, 89, 33, 14); // Pants 2

        set_article_color_slot(5, 126, 50, 25); // Pants 1
        set_article_color_slot(6, 89, 33, 14); // Pants 2
        break;
        
    case 30: //EA
        for(var i = 0; i < 8; i++){
            set_character_color_shading(i, 0);
        }

        if ("outline_color" not in self || outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0 && !burned)
        {
            var start = 8*4; //outline
            colorO[start] = 15/255;
            colorO[start+1] = 56/255;
            colorO[start+2] = 15/255;
            static_colorO[start] = colorO[start];
            static_colorO[start+1] = colorO[start+1];
            static_colorO[start+2] = colorO[start+2];
        }
    break;
}


if (get_synced_var(player) == 1 || get_synced_var(player) == 420) //colormap to frisk alts
{
    user_event(2);
    for (var frisk_alt = 0; frisk_alt < array_length(frisk_colors); frisk_alt ++) if (alt_cur == frisk_colors[frisk_alt][0])
    {
        for (var i = 0; i < 8; i++)
        {
            colorO[i*4 + 0] = frisk_colors[frisk_alt][2][i][0]/255;
            colorO[i*4 + 1] = frisk_colors[frisk_alt][2][i][1]/255;
            colorO[i*4 + 2] = frisk_colors[frisk_alt][2][i][2]/255;
            static_colorO[i*4 + 0] = colorO[i*4 + 0];
            static_colorO[i*4 + 1] = colorO[i*4 + 1];
            static_colorO[i*4 + 2] = colorO[i*4 + 2];
        }
    }
}