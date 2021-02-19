if (player_id.spears_hit != [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]]) {
    for (i = 0; i < 4; i++) {
        if (player_id.spears_hit[@i][@0] > 0) {
            var spear_sprite = sprite_get("ustrong_proj" + string(i + 1));
            var offset = 72;
            draw_sprite_part_ext(spear_sprite, 5, 0, 0, 72, offset, player_id.spears_hit[@i][@1] - sprite_get_xoffset(spear_sprite) * player_id.spears_hit[@i][@3], player_id.spears_hit[@i][@2] - sprite_get_yoffset(spear_sprite), player_id.spears_hit[@i][@3], 1, c_white, 1);
        }
    }
}