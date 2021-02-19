// css_draw

// Checks if the seventh slot of the first skins blue shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method.
if (get_color_profile_slot_b(0, 7) == 255) {
    sound_play(sound_get("starfox_taunt"));
    set_color_profile_slot(0, 7, get_color_profile_slot_r(0, 7), get_color_profile_slot_g(0, 7), get_color_profile_slot_b(0, 7) + 1);
}

if (get_player_color(player) == 15) {
    draw_sprite(sprite_get("event"), 0, x + 176, y + 108);
}