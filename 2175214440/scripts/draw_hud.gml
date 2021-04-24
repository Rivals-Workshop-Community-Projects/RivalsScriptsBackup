if (variable_instance_exists(self, "mp")) {
    var bar_anim_frame = get_gameplay_time();

    draw_sprite_part_ext(sprite_get("mpbar"), bar_anim_frame, 0, 0, floor(100*mp/max_mp), 5, temp_x + 28, temp_y - 16, 1.75, 2.3, c_white, 1.0);
    draw_sprite_ext(sprite_get("mpbar_overlay"), 0, temp_x - 4, temp_y - 20, 1.75, 2.25, 0, c_white, 1.0);

    draw_debug_text( temp_x + 3, temp_y - 16, string_replace_all(string_format(floor(mp), 3, 0), " ", "0"));

    if (time_since_last_mp_spend < 12) {
        draw_sprite_ext(sprite_get("mpspend"), time_since_last_mp_spend*0.5, temp_x - 9, temp_y - 29, 1.75, 2.25, 0, c_white, 1.0);
    }
}