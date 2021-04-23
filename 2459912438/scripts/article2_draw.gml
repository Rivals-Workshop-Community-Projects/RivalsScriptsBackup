//
if type == "breaktime" && timer mod 40 < 20 {
    draw_sprite_ext(sprite_get("happy_break_time"), 0, x - 185, y + 20, 3, 3, 0, c_white, 1);
}