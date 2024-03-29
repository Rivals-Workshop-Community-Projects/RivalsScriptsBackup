//init_shader.gml

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 1: //cirno
        set_character_color_shading(0, -1);
        set_character_color_shading(2, 2);
        set_character_color_shading(4, 2.5);
        break;
    case 3: //patchouli
        set_character_color_shading(0, -1);
        set_character_color_shading(4, 2);
        break;
    case 4: //sakuya
        set_character_color_shading(4, 4);
        break;
    case 5: case 7: case 17: //remilia, reimu, infamous
        set_character_color_shading(4, 2);
        break;
    case 6: //flandre
        set_character_color_shading(4, 1.5);
        break;
    case 8: case 24://marisa, keqing
        set_character_color_shading(0, -1);
        break;
    case 9: //cream
        set_character_color_shading(0, -1);
        set_character_color_shading(4, 1.5);
        break;
    case 10: //chara
        set_character_color_shading(4, 2);
        break;
    case 11: //lancer
        set_character_color_shading(2, 1.5);
        set_character_color_shading(4, 2.5);
        break;
    case 14: //gameboy
        for (var i = 0; i < 7; i++) set_character_color_shading(i, 0);
        colorO[8*4 + 0] = 15/255;
        colorO[8*4 + 1] = 56/255;
        colorO[8*4 + 2] = 15/255;
        static_colorO[8*4 + 0] = 15/255;
        static_colorO[8*4 + 1] = 56/255;
        static_colorO[8*4 + 2] = 15/255;
        break;
    case 16: //seasonals
        switch(get_match_setting(SET_SEASON))
        {
            case 1: case 2: //vday / summer
                set_character_color_shading(4, 2);
                break;
            case 3: //koakuma / halloween
                set_character_color_shading(4, 2);
                set_character_color_shading(6, 0.5);
                break;
        }
        break;
    case 20: //dark matter
        set_character_color_shading(5, 0.75);
        break;
    case 12: case 20: //laby elsword, may guilty gear
        set_character_color_shading(0, -2);
        set_character_color_shading(4, 1.5);
        break;
    case 24: //bar
        set_character_color_shading(0, -1.5);
        set_character_color_shading(1, 3);
        set_character_color_shading(4, 2.5);
        break;
    case 27: //player color
        var hud_r = color_get_red(get_player_hud_color(player));
        var hud_g = color_get_green(get_player_hud_color(player));
        var hud_b = color_get_blue(get_player_hud_color(player));

        //set_color_profile_slot(alt_cur, 0, floor(hud_r/4), floor(hud_g/4), floor(hud_b/4)); //darkness
        //set_color_profile_slot(alt_cur, 1, floor(hud_r), floor(hud_g), floor(hud_b)); //darkness 2
        set_color_profile_slot(alt_cur, 4, floor(hud_r/2), floor(hud_g/2), floor(hud_b/2) ); //black
        set_color_profile_slot(alt_cur, 6, floor(hud_r), floor(hud_g), floor(hud_b)); //red

        //set_article_color_slot(0, floor(hud_r/4), floor(hud_g/4), floor(hud_b/4)); //darkness
        //set_article_color_slot(1, floor(hud_r), floor(hud_g), floor(hud_b)); //darkness 2
        break;
    case 19: //TAS - hopes and dreams
        colorO[8*4 + 0] = 32/255;
        colorO[8*4 + 1] = 32/255;
        colorO[8*4 + 2] = 32/255;

        static_colorO[8*4 + 0] = 32/255;
        static_colorO[8*4 + 1] = 32/255;
        static_colorO[8*4 + 2] = 32/255;
        break;
}


//extended range for gameboy alt
if (alt_cur == 14) set_color_profile_slot_range(5, 121, 10, 14);
else set_color_profile_slot_range(5, 1, 7, 14);

//intensify shading for every alt that isn't the dark matter alt
if (alt_cur != 14 && alt_cur != 20) set_character_color_shading(5, 2);