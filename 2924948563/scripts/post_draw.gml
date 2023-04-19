if (meter_visible) {
    if (state == PS_WALL_JUMP && !ledge_getup && wall_jump_timer == 0 && cling_timer > 6) {
        draw_sprite_ext(sprite_get("meter"), 18 * cling_timer/wall_cling_time, x + 45 * spr_dir, y - 64, 2, 2, 0, c_white, 1);
    }
}
