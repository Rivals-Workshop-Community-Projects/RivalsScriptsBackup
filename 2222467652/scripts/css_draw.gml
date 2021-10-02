if (get_player_color( player ) == 14){
    draw_sprite(sprite_get("charselect_gb_outline"), 0, x + 8, y + 8);
}

if (get_player_color( player ) == 18){
    draw_sprite(sprite_get("charselect_gold_outline"), 0, x + 8, y + 8);
}

if (get_player_color( player ) == 11){
    draw_sprite(sprite_get("charselect_goo_outline"), 0, x + 8, y + 8);
}

if (get_player_color( player ) == 15){
    draw_sprite(sprite_get("charselect_nes_outline"), 0, x + 8, y + 8);
}

if (get_player_color( player ) == 22){
    draw_sprite(sprite_get("charselect_negative_outline"), 0, x + 8, y + 8);
}

if (get_player_color( player ) == 23){
    draw_sprite(sprite_get("charselect_fading_outline"), 0, x + 8, y + 8);
}

if (get_player_color( player ) == 17){
    draw_sprite(sprite_get("charselect_goose_outline"), 0, x + 8, y + 8);
}

if (get_player_color( player ) == 0){
    draw_sprite_ext(sprite_get("boulder"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
} else {
    if (get_player_color( player ) == 9){
        draw_sprite_ext(sprite_get("boulder_coin"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
    } else {
        if (get_player_color( player ) == 14){
            draw_sprite_ext(sprite_get("boulder_gb"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
        } else {
            if (get_player_color( player ) == 19){
                draw_sprite_ext(sprite_get("boulder_archen_alt"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
            } else {
                if (get_player_color( player ) == 21){
                    draw_sprite_ext(sprite_get("boulder_dicey"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
                } else {
                    if (get_player_color( player ) == 15){
                        draw_sprite_ext(sprite_get("boulder_nes"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
                    } else {
                        if (get_player_color( player ) == 22){
                            draw_sprite_ext(sprite_get("boulder_negative"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
                        } else {
                            if (get_player_color( player ) == 23){
                                draw_sprite_ext(sprite_get("boulder_fading_css"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
                            } else {
                                draw_sprite_ext(sprite_get("boulderalt"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
                                if (get_player_color( player ) == 10){
                                    draw_sprite_ext(sprite_get("boulder_smashlogo"), 0, x + 174, y + 36, 1, 1, 0, c_white, 1);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

if (get_player_color( player ) == 6){
    draw_sprite(sprite_get("seasonalicon"), 0, x + 176, y + 108);
}

if (get_player_color( player ) == 8 || get_player_color( player ) == 9 || get_player_color( player ) == 10 || get_player_color( player ) == 11 || get_player_color( player ) == 12 || get_player_color( player ) == 15 || get_player_color( player ) == 16 || get_player_color( player ) == 17 || get_player_color( player ) == 18 || get_player_color( player ) == 19 || get_player_color( player ) == 20 || get_player_color( player ) == 21 || get_player_color( player ) == 22 || get_player_color( player ) == 23){
    draw_sprite(sprite_get("staricon"), 0, x + 176, y + 110);
}

if (get_player_color( player ) == 13){
    draw_sprite(sprite_get("abyssicon"), 0, x + 176, y + 110); //some of the icons here have had some hues shifted so they dont mess with shaders
}

if (get_player_color( player ) == 14){
    draw_sprite(sprite_get("gameboyicon"), 0, x + 176, y + 110);
}

if (get_player_color( player ) == 7){
    draw_sprite(sprite_get("customicon"), 0, x + 178, y + 112);
}

//Alt name showing system.
if !("birdluigi_css_init" in self){
    birdluigi_css_init = true;
    missingno_time = 0;
    css_name_visibility = 1;
    css_names = array_create(22, "Default");
    match_seasonname = ["Valentine's", "Summer", "Halloween", "Christmas"];
    css_names[1] = "Bird Up";
    css_names[2] = "Another Castle";
    css_names[3] = "Funniest";
    css_names[4] = "'Ori be like'";
    css_names[5] = "slipstream";
    css_names[6] = "Seasonal (" + string(match_seasonname[clamp(get_match_setting(SET_SEASON) - 1, 0, 3)]) + ")";
    css_names[7] = "Custom (See Playtest)";
    css_names[8] = "It's-a me!";
    css_names[9] = "Greatest Achievement";
    css_names[10] = "Too bad!";
    css_names[11] = "Ghost Vacuum";
    css_names[12] = "Call him!";
    css_names[13] = "Abyss";
    css_names[14] = "Early Access";
    css_names[15] = "NES";
    css_names[16] = "Infamous";
    css_names[17] = "Untitled";
    css_names[18] = "Golden";
    css_names[19] = "The Fossil Pokémon";
    css_names[20] = "Obligatory Trans Alt";
    css_names[21] = "Silence Enemy";
    css_names[22] = "'...there is only me.'";
    css_names[23] = "Calm The Nerves";
    css_icons = array_create(22, 0);
    css_icons[6] = 0;
    css_icons[7] = 1;
    css_icons[8] = 2;
    css_icons[9] = 2;
    css_icons[10] = 2;
    css_icons[11] = 2;
    css_icons[12] = 2;
    css_icons[13] = 3;
    css_icons[14] = 4;
    css_icons[15] = 2;
    css_icons[16] = 2;
    css_icons[17] = 2;
    css_icons[18] = 2;
    css_icons[19] = 2;
    css_icons[20] = 2;
    css_icons[21] = 2;
    css_icons[22] = 2;
    css_icons[23] = 2;
    css_icon_x = 40;
    css_icon_y = 142;
}

if (get_player_color( player ) != 22){
    if (css_names[22] != "'...there is only me.'"){
        css_names[22] = "'...there is only me.'";
    } else {
        css_names[22] = "Fate Chosen";
    }
}

css_name_visibility -= 0.01;

if ("css_alt" in self){
    if (css_alt != get_player_color( player )){
        css_name_visibility = 1;
    }
}

css_alt = get_player_color( player );

if (css_name_visibility > 0){
    draw_sprite(sprite_get("alt_icons"), css_icons[get_player_color(player)], round(x) + css_icon_x - 30, round(y) + css_icon_y - 6 - round(css_name_visibility * 5));
    draw_debug_text(round(x) + css_icon_x, round(y) + css_icon_y - round(css_name_visibility * 5), css_names[get_player_color( player )]);
} else {
    if (css_name_visibility > -1){
        draw_sprite(sprite_get("alt_icons"), css_icons[get_player_color(player)], round(x) + css_icon_x - 30, round(y) + css_icon_y - 6);
        draw_debug_text(round(x) + css_icon_x, round(y) + css_icon_y, css_names[get_player_color( player )]);
    }
}

//user_event(12);