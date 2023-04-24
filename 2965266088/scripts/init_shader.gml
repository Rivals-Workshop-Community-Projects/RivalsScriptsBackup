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
        outline_color = [15, 56, 15];
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
    case 12: case 19: //laby elsword, may guilty gear
        set_character_color_shading(0, -2);
        set_character_color_shading(4, 1.5);
        break;
    case 23: //bar
        set_character_color_shading(0, -1.5);
        set_character_color_shading(1, 3);
        set_character_color_shading(4, 2.5);
        break;
}


//extended range for gameboy alt
if (alt_cur == 14) set_color_profile_slot_range(5, 121, 10, 14);
else set_color_profile_slot_range(5, 1, 7, 14);

//intensify shading for every alt that isn't the dark matter alt
if (alt_cur != 14 && alt_cur != 20) set_character_color_shading(5, 2);