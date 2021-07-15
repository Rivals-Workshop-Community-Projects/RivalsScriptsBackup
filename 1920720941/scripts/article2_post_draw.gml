if (star_timer + 6 < 40) {
    scale = (star_timer + 6) / 40.0;

    // Draw black mist background
    draw_sprite_part_ext(
        dream_mist_sprite,
        floor(star_timer / 4), 0, 0, 104, 104,
        x - 52 * scale, y - 52 * scale, scale, scale,
        c_white, 1.0);

    // Background stars
    tmp_x = (view_get_xview() / 8 + x) % 160;
    tmp_y = (view_get_yview() / 8 + y) % 160;
    tmp_x = floor(tmp_x / 2) * 2;
    tmp_y = floor(tmp_y / 2) * 2;
    draw_sprite_part_ext(
        dream_mist_stars1,
        0, tmp_x, tmp_y, 92, 92,
        x - 46 * scale, y - 46 * scale, scale, scale,
        c_white, 1.0);

    // Foreground stars
    tmp_x = (view_get_xview() / 3 + x) % 160;
    tmp_y = (view_get_yview() / 3 + y) % 160;
    tmp_x = floor(tmp_x / 2) * 2;
    tmp_y = floor(tmp_y / 2) * 2;
    draw_sprite_part_ext(
        dream_mist_stars2,
        floor(star_timer / 16), tmp_x, tmp_y, 92, 92,
        x - 46 * scale, y - 46 * scale, scale, scale,
        c_white, 1.0);
} else {
    // Draw black mist background
    draw_sprite_part_ext(
        dream_mist_sprite,
        floor(star_timer / 4), 0, 0, 104, 104,
        x - 52, y - 52, 1.0, 1.0,
        c_white, 1.0);

    // Background stars
    tmp_x = (view_get_xview() / 8 + x) % 160;
    tmp_y = (view_get_yview() / 8 + y) % 160;
    tmp_x = floor(tmp_x / 2) * 2;
    tmp_y = floor(tmp_y / 2) * 2;
    draw_sprite_part_ext(
        dream_mist_stars1,
        0, tmp_x, tmp_y, 92, 92,
        x - 46, y - 46, 1.0, 1.0,
        c_white, 1.0);

    // Foreground stars
    tmp_x = (view_get_xview() / 3 + x) % 160;
    tmp_y = (view_get_yview() / 3 + y) % 160;
    tmp_x = floor(tmp_x / 2) * 2;
    tmp_y = floor(tmp_y / 2) * 2;
    draw_sprite_part_ext(
        dream_mist_stars2,
        floor(star_timer / 16), tmp_x, tmp_y, 92, 92,
        x - 46, y - 46, 1.0, 1.0,
        c_white, 1.0);
}