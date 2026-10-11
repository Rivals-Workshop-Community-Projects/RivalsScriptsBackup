// pre-draw

shader_start();
if (ink_boost) {
    draw_sprite_ext(sprite_get("buff_fx_back"), get_gameplay_time()/4, x, y, 2, 2, 0, c_white, 1);
}
shader_end();