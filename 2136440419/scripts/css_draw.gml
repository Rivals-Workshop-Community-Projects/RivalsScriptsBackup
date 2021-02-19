// HODAN'S CSS DRAW

// Checks if the fourth slot of the first skins red shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method.
if (get_color_profile_slot_r(0, 4) == 255) {
    sound_play(sound_get("sfx_stinky_charged"));
    set_color_profile_slot(0, 4, get_color_profile_slot_r(0, 4) + 1, get_color_profile_slot_g(0, 4), get_color_profile_slot_b(0, 4));
}

switch (get_player_color(player)) {
    case 6:
        shader_end();
        draw_sprite(sprite_get("abyss"), 0, x + 176, y + 106);
        break;
    case 7:
        shader_end();
        draw_sprite(sprite_get("earlyaccess"), 0, x + 178, y + 108);
        break;
    case 13:
    case 14:
    case 15:
        shader_end();
        if (get_player_color(player) == 14) {
            draw_sprite(sprite_get("gold_outlines"), 0, x + 8, y + 8);
        }
        draw_sprite(sprite_get("premium"), 0, x + 176, y + 110);
        break;
    
}

// Draw Seasonal Icon
/* if (get_player_color(player) == 15) {
    shader_end();
    draw_sprite(sprite_get("event"), 0, x + 176, y + 108);
} */