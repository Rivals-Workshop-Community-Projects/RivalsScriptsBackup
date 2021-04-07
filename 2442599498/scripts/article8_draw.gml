//
if hit_timer >= 1 {
    draw_sprite_ext(sprite_get("mini_mtt_break1"), 0, x - hit_timer/3, y - hit_timer/1, 1, 1, 0, c_white, 1 - hit_timer/30)
    draw_sprite_ext(sprite_get("mini_mtt_break2"), 0, x - hit_timer/3, y, 1, 1, 0, c_white, 1 - hit_timer/30)
    draw_sprite_ext(sprite_get("mini_mtt_break3"), 0, x + hit_timer/3, y, 1, 1, 0, c_white, 1 - hit_timer/30)
}