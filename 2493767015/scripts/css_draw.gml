if (get_color_profile_slot_b(0, 7) == 255) {
    sound_play(sound_get("css_sound"));
    set_color_profile_slot(0, 7, get_color_profile_slot_r(0, 7), get_color_profile_slot_g(0, 7), get_color_profile_slot_b(0, 7) + 1);
}

user_event(12);