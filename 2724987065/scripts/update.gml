// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;
if phone_cheats[CHEAT_GAUGE] {
    d_gauge = 1000;
    move_cooldown[AT_EXTRA_1] = 600;
}

if !free has_nspecial = true;
if has_nspecial == false move_cooldown[AT_NSPECIAL] = 2;
if phone_cheats[CHEAT_JUMP] {
    move_cooldown[AT_NSPECIAL] = 0;
}
if phone_cheats[CHEAT_CANCEL] aerial_hit = true;

//gauge stuff
gauge_angle += d_gauge/500;
if move_cooldown[AT_EXTRA_1] == 0 && d_gauge == 1000 d_gauge = 0;

// play sound if fspecial does the purple screen thing. please dont bug out. idk why it doesnt work half the time
with oPlayer if activated_kill_effect && other.hit_player_obj == self && other.attack == AT_FSPECIAL && other.has_hit_player && other.move_cooldown[AT_FSPECIAL_2] == 0 {
    shake_camera(8, 26);
    with other sound_play(sound_get("stock_break"));
    other.move_cooldown[AT_FSPECIAL_2] = 180;
}

// "poggers" alt
if (get_player_color(player) == hue_palette) {
    colorSet(get_player_color(player), 3, make_color_hsv(get_gameplay_time() % 256, 255, 255));
    colorSet(get_player_color(player), 4, make_color_hsv(get_gameplay_time() % 256, 255, 255));
    init_shader();
    afterimage_color = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 4), get_color_profile_slot_g(get_player_color(player), 4), get_color_profile_slot_b(get_player_color(player), 4));
    colorSet(get_player_color(player), 3, $c1c1c1);
    colorSet(get_player_color(player), 4, $c1c1c1);
}



#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));